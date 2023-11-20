import SwiftUI
import PhotosUI

struct ProfilView: View {
    @State private var avatarImage: UIImage?
    @State private var isShowingPicker = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HStack(spacing:10) {
                    if let image = avatarImage {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    }
                    
                    Button(action: {
                        isShowingPicker = true
                    }) {
                        Image(systemName: "plus")
                            .frame(width: 50, height: 20)
                            .foregroundColor(.white)
                            .background(Color("background"))
                            .clipShape(Circle())
                    }
                    .sheet(isPresented: $isShowingPicker, onDismiss: loadImage) {
                        ImagePicker(image: $avatarImage)
                    }
                }
             
            }
           
        }
        .padding()
    }
    
    func loadImage() {
        // Code to handle the selected image from the picker
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: UIImage?
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 1
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: PHPickerViewControllerDelegate {
        private let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let result = results.first else {
                return
            }
            
            result.itemProvider.loadObject(ofClass: UIImage.self) { [weak self] image, error in
                if let error = error {
                    print("Error loading image: \(error.localizedDescription)")
                } else if let image = image as? UIImage {
                    DispatchQueue.main.async {
                        self?.parent.image = image
                    }
                }
            }
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
