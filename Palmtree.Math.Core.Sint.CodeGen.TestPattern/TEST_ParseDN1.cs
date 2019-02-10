/*
 * The MIT License
 *
 * Copyright 2019 Palmtree Software.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


using System;
using System.Globalization;
using System.Numerics;
using System.Collections.Generic;
using System.Linq;

namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    class TEST_PMC_ParseDN1
        : TestPatternBase
    {
        private string _id;
        private IEnumerable<InputTestData> _string_source;
        private IEnumerable<InputTestData> _style_source;
        private IEnumerable<InputTestData> _locale_source;
        private IDictionary<string, NumberStyles> _style_converter;
        private IDictionary<string, CultureInfo> _locale_converter;

        public TEST_PMC_ParseDN1()
        {
            _id = "ParseDN1";
            _string_source = new[]
            {
                "",
                "1234567890",
                "1\u0020234\u0020567\u0020890",
                "1\u00a0234\u00a0567\u00a0890",
                "1,234,567,890",
                "1.234.567.890",
            }
            .SelectMany(item => new[]
            {
                "{0}{1}",
                "({0}{1})",
                "+{0}{1}",
                "-{0}{1}",
                "{0}{1}+",
                "{0}{1}-",
            }, (int_part, sign_format) => new { int_part, sign_format })
            .SelectMany(item => new[]
            {
                "",
                ".",
                ".00",
                ",00",
                ".54",
                ",54",
            }, (item, frac_part) => new { item.int_part, item.sign_format, frac_part })
            .Select(item => string.Format(item.sign_format, item.int_part, item.frac_part))
            .Zip(Enumerable.Range(1, int.MaxValue),
                 (s, index) => new InputTestData(_id, s, index))
            .ToArray();
            _style_converter = new Dictionary<string, NumberStyles>();
            _style_converter["PMC_NUMBER_STYLE_NONE"] = NumberStyles.None;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_LEADING_SIGN"] = NumberStyles.AllowLeadingSign;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_TRAILING_SIGN"] = NumberStyles.AllowTrailingSign;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_PARENTHESES"] = NumberStyles.AllowParentheses;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_DECIMAL_POINT"] = NumberStyles.AllowDecimalPoint;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_THOUSANDS"] = NumberStyles.AllowThousands;
            var style_names = _style_converter.Keys.Where(key => key != "PMC_NUMBER_STYLE_NONE").ToArray();
            _style_source = new[] { style_names[0], (string)null }
                            .SelectMany(item => new[] { style_names[1], (string)null },
                                        (key1, key2) => new { key1, key2 })
                            .SelectMany(item => new[] { style_names[2], (string)null },
                                        (item, key3) => new { item.key1, item.key2, key3 })
                            .SelectMany(item => new[] { style_names[3], (string)null },
                                        (item, key4) => new { item.key1, item.key2, item.key3, key4 })
                            .SelectMany(item => new[] { style_names[4], (string)null },
                                        (item, key5) => new { item.key1, item.key2, item.key3, item.key4, key5 })
                            .Select(item => string.Join("|", new[] { item.key1, item.key2, item.key3, item.key4, item.key5 }.Where(key => key != null)))
                            .Select(style_str => style_str.Length == 0 ? "PMC_NUMBER_STYLE_NONE" : style_str)
            .Zip(Enumerable.Range(1, int.MaxValue),
                 (s, index) => new InputTestData(_id, s, index))
            .ToArray();
            _locale_converter = new[] { "ja-JP", "fr-FR", "de-DE" }
                                .ToDictionary(name => name, name => CultureInfo.GetCultureInfo(name));
            _locale_source = _locale_converter.Keys
            .Zip(Enumerable.Range(1, int.MaxValue),
                 (locale_name, index) => new InputTestData(_id, locale_name, index))
            .ToArray();


#if false
            Console.WriteLine(string.Join("\n",
            CultureInfo.GetCultures(CultureTypes.AllCultures)
                .Select(culture => new { name = culture.Name, separator = culture.NumberFormat.NumberGroupSeparator })
                .GroupBy(item => item.separator)
                .Select(g => new { separator = string.Format("U+{0:x4}", (int)g.Key[0]), names = string.Join(",", g.Select(item => item.name).OrderBy(item => item)) })
                .OrderBy(item => item.separator)));

            var culture_fr = CultureInfo.GetCultureInfo("fr-FR");
            BigInteger x;
            foreach (var s in new[] { "1\u00202", "1\u00a02", "1\t2", "1\f2", "1\r2", "1\n2", })
            Console.WriteLine(string.Format("\"{0}\" => {1}", s, BigInteger.TryParse(s, NumberStyles.AllowThousands, culture_fr.NumberFormat, out x) ? "OK" : "NG"));
            Console.ReadLine();
#endif
        }

        protected override string Id
        {
            get
            {
                return (_id);
            }
        }

        protected override IEnumerable<TestTerm> CreateTestTerms(IEnumerable<InputTestData> in_source)
        {
            var source = _string_source
                .SelectMany(str => _style_source, (str, style) => new { str, style })
                .SelectMany(item => _locale_source, (item, locale_name) => new { item.str, item.style, locale_name })
                .Select(item =>
                {
                    var styles = item.style.StringValue.Split('|').Select(name => _style_converter[name]).Aggregate((x, y) => (x | y));
                    var locale = _locale_converter[item.locale_name.StringValue];
                    try
                    {
                        BigInteger x;
                        var ret = BigInteger.TryParse(item.str.StringValue, styles, locale.NumberFormat, out x);
                        if (ret)
                            return (new
                            {
                                item.str,
                                item.style,
                                item.locale_name,
                                desired_result_code = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, false, true, PMC_STATUS_CODE.PMC_STATUS_OK),
                                desired_value = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, true, true, x),
                            });
                        else
                            return (new
                            {
                                item.str,
                                item.style,
                                item.locale_name,
                                desired_result_code = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, false, true, PMC_STATUS_CODE.PMC_STATUS_PARSING_ERROR),
                                desired_value = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, false, false, x),
                            });
                    }
                    catch (ArgumentException)
                    {
                        return (new
                        {
                            item.str,
                            item.style,
                            item.locale_name,
                            desired_result_code = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, false, true, PMC_STATUS_CODE.PMC_STATUS_ARGUMENT_ERROR),
                            desired_value = new OutputTestData(_id, new[] { item.str, item.style, item.locale_name }, false, false, BigInteger.Zero),
                        });
                    }
                });
            return (source
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (item, index) => new { index, item.str, item.style, item.locale_name, item.desired_result_code, item.desired_value })
                    .Select(item => new TestTerm(_id,
                                                 item.index,
                                                 new[] { item.str, item.style },
                                                 new[] { item.desired_result_code, item.desired_value },
                                                 string.Format("TEST_{0}(env, ep, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9});",
                                                               _id, item.index,
                                                               item.str.StringValue.ToQuotedWideCharString(),
                                                               item.style.StringValue,
                                                               _locale_converter[item.locale_name.StringValue].NumberFormat.NumberGroupSeparator.ToQuotedWideCharString(),
                                                               _locale_converter[item.locale_name.StringValue].NumberFormat.NumberDecimalSeparator.ToQuotedWideCharString(),
                                                               _locale_converter[item.locale_name.StringValue].NumberFormat.PositiveSign.ToQuotedWideCharString(),
                                                               _locale_converter[item.locale_name.StringValue].NumberFormat.NegativeSign.ToQuotedWideCharString(),
                                                               item.desired_result_code.PMC_STATUS_CODEValue,
                                                               item.desired_value.BufferParam))));

        }
    }
}