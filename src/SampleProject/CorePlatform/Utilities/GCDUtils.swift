/**
 * Copyright (c) 2016 Ivan Magda
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

import Foundation

func doInBackground(_ block: @escaping () -> ()) {
  DispatchQueue.global(qos: .default).async {
    block()
  }
}

func doOnMain(_ block: @escaping () -> ()) {
  DispatchQueue.main.async {
    block()
  }
}
// implementation for GCD
/*
static func dataForResource(_ name: String, completion: @escaping (Data?) -> ()) {
  doInBackground {
    guard let filePath = Bundle.main.url(forResource: name, withExtension: "json") else {
      completion(nil)
      return
    }
    
    let data = try? Data(contentsOf: filePath, options: .uncached)
    
    doOnMain {
      completion(data)
    }
  }
}
*/
 

