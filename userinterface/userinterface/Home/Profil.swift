import SwiftUI

struct ProfileView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var images: [UIImage] = []
    @State private var isShowingPhotoPicker = false
    
    var body: some View {
       
            NavigationView {
                ZStack {
                    Image("bgapp")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .opacity(0.2)
                    
                VStack(spacing:10) {
                    ProfilView()
                        .padding(.top,10)
                        .position(x:220,y: 50)
                    
                    
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
                    .padding()
                    .position(x:200,y:50)
                    
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
                    
                    NavigationLink(destination: Details()) {
                        Text("Edit profil ")
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
                
                .navigationTitle("Profile")
                .navigationBarBackButtonHidden(true)
                
            }
        }.navigationBarBackButtonHidden(true)
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

