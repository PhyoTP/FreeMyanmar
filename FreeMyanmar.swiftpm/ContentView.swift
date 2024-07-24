import SwiftUI

struct ContentView: View {
    @State var timeLimit = 180
    var body: some View {
        ZStack{
            StartView()
        }
    }
}
