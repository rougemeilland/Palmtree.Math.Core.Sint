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

namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    class TEST_From
        : TestPatternBase
    {
        private string _id;
        private string _id_i;
        private string _id_l;

        public TEST_From()
        {
            _id = "From";
            _id_i = _id + "_I";
            _id_l = _id + "_L";
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
            var source = in_source
                .Select(u => new
                {
                    u,
                    desired_w = new OutputTestData(_id, new[] { u }, true, true, u.BigIntegerValue),
                });
            return (source
                    .Where(item => item.u.BigIntegerValue >= Int32.MinValue && item.u.BigIntegerValue <= Int32.MaxValue)
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (item, index) => new { index, item.u, item.desired_w })
                    .Select(item => new TestTerm(_id_i,
                                                 item.index,
                                                 new[] { item.u },
                                                 new[] { item.desired_w },
                                                 string.Format("TEST_{0}(env, ep, {1}, {2}, {3});",
                                                               _id_i, item.index,
                                                               item.u.BigIntegerValue.ToImmediateDecimalString(),
                                                               item.desired_w.BufferParam)))
                 .Concat(source
                         .Where(item => item.u.BigIntegerValue >= Int64.MinValue && item.u.BigIntegerValue <= Int64.MaxValue)
                         .Zip(Enumerable.Range(1, int.MaxValue),
                              (item, index) => new { index, item.u, item.desired_w })
                         .Select(item => new TestTerm(_id_l,
                                                      item.index,
                                                      new[] { item.u },
                                                      new[] { item.desired_w },
                                                      string.Format("TEST_{0}(env, ep, {1}, {2}, {3});",
                                                                    _id_l, item.index,
                                                                    item.u.BigIntegerValue.ToImmediateDecimalString(),
                                                                    item.desired_w.BufferParam)))));
        }
    }
}