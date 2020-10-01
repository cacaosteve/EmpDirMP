# EmpDirMP


Build Tools & Versions Used:
SwiftUI 2 with Xcode 12.2 beta on macOS Big Sur, though Xcode 12 will work for iOS. Works on iOS 14 and up.

My Focus Areas:
My areas of focus were trying out SwiftUI and a multiplatform application, making the app look and run decent on either one (iOS as a priority). There was a lot of trial and error with Codable and researching how to best make the http request and make sure images are cached. It turns out there are many choices for images or making your own small class, but I decided to go with Kingfischer because the library is small, tested, and works well for loading and caching images from a URL. For Alamofire vs URLSession, the main difference is Alamofire may provide better functionality moving forward.

Copied-in code or copied-in dependencies:
none. However, I used Swift Package Manager for Alamofire (http requests) and Kingfischer (image URL loading and caching).

Tablet / phone focus:
iOS for iPhone/iPad and basically get macOS for free.

How long you spent on the project:
About 5 hours. Mostly troubleshooting Codable, SwiftUI, and researching image libraries and URL fetching. I did some more past this researching unit testing for async requests but there is no more time. 

Anything else you want us to know:
I was happy about how easy it was to get all the functionality in so little code with such a nice looking UI. After this, I tried UIKit just to see, but with UIKit there are more issues with the custom table view cell and auto layout that doesn't happen in SwiftUI.
