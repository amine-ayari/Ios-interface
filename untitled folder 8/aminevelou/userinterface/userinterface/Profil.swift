import SwiftUI

struct ProfileView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var images: [UIImage] = []
    @State private var isShowingPhotoPicker = false
    
    var body: some View {
        ZStack {
            Color("bgapp")
                .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                VStack(spacing: 20) {
                    ProfilView()
                        .padding(.top, 30)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                        
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                        
                        TextField("Phone", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                    }
                    .padding(.horizontal)
                    
                    NavigationLink(destination: EditView()) {
                        Text("More Info")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("background"))
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Logout")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("background"))
                            .cornerRadius(20)
                            .padding(.horizontal)
                    }
                    
                    /* Button(action: {
                        isShowingPhotoPicker = true
                    }) {
                        if images.isEmpty {
                            Text("Select Photos")
                        } else {
                            Image(uiImage: images[0])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                        }
                    }
                    .sheet(isPresented: $isShowingPhotoPicker) {
                        PhotoPicker(images: $images)
                    }*/
                    
                    Spacer()
                }
                .padding(.top, 50)
                .navigationTitle("Profile")
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct EditInterfaceView: View {
    var body: some View {
        Text("Edit Interface")
    }
}

