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
    class TEST_To
        : TestPatternBase
    {
        private string _id;
        private string _id_x_i;
        private string _id_x_l;

        public TEST_To()
        {
            _id = "To";
            _id_x_i = _id + "_X_I";
            _id_x_l = _id + "_X_L";
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
                ;
            return (source
                    .Select(u => new
                    {
                        u,
                        desired_status = new OutputTestData(_id,
                                                            new[] { u },
                                                            false,
                                                            false,
                                                            u.BigIntegerValue >= Int32.MinValue && u.BigIntegerValue <= Int32.MaxValue ? PMC_STATUS_CODE.PMC_STATUS_OK : PMC_STATUS_CODE.PMC_STATUS_OVERFLOW),
                        desired_w = new OutputTestData(_id,
                                                       new[] { u },
                                                       u.BigIntegerValue >= Int32.MinValue && u.BigIntegerValue <= Int32.MaxValue,
                                                       false,
                                                       u.BigIntegerValue >= Int32.MinValue && u.BigIntegerValue <= Int32.MaxValue ? u.BigIntegerValue : BigInteger.Zero),
                    })
                    .Zip(Enumerable.Range(1, int.MaxValue),
                         (item, index) => new { index, item.u, item.desired_status, item.desired_w })
                    .Select(item => new TestTerm(_id_x_i,
                                                 item.index,
                                                 new[] { item.u },
                                                 new[] { item.desired_w },
                                                 string.Format("TEST_{0}(env, ep, {1}, {2}, {3}, {4});",
                                                               _id_x_i, item.index,
                                                               item.u.BufferParam,
                                                               item.desired_status.PMC_STATUS_CODEValue,
                                                               item.desired_w.BigIntegerValue.ToImmediateDecimalString())))
                 .Concat(source
                         .Select(u => new
                         {
                             u,
                             desired_status = new OutputTestData(_id,
                                                            new[] { u },
                                                            false,
                                                            false,
                                                            u.BigIntegerValue >= Int64.MinValue && u.BigIntegerValue <= Int64.MaxValue ? PMC_STATUS_CODE.PMC_STATUS_OK : PMC_STATUS_CODE.PMC_STATUS_OVERFLOW),
                             desired_w = new OutputTestData(_id,
                                                       new[] { u },
                                                       u.BigIntegerValue >= Int64.MinValue && u.BigIntegerValue <= Int64.MaxValue,
                                                       false,
                                                       u.BigIntegerValue >= Int64.MinValue && u.BigIntegerValue <= Int64.MaxValue ? u.BigIntegerValue : BigInteger.Zero),
                         })
                         .Zip(Enumerable.Range(1, int.MaxValue),
                              (item, index) => new { index, item.u, item.desired_status, item.desired_w })
                         .Select(item => new TestTerm(_id_x_l,
                                                      item.index,
                                                      new[] { item.u },
                                                      new[] { item.desired_w },
                                                      string.Format("TEST_{0}(env, ep, {1}, {2}, {3}, {4});",
                                                                    _id_x_l, item.index,
                                                                    item.u.BufferParam,
                                                                    item.desired_status.PMC_STATUS_CODEValue,
                                                                    item.desired_w.BigIntegerValue.ToImmediateDecimalString())))));
        }
    }
}