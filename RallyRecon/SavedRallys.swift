import SwiftUI

struct SavedRallys : View {
    var body: some View {
        ZStack{
            Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack{
                Text("Saved Rallies")
                    .font(.system(size:75, weight: .bold))
                    .padding(30)
                    .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                
                
                NavigationLink("View Saved Stages", destination: StagesView())
                    .frame(width: 400, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    .padding(30)
                
                NavigationLink("Edit", destination: ModifierHub())
                    .frame(width: 300, height: 80)
                    .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    .cornerRadius(20)
                    .font(.system(size:40, weight: .bold))
                    .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    .padding(30)
            }
        }
    }
}
#Preview {
    SavedRallys()
}

