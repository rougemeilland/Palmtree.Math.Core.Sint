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
    static class BigIntegerExtensions
    {
        public static string Dump(this BigInteger x)
        {
            var sign = x.Sign > 0 ? (byte)0x01 : x.Sign == 0 ? (byte)0x00 : (byte)0x03;
            var abs = BigInteger.Abs(x);
            var digits = new List<byte>();
            digits.Add(sign);
            while (abs > 0)
            {
                var digit = abs & 0xff;
                digits.Add((byte)digit);
                abs = abs >> 8;
            }
            return ("{ " + string.Join(", ", digits.Select(n => string.Format("0x{0:x02}", n))) + " }");
        }

        public static string ToImmediateHex32String(this BigInteger x)
        {
            return (string.Format("0x{0:x8}", (UInt32)x));
        }

        public static string ToImmediateHex64String(this BigInteger x)
        {
            return (string.Format("0x{0:x16}", (UInt64)x));
        }

        public static string ToImmediateDecimalString(this BigInteger x)
        {
            if (x == Int32.MinValue)
                return (string.Format("({0} - 1)", x + 1));
            if (x.ToString() == "-4294967295")
                return (string.Format("({0} + 1)", x - 1));
            if (x == Int64.MinValue)
                return (string.Format("({0} - 1)", x + 1));
            return (x.ToString());
        }
    }
}