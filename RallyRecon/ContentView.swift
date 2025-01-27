import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 248 / 255, green: 248 / 255, blue: 238/255)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                VStack{
                    Text("RallyRecon")
                        .frame(width: 1000, height: 100, alignment: .top)
                        .font(.system(size:90, weight: .bold))
                        .padding(30)
                        .foregroundColor(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                    Image("AppLogo")
                        .resizable()
                        .frame(width: 450.0, height: 450.0)
                
                    NavigationLink("Create A Rally", destination: CreateARally())
                        .frame(width: 300, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:40, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                    NavigationLink("Saved Rallies", destination: SavedRallys())
                        .frame(width: 300, height: 80)
                        .background(Color(red: 17 / 255, green: 51 / 255, blue: 95/255))
                        .cornerRadius(20)
                        .font(.system(size:40, weight: .bold))
                        .foregroundColor(Color(red: 248 / 255, green: 248 / 255, blue: 238/255))
                        .padding(10)
                        
                        
                }
                }
            }
        }
    }
#Preview {
    ContentView()
}
