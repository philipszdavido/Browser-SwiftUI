### 🧭 Browser-SwiftUI

**Browser-SwiftUI** is a lightweight HTML rendering engine built entirely in **SwiftUI**. It takes an HTML string and dynamically parses and renders it using native SwiftUI views — no WebKit, no `WKWebView`, just pure SwiftUI.

#### 🚀 Features

* Renders basic HTML elements like:

  * `<p>`, `<h1>`–`<h6>`, `<b>`, `<i>`, `<u>`
  * `<a>` with tap handling
  * `<img>` with remote loading
  * `<div>` and `<span>` with nested rendering
  * Lists: `<ul>`, `<ol>`, `<li>`
  * Text styles, colors, and fonts (limited support)
* Responsive layout using SwiftUI's declarative UI
* Fully extendable parser and renderer
* No dependency on WebKit — built from scratch
* Works offline with static HTML input

#### 🧱 How It Works

1. Parses the HTML string into a lightweight Swift struct-based DOM.
2. Recursively maps DOM nodes to SwiftUI views.
3. Applies styles, spacing, and formatting using native SwiftUI modifiers.

#### 📦 Example Usage

```swift
let html = """
<h1>Welcome</h1>
<p>This is <b>bold</b> and <i>italic</i> text.</p>
<img src="https://example.com/image.png" />
"""

HTMLView(html: html)
```

#### 🛠 Tech Stack

* Swift 5+
* SwiftUI 3+
* Custom HTML parser (Foundation + Regex)
* AsyncImage & AttributedText (where supported)

#### 📱 Target

* iOS 15+
* macOS 12+ (optional)

---