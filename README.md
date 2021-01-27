# 🪧 HUDKit

![swift v5.3](https://img.shields.io/badge/swift-v5.3-orange.svg)
![platform iOS](https://img.shields.io/badge/platform-iOS-blue.svg)
![deployment target iOS 14](https://img.shields.io/badge/deployment%20target-iOS%2014-blueviolet)

**HUDKit** is a lightweight library to present HUDs in `SwiftUI`.

<img src="../main/Sources/Resource/HUDKit.png" width="350px">

## 💻 Installation
### 📦 Swift Package Manager
Using <a href="https://swift.org/package-manager/" rel="nofollow">Swift Package Manager</a>, add it as a Swift Package in Xcode 11.0 or later, `select File > Swift Packages > Add Package Dependency...` and add the repository URL:
```
https://github.com/rebeloper/HUDKit.git
```
### ✊ Manual Installation
Download and include the `HUDKit` folder and files in your codebase.

### 📲 Requirements
- iOS 14+
- Swift 5

## 👉 Import

Import `HUDKit` into your `View`

```
import HUDKit
```

## 🧳 Features

Here's the list of the awesome features `HUDKit` has:
- [X] programatic way to show `HUD`s in SwiftUI
- [X] `show`, `update` and `hide` the HUD
- [X] style your HUD however you want with tons of options

## ⚙️ How to use

Using `HUDKit` is super simple:

1. create a `@StateObject` variable of `HUDManager()`
2. add the `.uses(_:)` view-modifier

### ⚾️ Show HUD

First let's show a HUD 🤩: `hudManager.show("Working...")`

```
import HUDKit

struct ContentView: View {
    
    @StateObject var hudManager = HUDManager()
    
    var body: some View {
        VStack {
            Button("Show HUD") {
                hudManager.show("Working...")
            }
        }
        .uses(hudManager)
    }
}
```

### 🥎 Update HUD

Let's update our HUD: `hudManager.update("Still working hard...")`
Here we're updating after 2 seconds:

```
Button("Show HUD") {
    hudManager.show("Working...")
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        hudManager.update("Still working hard...")
    }
}
```

### 🎾 Hide HUD

Hiding the HUD is as simple as showing it: `hudManager.hide("Going away 👋")`
Let's hide it after 5 seconds:

```
Button("Show HUD") {
    hudManager.show("Working...")
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        hudManager.update("Still working hard...")
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        hudManager.hide("Going away 👋")
    }
}
```

### 🎨 Style with HUD options

You have a ton of ways to style the HUD. Try them out:

```
public var showsProgressView: Bool
public var progressViewForegroundColor: Color
public var font: Font
public var foregroundColor: Color
public var backgroundColor: Color
public var verticalPadding: CGFloat
public var horizontalPadding: CGFloat
public var hudHorizontalPadding: CGFloat
public var cornerRadius: CGFloat
public var shadowColor: Color
public var shadowRadius: CGFloat
public var shadowOffset: CGSize
public var slideDownOffset: CGFloat
public var hidesOnTap: Bool
public var animated: Bool
public var isVertical: Bool
public var disablesContent: Bool
public var contentCoverColor: Color
public var blurRadius: CGFloat
```

You can set the options when setting up the HUD:

```
var body: some View {
    VStack {
        ...
    }
    .uses(hudManager, options: HUDOptions(hudHorizontalPadding: 32, blurRadius: 1))
}
```
Note: when not specified we're using the default `HUDOptions`.

## 🪁 Demo project

For a comprehensive Demo project check out: 
<a href="https://github.com/rebeloper/HUDKitDemo">HUDKitDemo</a>

## ✍️ Contact

<a href="https://rebeloper.com/">rebeloper.com</a> / 
<a href="https://www.youtube.com/rebeloper/">YouTube</a> / 
<a href="https://store.rebeloper.com/">Shop</a> / 
<a href="https://rebeloper.com/mentoring">Mentoring</a>

## 📃 License

The MIT License (MIT)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


