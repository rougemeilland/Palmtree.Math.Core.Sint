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


namespace Palmtree.Math.Core.Sint.CodeGen.TestPattern
{
    class PMC_STATUS_CODE
    {
        private string _name;

        static PMC_STATUS_CODE()
        {
            PMC_STATUS_OK = new PMC_STATUS_CODE("PMC_STATUS_OK");
            PMC_STATUS_DIVISION_BY_ZERO = new PMC_STATUS_CODE("PMC_STATUS_DIVISION_BY_ZERO");
            PMC_STATUS_OVERFLOW = new PMC_STATUS_CODE("PMC_STATUS_OVERFLOW");
            PMC_STATUS_ARGUMENT_ERROR = new PMC_STATUS_CODE("PMC_STATUS_ARGUMENT_ERROR");
            PMC_STATUS_PARSING_ERROR = new PMC_STATUS_CODE("PMC_STATUS_PARSING_ERROR");
        }

        private PMC_STATUS_CODE(string name)
        {
            _name = name;
        }

        static public PMC_STATUS_CODE PMC_STATUS_OK { get; private set; }
        static public PMC_STATUS_CODE PMC_STATUS_DIVISION_BY_ZERO { get; private set; }
        static public PMC_STATUS_CODE PMC_STATUS_OVERFLOW { get; private set; }
        static public PMC_STATUS_CODE PMC_STATUS_ARGUMENT_ERROR { get; private set; }
        static public PMC_STATUS_CODE PMC_STATUS_PARSING_ERROR { get; private set; }

        public override bool Equals(object obj)
        {
            if (obj == null || GetType() != obj.GetType())
                return (false);
            return (_name.Equals(((PMC_STATUS_CODE)obj)._name));
        }

        // override object.GetHashCode
        public override int GetHashCode()
        {
            return (_name.GetHashCode());
        }

        public override string ToString()
        {
            return (_name);
        }
    }
}

