/*

This file is strictly for the constructive criticism 
and occasional modifications in support of the file
for the requested program.
The holder of this file may support and help fix
the code, which may include but is not limited to 
bug fixes, optimizations, organizations
and all other works involved in best practices.

The owner Aaron Bazan retains all rights to the original
and modified works

No rights are given for redistributions,
infringements or competitive competitions

Current Path : "C:\Users\escam\OneDrive\Desktop\Joseph\DevOps\GitHub\Projects\Senpai Productions\Dev\Library\AaronsCarApp\AaronsCarApp.swift"

*/

// Aaron's Car App - Console Version

import Foundation

// Package model
struct Package {
    var name: String
    var price: String
    var services: [String]
}

// HomeView equivalent in console
func showHomeView() {
    print("Welcome to Aaron's Car App")
}

// PackagesView equivalent in console
func showPackagesView() {
    let packages = [
        Package(name: "Basic Package", price: "$75 - $100", services: [
            "Hand Wash and Dry", "Vacuuming", "Interior Wipe Down", "Tire and Wheel Cleaning", "Glass Cleaning (Interior and Exterior)"
        ]),
        Package(name: "Standard Package", price: "$150 - $200", services: [
            "All Basic Package Services", "Clay Bar Treatment", "Waxing/Polishing", "Shampooing of Carpets and Upholstery", "Leather Cleaning and Conditioning (if applicable)"
        ]),
        Package(name: "Premium Package", price: "$250 - $350", services: [
            "All Standard Package Services", "Paint Correction (Single Stage)", "Sealant Application", "Steam Cleaning", "Headlight Restoration", "Odor Removal"
        ]),
        Package(name: "Deluxe Package", price: "$400 - $600", services: [
            "All Premium Package Services", "Paint Correction (Multi-Stage)", "Ceramic Coating", "Fabric Protection", "Engine Bay Cleaning", "Trim and Plastic Restoration"
        ]),
        Package(name: "Ultimate Protection Package", price: "$700 - $1,000+", services: [
            "All Deluxe Package Services", "Paint Protection Film (PPF) Installation (Selected Areas)", "Window Tinting", "Convertible Top Cleaning (if applicable)", "Tar and Sap Removal", "Scratch and Swirl Removal"
        ])
    ]
    
    print("\nOur Packages:\n")
    for package in packages {
        print("Package Name: \(package.name)")
        print("Price: \(package.price)")
        print("Services:")
        for service in package.services {
            print(" - \(service)")
        }
        print("\n")
    }
}

// AboutView equivalent in console
func showAboutView() {
    print("""
    \nAbout Us
    Welcome to Premium Car Detailing! We are dedicated to providing the highest quality car detailing services to keep your vehicle looking its best. Our experienced team uses only the finest products and techniques to ensure your car receives the care it deserves.
    """)
}

// ContactView equivalent in console
func showContactView() {
    print("\nContact Us\n")
    print("Please enter your details below:")

    print("Name: ", terminator: "")
    if let name = readLine() {
        print("Email: ", terminator: "")
        if let email = readLine() {
            print("Message: ", terminator: "")
            if let message = readLine() {
                print("\nThank you, \(name)! We have received your message:\n\"\(message)\"\nWe will contact you at \(email) shortly.\n")
            }
        }
    }
}

// Main function to run the app
func runApp() {
    var isRunning = true
    
    while isRunning {
        print("\n--- Aaron's Car App ---")
        print("1. Home")
        print("2. View Packages")
        print("3. About Us")
        print("4. Contact Us")
        print("5. Exit")
        print("Choose an option: ", terminator: "")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                showHomeView()
            case "2":
                showPackagesView()
            case "3":
                showAboutView()
            case "4":
                showContactView()
            case "5":
                isRunning = false
            default:
                print("Invalid choice, please try again.")
            }
        }
    }
    
    print("Thank you for using Aaron's Car App!")
}

runApp()


