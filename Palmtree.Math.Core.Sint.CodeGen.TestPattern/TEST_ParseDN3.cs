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
    // 正数/負数のフォーマットの種類に着目
    class TEST_PMC_ParseDN3
        : TestPatternBase
    {
        private string _id;
        private IEnumerable<InputTestData> _string_source;
        private IEnumerable<InputTestData> _style_source;
        private IDictionary<string, NumberStyles> _style_converter;

        public TEST_PMC_ParseDN3()
        {
            _id = "ParseDN3";

            var patterns = new[]
            {
                "$ -n",
                "$ n",
                "$-n",
                "$n",
                "$n-",
                "($ n)",
                "($n)",
                "(n $)",
                "(n)",
                "-$ n",
                "-$n",
                "-n",
                "-n $",
                "-n$",
                "n $",
                "n $-",
                "n -",
                "n$",
                "n$-",
                "n-",
                "n-$",
            };
            var values = new[]
            {
                "",
                "0",
                ".0",
                "0.",
                "123.",
                "123.00",
                "123.45",
                "12345",
                "12,345",
            };
            var number_format = CultureInfo.InvariantCulture.NumberFormat;
            var signs = new[] { number_format.PositiveSign, number_format.NegativeSign };
            var leading_spaces = new[] { "", " " };
            var trailing_spaces = new[] { "", " " };
            var currency_symbol = number_format.CurrencySymbol;

            _string_source = patterns
                    .SelectMany(pattern => values.Select(value => pattern.Replace("n", value)))
                    .SelectMany(text => signs.Select(sign => text.Replace("-", sign)))
                    .SelectMany(text => signs.Select(sign => text.Replace("-", sign)))
                    .SelectMany(text => leading_spaces.Select(leading_space => leading_space + text))
                    .SelectMany(text => trailing_spaces.Select(trailing_space => text + trailing_space))
                    .Zip(Enumerable.Range(1, int.MaxValue), (text, index) => new { text = text.Replace("$", currency_symbol), index })
                    .Select(item => new InputTestData(_id, item.text, item.index))
                    .ToArray();
            _style_converter = new Dictionary<string, NumberStyles>();
            _style_converter["PMC_NUMBER_STYLE_NONE"] = NumberStyles.None;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_CURRENCY_SYMBOL"] = NumberStyles.AllowCurrencySymbol;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_DECIMAL_POINT"] = NumberStyles.AllowDecimalPoint;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_LEADING_SIGN"] = NumberStyles.AllowLeadingSign;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_LEADING_WHITE"] = NumberStyles.AllowLeadingWhite;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_PARENTHESES"] = NumberStyles.AllowParentheses;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_THOUSANDS"] = NumberStyles.AllowThousands;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_TRAILING_SIGN"] = NumberStyles.AllowTrailingSign;
            _style_converter["PMC_NUMBER_STYLE_ALLOW_TRAILING_WHITE"] = NumberStyles.AllowTrailingWhite;
            var style_names = _style_converter.Keys.Where(key => key != "PMC_NUMBER_STYLE_NONE").ToArray();
            _style_source = new[] { new[] { style_names[0] }, new string[0] }
                            .SelectMany(item => new[] { new[] { style_names[1] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[2] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[3] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[4] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[5] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[6] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .SelectMany(item => new[] { new[] { style_names[7] }, new string[0] }, (key1, key2) => key1.Concat(key2))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_CURRENCY_SYMBOL"))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_DECIMAL_POINT"))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_LEADING_WHITE"))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_PARENTHESES"))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_THOUSANDS"))
                            .Where(styles => styles.Contains("PMC_NUMBER_STYLE_ALLOW_TRAILING_WHITE"))
                            .Select(styles => styles.Any() ? string.Join("|", styles) : "PMC_NUMBER_STYLE_NONE")
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

        protected override int GroupNumber => 2;

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
                        var ret = BigInteger.TryParse(item.str.StringValue, styles, CultureInfo.InvariantCulture, out x);
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