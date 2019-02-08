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
using System.Linq;
using System.Numerics;

namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    class OutputTestData
        : ITestData
    {
        private string _id;
        private string _type;
        private int[] _in_indexes;
        private object _value;

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string out_value)
            : this(id, in_params, is_available_as_test_data, is_available, null, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, BigInteger out_value)
            : this(id, in_params, is_available_as_test_data, is_available, null, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, int out_value)
            : this(id, in_params, is_available_as_test_data, is_available, null, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, PMC_STATUS_CODE out_value)
            : this(id, in_params, is_available_as_test_data, is_available, null, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, bool out_value)
            : this(id, in_params, is_available_as_test_data, is_available, null, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, string out_value)
            : this(id, in_params, is_available_as_test_data, is_available, type, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, BigInteger out_value)
            : this(id, in_params, is_available_as_test_data, is_available, type, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, int out_value)
            : this(id, in_params, is_available_as_test_data, is_available, type, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, PMC_STATUS_CODE out_value)
            : this(id, in_params, is_available_as_test_data, is_available, type, (object)out_value)
        {
        }

        public OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, bool out_value)
            : this(id, in_params, is_available_as_test_data, is_available, type, (object)out_value)
        {
        }

        private OutputTestData(string id, InputTestData[] in_params, bool is_available_as_test_data, bool is_available, string type, object out_value)
        {
            if (out_value is string && is_available_as_test_data)
                throw new ApplicationException();
            this._id = id;
            this._type = type;
            this._in_indexes = in_params.Select(p => p.Index).ToArray();
            this.IsAvailableAsTestData = is_available_as_test_data;
            this.IsAvailable = is_available;
            if (type != null)
                this.Name = string.Format("{0}_out_data_{1}_{2}", id, type, string.Join("_", _in_indexes.Select(index => index.ToString())));
            else
                this.Name = string.Format("{0}_out_data_{1}", id, string.Join("_", _in_indexes.Select(index => index.ToString())));
            this._value = out_value;
        }

        public string BufferParam
        {
            get
            {
                return (IsAvailable ? string.Format("{0}, sizeof({0})", Name) : "NULL, 0");
            }
        }

        public string Name { get; private set; }

        /// <summary>
        /// テストデータをテスト実行行とは別にレンダリングするのならtrue、レンダリングしないのならfalse。
        /// </summary>
        public bool IsAvailableAsTestData { get; private set; }

        /// <summary>
        /// ゼロ除算などの理由で値が存在しない場合には false, 存在するのならtrue.
        /// </summary>
        public bool IsAvailable { get; private set; }

        public string StringValue
        {
            get
            {
                if (!(_value is string))
                    throw new ApplicationException();
                return ((string)_value);
            }
        }

        public BigInteger BigIntegerValue
        {
            get
            {
                if (!(_value is BigInteger))
                    throw new ApplicationException();
                return ((BigInteger)_value);
            }
        }

        public int IntegerValue
        {
            get
            {
                if (!(_value is int))
                    throw new ApplicationException();
                return ((int)_value);
            }
        }

        public PMC_STATUS_CODE PMC_STATUS_CODEValue
        {
            get
            {
                if (!(_value is PMC_STATUS_CODE))
                    throw new ApplicationException();
                return ((PMC_STATUS_CODE)_value);
            }
        }

        public bool BooleanValue
        {
            get
            {
                if (!(_value is bool))
                    throw new ApplicationException();
                return ((bool)_value);
            }
        }

        public override bool Equals(object obj)
        {
            if (obj == null || GetType() != obj.GetType())
                return false;
            if (!_id.Equals(((OutputTestData)obj)._id))
                return (false);
            var col1 = _in_indexes;
            var col2 = ((OutputTestData)obj)._in_indexes;
            if (col1.Length > col2.Length)
                col2 = col2.Concat(Enumerable.Repeat(-1, col2.Length - col1.Length)).ToArray();
            else if (col1.Length < col2.Length)
                col1 = col2.Concat(Enumerable.Repeat(-1, col1.Length - col2.Length)).ToArray();
            else
            {
            }
            if (_type != null)
            {
                if (!_type.Equals(((OutputTestData)obj)._type))
                    return (false);
            }
            return (col1.Zip(col2, (x1, x2) => x1.Equals(x2)).All(x => x));
        }

        public override int GetHashCode()
        {
            int code = _id.GetHashCode();
            code ^= _in_indexes.Aggregate(code, (x, _code) => x ^ _code);
            if (_type != null)
                code ^= _type.GetHashCode();
            return (code);
        }

        public int CompareTo(object obj)
        {
            if (obj == null)
                return (1);
            if (GetType() != obj.GetType())
                throw new ArgumentException();
            int c;
            if ((c = _id.CompareTo(((OutputTestData)obj)._id)) != 0)
                return (c);
            var col1 = _in_indexes;
            var col2 = ((OutputTestData)obj)._in_indexes;
            if (col1.Length > col2.Length)
                col2 = col2.Concat(Enumerable.Repeat(-1, col2.Length - col1.Length)).ToArray();
            else if (col1.Length < col2.Length)
                col1 = col2.Concat(Enumerable.Repeat(-1, col1.Length - col2.Length)).ToArray();
            else
            {
            }
            var cp = col1.Zip(col2, (x1, x2) => x1.CompareTo(x2)).Where(x => x != 0).ToArray();
            if (cp.Any())
                return (cp.First());
            if (_type != null)
            {
                if ((c = _type.CompareTo(((OutputTestData)obj)._type)) != 0)
                    return (c);
            }
            return (0);
        }
    }
}
