import SwiftUI
import LocalAuthentication

struct EditView: View {
    @State private var photo: Image?
    @State private var showImagePicker = false
    @State private var sourceType: UIImagePickerController.SourceType?
    @State private var phoneNumber: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Edit Your Profile")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)

                // Display the selected photo or a placeholder if no photo is selected
                Group {
                    if let photo = photo {
                        photo
                            .resizable()
                            .aspectRatio(contentMode: .fit)			
                            .frame(width: 200, height: 200)
                            .padding()
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding()
                    }
                }

                Button(action: {
                    showImagePicker = true
                }) {
                    Text("Change Photo")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 200)
                        .background(Color.blue)
                        .cornerRadius(20)
                }

                TextField("Phone Number", text: $phoneNumber)
                    .padding()
                    .foregroundColor(.primary)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                    .padding()

                NavigationLink(destination: ProfileView()) {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: 200)
                        .background(Color.green)
                        .cornerRadius(20)
                }

                Spacer()
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePickerView(sourceType: $sourceType, selectedImage: $photo)
            }
        }
    }

    func loadImage() {
        guard let selectedImage = photo else { return }
        self.photo = selectedImage
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var sourceType: UIImagePickerController.SourceType?
    @Binding var selectedImage: Image?

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType ?? .photoLibrary
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent: ImagePickerView

        init(_ parent: ImagePickerView) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = Image(uiImage: image)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

