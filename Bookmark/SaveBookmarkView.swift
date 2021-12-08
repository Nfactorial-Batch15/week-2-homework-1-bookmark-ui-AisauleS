import SwiftUI

struct SaveBookmarkView: View {
    @State private var title: String = ""
    @State private var link: String = ""
    
    var body: some View {
        VStack {
            VStack() {
                Button(action: {}) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(16)
            }
            
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.headline)
                TextField("Title", text: $title, prompt: Text("Bookmark title"))
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                Color(white: 0.95)
                            )
                    )
            }
            .padding(16)
            
            VStack(alignment: .leading) {
                Text("Link")
                    .font(.headline)
                TextField("Link", text: $link, prompt: Text("Bookmark link (URL)"))
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                Color(white: 0.95)
                            )
                    )
            }
            .padding(16)
            
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.black)
                    Text("Save")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
            }
            .frame(height: 58)
            .padding(16)
        }
        .frame(height: 390)
    }
}

struct SaveBookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        SaveBookmarkView()
    }
}
