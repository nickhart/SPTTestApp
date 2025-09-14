import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack(spacing: 20) {
        Image(systemName: "swift")
          .font(.system(size: 80))
          .foregroundColor(.blue)

        Text("Welcome to SPTTestApp!")
          .font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)

        Text("Your iOS app is ready to build amazing things.")
          .font(.body)
          .foregroundColor(.secondary)
          .multilineTextAlignment(.center)
          .padding(.horizontal)

        Button("Get Started") {
          print("Hello from SPTTestApp!")
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
      }
      .padding()
      .navigationTitle("SPTTestApp")
    }
  }
}

#Preview {
  ContentView()
}
