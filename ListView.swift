import SwiftUI

struct ListView: View {
    private var items: [String] = ["Google", "nFactorial School", "NY Times", "Bloomberg"]
    
    var body: some View {
        VStack {
            NavigationView {
                List(items, id: \.self) { item in
                    VStack {
                        HStack {
                            Text(item)
                            Spacer()
                            Image(systemName: "link")
                        }
                        .padding()
                        
                        Divider()
                            .foregroundColor(.gray)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .navigationTitle("List")
                .navigationBarTitleDisplayMode(.inline)
            }

            Button(action: {}) {
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
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}





