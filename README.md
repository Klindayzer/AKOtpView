# AKOtpView

[![CI Status](https://img.shields.io/travis/adhamalkhateeb/AKOtpView.svg?style=flat)](https://travis-ci.org/adhamalkhateeb/AKOtpView)
[![Version](https://img.shields.io/cocoapods/v/AKOtpView.svg?style=flat)](https://cocoapods.org/pods/AKOtpView)
[![License](https://img.shields.io/cocoapods/l/AKOtpView.svg?style=flat)](https://cocoapods.org/pods/AKOtpView)
[![Platform](https://img.shields.io/cocoapods/p/AKOtpView.svg?style=flat)](https://cocoapods.org/pods/AKOtpView)

## Example

<img src="https://raw.githubusercontent.com/Klindayzer/AKOtpView/master/otp.gif">

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## How to use
1- Add UIView to your UIViewController nib or in storyboard and from Identity Inspector change the class to AKOtpView

<img src="https://github.com/Klindayzer/AKOtpView/blob/master/example1.png">

2- Click on Attributes Inspector and customize your view with the following attributes:<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a- Number Of Digits: set how many digits are you expecting from short code<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b- Border Error Color: set otp circle border color in error state<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;c- Border Normal Color: set otp circle border color in normal state<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d- Border Fill Color: set otp circle border color when the digit is set<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e- Text Error Color: set otp text color in error state<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;f- Text Normal Color: set otp text color in normal state<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;g- Border Width: set circle border width default is 2.0<br>
  
  <img src="https://github.com/Klindayzer/AKOtpView/blob/master/example2.png">
  

3- In ViewController add bellow code:<br>

```swift

@IBOutlet weak var otpView: AKOtpView!
let correctOtp = "1234"

override func viewDidLoad() {
        super.viewDidLoad()
      
        otpView.setupView(withFont: UIFont.systemFont(ofSize: 30)) { (code) in
            // TODO: - Check if entered code is correct
            if code != self.correctOtp {
                self.otpView.isError = true
            }
        }
    }


 override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: - this is optional, to open the keyboard automatically 
        otpView.openKeyboard()
    }
```
## Installation

AKOtpView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AKOtpView'
```

## Author

Adham Alkhateeb, adhamykh@gmail.com

## License

AKOtpView is available under the MIT license. See the LICENSE file for more info.
