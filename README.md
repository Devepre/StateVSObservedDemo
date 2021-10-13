# StateVSObservedDemo
Demo app for SwiftUI state management

Run the app and push 3 buttons to increase each counter.
Toggle one of the toggles to observe how different StateObject, ObservedObject behaves.

When view invalidates on toggle, ObservedObject is recreated and counter is reset back to zero.
StateObject allow to avoid that and persist data on parent view invalidate.

![app_view](https://user-images.githubusercontent.com/32450732/137144071-cbe34833-9aea-4dc2-bddd-f3c4f1e2cfe4.png)
