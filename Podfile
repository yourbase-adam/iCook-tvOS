source "https://github.com/CocoaPods/Specs.git"

platform :tvos, "9.0"
use_frameworks!
inhibit_all_warnings!

workspace "TryTVOS"
xcodeproj "TryTVOS"

pod "Alamofire"
pod "Freddy"
pod "HCYoutubeParser"
pod "Hue", git: "https://github.com/hyperoslo/Hue.git", commit: "89ae5e1"
pod "Kingfisher"

plugin "cocoapods-keys", {
  project: "TryTVOS",
  keys: ["BaseAPIURL"]
}
