import SwiftUI

struct SyncContacts: View {
    var body: some View {

        ZStack {
            Color(.black)
                .ignoresSafeArea()

            VStack{
                Text("Would you like to Sync Contacts?")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(width: 375, height: 200, alignment: .center)

                Text("Continue")
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .frame(width: 240, height: 80, alignment: .center)
                    .fontWeight(.medium)
                    .background(Color.gray)

                Text("Cancel")
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .frame(width: 240, height: 80, alignment: .center)
                    .fontWeight(.medium)
                    .background(Color.gray)

            }
        }
    }
}

#Preview {
    SyncContacts()
}
