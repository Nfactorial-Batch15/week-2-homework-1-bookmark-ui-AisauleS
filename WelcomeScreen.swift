import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            Image("image 8")
                .resizable()
                .aspectRatio(contentMode: .fill)

            Text("Save all interesting links in one app")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(.white)

            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                    Text("Let's start collecting")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                }
            }
            .frame(height: 58)
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea()
        .background(.black)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeScreen()
                .previewInterfaceOrientation(.portrait)
        }
    }
}

