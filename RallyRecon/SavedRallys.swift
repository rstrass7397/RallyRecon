import SwiftUI

struct SavedRallies: View {
    @State var inputText: String = ""
    
    var body: some View {
        VStack {
            Text("Saved Rallies")
                .font(.system(size: 75, weight: .bold))
                .padding(30)
                .foregroundColor(Color.navy)
        }
        .font(.title)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.creme)
    }
}
#Preview {
    SavedRallies()
}


