import SwiftUI

struct IntroductionView: View{
    var body: some View{
        NavigationStack{
            Form{
                Section("Click to toggle"){
                    InformationView(title: "Location", content: Text("Southeast Asia, borders with China, Laos, Thailand, Bangladesh and India"))
                    InformationView(title: "Flag", content: 
                                        HStack{
                        Spacer()
                        Text("🇲🇲")
                            .font(.system(size: 300))
                        Spacer()
                    }
                    )
                    InformationView(title: "Old name", content: Text("Burma"))
                    InformationView(title: "Capital", content: Text("Naypyidaw, used to be Yangon"))
                    InformationView(title: "Population", content: Text("Around 55 million"))
                }
            }
            .navigationTitle("Introduction")
        }
    }
}
#Preview{ 
    IntroductionView()
}
struct InformationView<Content: View>: View{
    var title: String
    var content: Content
    @State var isClicked = false
    var body: some View{
        Section{
            Button(title){
                withAnimation(){
                    isClicked.toggle()
                }
            }
            if isClicked{
                content
            }
        }
    }
}
