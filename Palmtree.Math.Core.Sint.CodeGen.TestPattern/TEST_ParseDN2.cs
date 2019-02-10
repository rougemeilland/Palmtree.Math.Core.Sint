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
    class TEST_PMC_ParseDN2
        : TestPatternBase
    {
        private string _id;
        private IEnumerable<InputTestData> _string_source;
        private IEnumerable<InputTestData> _style_source;
        private IDictionary<string, NumberStyles> _style_converter;

        public TEST_PMC_ParseDN2()
        {
            _id = "ParseDN2";
            var b = "1234567890";
            b = b + b;
            b = b + b;
            b = b + b;
            b = b + b;
            b = b + b;
            b = b + b;
            _string_source = new[]
            {
                "{0}{1}",
                "  {0}{1}",
                "{0}{1}  ",
                "  {0}{1}  ",
            }
            .SelectMany(item => new[]
            {
                b.Substring(0, 5),
                b.Substring(0, 8),
                b.Substring(0, 9),
                b.Substring(0, 10),
                b.Substring(0, 18),
                b.Substring(0, 19),
                b.Substring(0, 20),
                b.Substring(0, 37),
                b.Substring(0, 38),
                b.Substring(0, 39),
                b.Substring(0, 76),
                b.Substring(0, 77),
                b.Substring(0, 78),
                b.Substring(0, 153),
                b.Substring(0, 154),
                b.Substring(0, 155),
            }, (space_format, int_part) => new { space_format, int_part })
            .SelectMany(item => new[]
            {
                "",
                "0",
                "00",
                "0000",
                "00000000",
                "0000000000000000",
                "00000000000000000000000000000000",
            }, (item, leading_zeros) => new { item.space_format, item.int_part, leading_zeros })
            .Select(item => string.Format(item.space_format, item.leading_zeros, item.int_part))
            .Zip(Enumerable.Range(1, int.MaxValue),
                 (s, index) => new InputTestData(_id, s, index))
            .ToArray();
            _style_converter = new Dictionary<string, NumberStyles>();
            _style_converter["PMC_NUMBER_STYLE_NONE"] = NumberStyles.None;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_LEADING_WHITE"] = NumberStyles.AllowLeadingWhite;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_TRAILING_WHITE"] = NumberStyles.AllowTrailingWhite;
            var style_names = _style_converter.Keys.Where(key => key != "PMC_NUMBER_STYLE_NONE").ToArray();
            _style_source = new[] { style_names[0], (string)null }
                            .SelectMany(item => new[] { style_names[1], (string)null },
                                        (key1, key2) => new { key1, key2 })
                            .Select(item => string.Join("|", new[] { item.key1, item.key2, }.Where(key => key != null)))
                            .Select(style_str => style_str.Length == 0 ? "PMC_NUMBER_STYLE_NONE" : style_str)
            .Zip(Enumerable.Range(1, int.MaxValue),
                 (s, index) => new InputTestData(_id, s, index))
            .ToArray();


#if false
            Console.WriteLine(string.Join("\n",
            CultureInfo.GetCultures(CultureTypes.AllCultures)
                .Where(culture => culture.NumberFormat.NegativeSign != "-" ||
                                  culture.NumberFormat.PositiveSign != "+")
                .Select(culture => string.Format("name='{0}', '{1}', '{2}'",
                                                 culture.Name,
                                                 culture.NumberFormat.PositiveSign,
                                                 culture.NumberFormat.NegativeSign))));
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
                .Select(item =>
                {
                    var styles = item.style.StringValue.Split('|').Select(name => _style_converter[name]).Aggregate((x, y) => (x | y));
                    try
                    {
                        BigInteger x;
                        var ret = BigInteger.TryParse(item.str.StringValue, styles, null, out x);
                        if (ret)
                            return (new
                            {
                                item.str,
                                item.style,
                                desired_result_code = new OutputTestData(_id, new[] { item.str, item.style }, false, true, PMC_STATUS_CODE.PMC_STATUS_OK),
                                desired_value = new OutputTestData(_id, new[] { item.str, item.style }, true, true, x),
                            });
                        else
                            return (new
                            {
                                item.str,
                                item.style,
                                desired_result_code = new OutputTestData(_id, new[] { item.str, item.style, }, false, true, PMC_STATUS_CODE.PMC_STATUS_PARSING_ERROR),
                                desired_value = new OutputTestData(_id, new[] { item.str, item.style, }, false, false, x),
                            });
                    }
                    catch (ArgumentException)
                    {
                        return (new
                        {
                            item.str,
                            item.style,
                            desired_result_code = new OutputTestData(_id, new[] { item.str, item.style, }, false, true, PMC_STATUS_CODE.PMC_STATUS_ARGUMENT_ERROR),
                            desired_value = new OutputTestData(_id, new[] { item.str, item.style, }, false, false, BigInteger.Zero),
                        });
                    }
                });
            return (source
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (item, index) => new { index, item.str, item.style, item.desired_result_code, item.desired_value })
                    .Select(item => new TestTerm(_id,
                                                 item.index,
                                                 new[] { item.str, item.style },
                                                 new[] { item.desired_result_code, item.desired_value },
                                                 string.Format("TEST_{0}(env, ep, {1}, {2}, {3}, {4}, {5});",
                                                               _id, item.index,
                                                               item.str.StringValue.ToQuotedWideCharString(),
                                                               item.style.StringValue,
                                                               item.desired_result_code.PMC_STATUS_CODEValue,
                                                               item.desired_value.BufferParam))));

        }
    }
}