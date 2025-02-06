import SwiftUI

struct SavedRallys : View {
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            Button{
                
            } label: {
               Text("Edit")
                    .frame(width: 300, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                
                   
            }
        }
    }
}
#Preview {
    SavedRallys()
}

