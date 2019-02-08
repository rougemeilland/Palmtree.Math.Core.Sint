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
    class TEST_GetNumberType
        : TestPatternBase
    {
        private string _id;
        private string _id_x;

        public TEST_GetNumberType()
        {
            _id = "GetNumberType";
            _id_x = _id + "_X";
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
                .Select(x =>
                {
                    int value = 0;
                    if (x.BigIntegerValue.IsZero)
                        value |= 0x01;
                    if (x.BigIntegerValue.IsOne)
                        value |= 0x02;
                    if (x.BigIntegerValue == -1)
                        value |= 0x04;
                    if (x.BigIntegerValue.IsEven)
                        value |= 0x08;
                    if (x.BigIntegerValue.IsPowerOfTwo)
                        value |= 0x10;
                    return (new
                    {
                        x,
                        desired_value = new OutputTestData(_id, new[] { x, }, false, true, value),
                    });
                });
            return (source
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (item, index) => new { index, item.x, item.desired_value })
                    .Select(item => new TestTerm(_id_x,
                                                 item.index,
                                                 new[] { item.x },
                                                 new[] { item.desired_value },
                                                 string.Format("TEST_{0}(env, ep, {1}, {2}, {3});",
                                                               _id_x, item.index,
                                                               item.x.BufferParam,
                                                               item.desired_value.IntegerValue))));
        }
    }
}