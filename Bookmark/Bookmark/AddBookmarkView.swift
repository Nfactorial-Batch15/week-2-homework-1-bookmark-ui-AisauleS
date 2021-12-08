import SwiftUI

struct AddBookmarkView: View {
    @State private var showingSheet = false

    var body: some View {
        VStack  {
            Group {
                Text("Bookmark App")
                    .font(.system(size: 17, weight: .bold))
                
                Spacer()
                
                Text("Save your first bookmark")
                    .font(.system(size: 36, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(16)
                
                Spacer()
                
                Button {
                    showingSheet.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                        Text("Add bookmark")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                }
                .frame(height: 58)
                .padding(16)
                .popover(isPresented: $showingSheet) {
                    SaveBookmarkView()
                }
            }
        }
    }
}

struct AddBookmarView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookmarkView()
    }
}
