import SwiftUI

struct TimelineView: View{
    var progress: Int
    @State var offset = 800
    var number = 230
    @State var isAnimating = true
    var body: some View{
        ZStack{
            VStack{
                HStack{
                    Circle()
                        .frame(width: 150)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 400, height: 50)
                    Circle()
                        .frame(width: 150)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 400, height: 50)
                    Circle()
                        .frame(width: 150)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 400, height: 50)
                    Circle()
                        .frame(width: 150)
                        .padding(-15)
                }
                HStack{
                    Text("Introduction")
                        .padding(CGFloat(number))
                        .offset(x: 20)
                    Text("Geography")
                        .padding(CGFloat(number))
                    Text("History")
                        .padding(CGFloat(number))
                    Text("Culture")
                        .padding(CGFloat(number))
                }
                .offset(x:-25,y: -200)
                .fontDesign(.rounded)
                
            }
            .offset(x: CGFloat(offset))
            .onAppear(){
                offset=800-(535*progress)
//                withAnimation(.linear(duration: 3)){
//                    offset -= 535
//                }
            }
            Group{
                HStack{
                    Circle()
                        .frame(width: 100)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 450, height: 25)
                    Circle()
                        .frame(width: 100)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 450, height: 25)
                    Circle()
                        .frame(width: 100)
                        .padding(-15)
                    Rectangle()
                        .frame(width: 450, height: 25)
                    Circle()
                        .frame(width: 100)
                        .padding(-15)
                }
                .foregroundStyle(Color.yellow)
                .offset(x: CGFloat(offset),y: -245)
                .onAppear(){
                    offset=800-(275*progress)
                    withAnimation(.easeOut(duration: 3)){
                        offset -= 275
                         
                    }completion: {
                        withAnimation(){
                            isAnimating = false
                        }
                    }
                }
            }
            .mask(){
                Rectangle()
                    .frame(width: 500, height: 1000)
                    .offset(x: -300)
            }
            HStack{
                Circle()
                    .frame(width: 100)
                    .padding(400)
                Circle()
                    .frame(width: 100)
                    .padding(400)
                Circle()
                    .frame(width: 100)
                    .padding(400)
                Circle()
                    .frame(width: 100)
                    .padding(400)
            }
            .foregroundStyle(Color.yellow)
            .offset(x: CGFloat(offset))
            .onAppear(){
                offset=800-(275*progress)
                withAnimation(.linear(duration: 3)){
                    offset -= 275
                }
            }
            NavigationLink("Enter"){
                if progress==0{
                    IntroductionView()
                        .navigationBarBackButtonHidden()
                }
            }
            .offset(x: -5,y: -50)
            .opacity(isAnimating ? 0 : 1)
            .font(.largeTitle)
            .foregroundStyle(.green)
            .fontDesign(.rounded)
            .bold()
            
        }
        .offset(y: 200)
    }
}
#Preview{
    TimelineView(progress: 0)
}
