import SwiftUI
import AVKit

struct StartView: View {
    @State var played = AVPlayer(url:  Bundle.main.url(forResource: "start", withExtension: "mov")!)
    @State var videoFinished = false
    var body: some View {
        NavigationStack{
            ZStack{
                VideoPlayer(player: played)
                    .onAppear(){
                        played.play()
                    }
                    .brightness(-0.1)
                    .scaledToFill()
                    .onReceive(NotificationCenter.default.publisher(for: .AVPlayerItemDidPlayToEndTime)) { _ in
                        withAnimation(){
                            videoFinished = true
                        }
                    }
                Rectangle()
                    .opacity(0.1)
                if videoFinished{
                    NavigationLink(destination: TimelineView(progress: 0).navigationBarBackButtonHidden(true)){
                        Text("Welcome to Myanmar")
                            .foregroundStyle(Color.white)
                            .padding(10)
                            .background(Gradient(colors: [.yellow,.green,.red]))
                            .font(.system(size: 30, design: .rounded))
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                            
                    }
                }
            }
        }
    }
}

