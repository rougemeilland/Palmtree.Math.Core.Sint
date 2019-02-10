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
using System.Collections.Generic;
using System.Linq;
using System.Numerics;

namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    abstract class TestPatternBase
        : ITestPattern
    {
        protected TestPatternBase()
        {
        }

        protected abstract string Id { get; }

        protected virtual int GroupNumber
        {
            get
            {
                return (1);
            }
        }

        protected virtual IEnumerable<BigInteger> CreateAdditionalInputTestData()
        {
            return (new BigInteger[0]);
        }

        protected abstract IEnumerable<TestTerm> CreateTestTerms(IEnumerable<InputTestData> in_source);

        private IEnumerable<InputTestData> CreateInputDataSource()
        {
            var in_data_dic = new Dictionary<BigInteger, object>();

            // 0と1
            in_data_dic[0] = null;
            in_data_dic[1] = null;

            // ワード境界値
            in_data_dic[new BigInteger(1) << 32] = null;
            in_data_dic[(new BigInteger(1) << 32) - 1] = null;
            in_data_dic[new BigInteger(1) << 64] = null;
            in_data_dic[(new BigInteger(1) << 64) - 1] = null;

            // 長いデータ(最長で512bit程度)
            // 最大で512bitのデータを作る 10進数10桁で2進数33桁≒32桁＝4バイト。
            var data_str_1 = "9999999999";
            var data_str_2 = "1234567890";
            var limit = new BigInteger(1) << 512;
            for (; ; )
            {
                BigInteger data_1;
                BigInteger data_2;
                if (!BigInteger.TryParse(data_str_1, out data_1))
                    throw new ApplicationException();
                if (!BigInteger.TryParse(data_str_2, out data_2))
                    throw new ApplicationException();
                in_data_dic[data_1] = null;
                in_data_dic[data_2] = null;
                if (data_1 >= limit || data_2 >= limit)
                    break;
                data_str_1 += data_str_1;
                data_str_2 += data_str_2;
            }

            // 追加のデータ
            foreach (var x in CreateAdditionalInputTestData())
                in_data_dic[x] = null;

            return (in_data_dic.Keys
                    .OrderBy(x => x)
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (value, index) => new InputTestData(Id, true, value, index))
                    .ToArray());
        }

        private static IEnumerable<string> RenderTestInputDataSource(string id, IEnumerable<InputTestData> source)
        {
            return (source
                .Select(item => string.Format("static unsigned char {0}[] = {1}; // {2}", item.Name, item.BigIntegerValue.Dump(), item.BigIntegerValue.ToImmediateDecimalString())));
        }

        private static IEnumerable<string> RenderTestOutputData(string id, IEnumerable<OutputTestData> source)
        {

            return (source
                    .Where(item => item.IsAvailableAsTestData)
                    .Select(item => string.Format("static unsigned char {0}[] = {1}; // {2}", item.Name, item.BigIntegerValue.Dump(), item.BigIntegerValue.ToImmediateDecimalString())));
        }

        /*
        private static IEnumerable<OutputTestData> CreateTestOutputDataSource(string id, IEnumerable<InputTestData> source)
        {
            return source
                .SelectMany(item => source, (u, v) => new { u, v })
                .Select(item =>
                {
                    return (new[]
                    {
                        new OutputTestData(id, "q", item.u, item.v, (u, v) => v != 0, (u, v) => u / v),
                        new OutputTestData(id, "r", item.u, item.v, (u, v) => v != 0, (u, v) => u % v),
                    });
                })
                .SelectMany(items => items);
        }
        */

        string ITestPattern.Id
        {
            get
            {
                return (Id);
            }
        }

        int ITestPattern.GroupNumber
        {
            get
            {
                return (GroupNumber);
            }
        }

        IEnumerable<string> ITestPattern.RenderTestCode()
        {
            return (CreateTestTerms(CreateInputDataSource()).Select(item => item.Render()));
        }

        IEnumerable<string> ITestPattern.RenderTestDataSource()
        {
            var terms = CreateTestTerms(CreateInputDataSource());
            return (RenderTestInputDataSource(Id, terms.Select(term => term.inp).SelectMany(items => items).Where(item => item.IsAvailableAsTestData).Distinct().OrderBy(item => item))
                    .Concat(RenderTestOutputData(Id, terms.Select(term => term.outp).SelectMany(items => items).Where(item => item.IsAvailableAsTestData).Distinct().OrderBy(item => item))));
        }
    }
}
