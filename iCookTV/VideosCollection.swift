//
//  VideosCollection.swift
//  TryTVOS
//
//  Created by Ben on 14/08/2016.
//  Copyright © 2016 bcylin.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

struct VideosCollection: DataCollection {

  typealias DataType = Video

  private var videos = [Video]()

  // MARK: - DataCollection

  subscript(index: Int) -> Video {
    return videos[index]
  }

  var count: Int {
    return videos.count
  }

  func appendItems(items: [Video]) -> VideosCollection {
    var mutableCollection = self.videos
    mutableCollection += items
    return VideosCollection(videos: mutableCollection)
  }

  func insertItem(item: Video, atIndex index: Int) -> VideosCollection {
    var mutableCollection = videos
    mutableCollection.insert(item, atIndex: index)
    return VideosCollection(videos: mutableCollection)
  }

  func deleteItemAtIndex(index: Int) -> VideosCollection {
    var mutableCollection = videos
    mutableCollection.removeAtIndex(index)
    return VideosCollection(videos: mutableCollection)
  }

  func moveItem(fromIndex: Int, toIndex: Int) -> VideosCollection {
    return deleteItemAtIndex(fromIndex).insertItem(videos[fromIndex], atIndex: toIndex)
  }

}
