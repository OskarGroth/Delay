# Delay

As soon as MTLDeviceNotificationName is used anywhere in an Xcode project (even in unreachable code), any Process or NSTask will begin experiencing significant delays, up to 3+ seconds for a simple task such as echo. This only happens when running the app through Xcode.

This sample project exhibits the problem, which has been verified by external developers.

- Open the attached sample project.
- Try running the project. The task will complete quickly, as expected.
- Comment back line #33
- Try running the project. The task will take 3+ seconds to complete.

macOS 10.15.4 / Xcode 11.5
