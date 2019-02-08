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

        protected virtual IEnumerable<BigInteger> CreateAdditionalInputTestData()
        {
            return (new BigInteger[0]);
        }

        protected abstract IEnumerable<TestTerm> CreateTestTerms(IEnumerable<InputTestData> in_source);

        private IEnumerable<InputTestData> CreateInputDataSource()
        {
            var in_data_dic = new[]
            {
                BigInteger.Zero,
                BigInteger.One,
                BigInteger.One << 31,
                (BigInteger.One << 31) - 1,
                BigInteger.One << 32,
                (BigInteger.One << 32) - 1,
                BigInteger.One << 63,
                (BigInteger.One << 63) - 1,
                BigInteger.One << 64,
                (BigInteger.One << 64) - 1,
                BigInteger.One << 127,
                (BigInteger.One << 127) - 1,
                BigInteger.One << 128,
                (BigInteger.One << 128) - 1,
            }
            .SelectMany(n => new[] { n, -n })
            .Distinct()
            .ToDictionary(n => n, n => (object)null);

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

        string ITestPattern.Id
        {
            get
            {
                return (Id);
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
