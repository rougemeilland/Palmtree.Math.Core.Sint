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

namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    class TestTerm
        : IComparable
    {
        private string _id;
        private int _no;
        private string _statement;

        public TestTerm(string id, int no, InputTestData[] inp, OutputTestData[] outp, string statement)
        {
            this._id = id;
            this._no = no;
            this.inp = inp;
            this.outp = outp;
            this._statement = statement;
        }
        public InputTestData[] inp { get; private set; }
        public OutputTestData[] outp { get; private set; }
        public string Render()
        {
            return (_statement);
        }

        public int CompareTo(object obj)
        {
            if (obj == null)
                return (1);
            if (GetType() != obj.GetType())
                throw new ArgumentException();
            int c;
            if ((c = _id.CompareTo(((TestTerm)obj)._id)) != 0)
                return (c);
            if ((c = _no.CompareTo(((TestTerm)obj)._no)) != 0)
                return (c);
            return (0);
        }
    }
}
