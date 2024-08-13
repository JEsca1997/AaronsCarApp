import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Premium Car Detailing")
                    .font(.largeTitle)
                    .padding()
                
                Text("Experience the Ultimate Shine")
                    .font(.headline)
                    .padding()
                
                Text("Your car deserves the best care. Choose from our range of detailing packages.")
                    .padding()
                
                NavigationLink(destination: PackagesView()) {
                    Text("View Packages")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: AboutView()) {
                    Text("About Us")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: ContactView()) {
                    Text("Contact Us")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Package: Identifiable {
    var id = UUID()
    var name: String
    var price: String
    var services: [String]
}

struct PackagesView: View {
    let packages = [
        Package(name: "Basic Package", price: "$75 - $100", services: [
            "Hand Wash and Dry", 
            "Vacuuming", 
            "Interior Wipe Down", 
            "Tire and Wheel Cleaning", 
            "Glass Cleaning (Interior and Exterior)"
        ]),
        Package(name: "Standard Package", price: "$150 - $200", services: [
            "All Basic Package Services", 
            "Clay Bar Treatment", 
            "Waxing/Polishing", 
            "Shampooing of Carpets and Upholstery", 
            "Leather Cleaning and Conditioning (if applicable)"
        ]),
        Package(name: "Premium Package", price: "$250 - $350", services: [
            "All Standard Package Services", 
            "Paint Correction (Single Stage)", 
            "Sealant Application", 
            "Steam Cleaning", 
            "Headlight Restoration", 
            "Odor Removal"
        ]),
        Package(name: "Deluxe Package", price: "$400 - $600", services: [
            "All Premium Package Services", 
            "Paint Correction (Multi-Stage)", 
            "Ceramic Coating", 
            "Fabric Protection", 
            "Engine Bay Cleaning", 
            "Trim and Plastic Restoration"
        ]),
        Package(name: "Ultimate Protection Package", price: "$700 - $1,000+", services: [
            "All Deluxe Package Services", 
            "Paint Protection Film (PPF) Installation (Selected Areas)", 
            "Window Tinting", 
            "Convertible Top Cleaning (if applicable)", 
            "Tar and Sap Removal", 
            "Scratch and Swirl Removal"
        ])
    ]
    
    var body: some View {
        List(packages) { package in
            VStack(alignment: .leading) {
                Text(package.name)
                    .font(.headline)
                
                Text("Price: \(package.price)")
                    .font(.subheadline)
                
                ForEach(package.services, id: \.self) { service in
                    Text("- \(service)")
                        .font(.body)
                }
            }
            .padding()
        }
        .navigationTitle("Our Packages")
    }
}

struct PackagesView_Previews: PreviewProvider {
    static var previews: some View {
        PackagesView()
    }
}

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("About Us")
                .font(.largeTitle)
                .padding()
            
            Text("""
            Welcome to Premium Car Detailing! We are dedicated to providing the highest quality car detailing services to keep your vehicle looking its best. Our experienced team uses only the finest products and techniques to ensure your car receives the care it deserves.
            """)
            .padding()
            
            Spacer()
        }
        .navigationTitle("About Us")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

struct ContactView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var message: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Contact Us")) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                TextField("Message", text: $message)
            }
            
            Button(action: {
                // Handle form submission
                print("Name: \(name), Email: \(email), Message: \(message)")
            }) {
                Text("Submit")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .navigationTitle("Contact Us")
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

@main
struct CarDetailingApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
