//
//  TypeOrderEnum.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//
import Foundation
import SwiftUI

enum TypeOrder: String, Codable {
    case carpet
    case safa
    case plumbing
    case window
    case kitchen
    case bathroom
    case furniture
    case stainRemover
    
    var icon: ImageResource {
        switch self {
        
        case .carpet:
                .iconCarpet
        case .safa:
                .iconSofa
        case .plumbing:
                .iconPlumbing
        case .window:
                .iconWindow
        case .kitchen:
                .iconKitchen
        case .bathroom:
                .iconbathroom
        case .furniture:
                .iconFurniture
        case .stainRemover:
                .iconstain
        }
    }
    
    var color: Color {
        switch self {
        case .carpet: .orange
        case .safa: .yellow
        case .plumbing: .pink
        case .window: .blue
        case .kitchen: .kitchen
        case .bathroom: .pinkHight
        case .furniture: .furniture
        case .stainRemover: .red
        }
    }
    
    var text: String {
        switch self {
            
        case .carpet:
            "Carpet cleaning service involves professional treatment of carpets to remove dirt, stains, dust, and allergens. Depending on the type of carpet, different methods may be used such as dry cleaning, shampooing, or steam cleaning. Specialized products and equipment are utilized to maintain the quality and appearance of the carpet while extending its lifespan. "
        case .safa:
            "Sofa cleaning service includes professional treatment of upholstery to eliminate dirt, stains, odors, and allergens. Various techniques like dry cleaning, shampooing, or steam cleaning can be employed based on the fabric type. Specialized solutions and tools ensure thorough cleaning without damaging the material, helping to restore and prolong the sofa's freshness and appearance."
        case .plumbing:
            "Sanitary cleaning service involves professional cleaning and disinfection of bathroom fixtures such as sinks, toilets, bathtubs, and showers. The process removes limescale, soap scum, mold, and other buildups, ensuring hygiene and extending the life of sanitary ware. Specialized tools and eco-friendly cleaning agents are often used for effective results."
        case .window:
            "Window cleaning service provides professional washing and polishing of both interior and exterior windows, including frames and sills. This ensures clear visibility, enhances curb appeal, and prolongs the lifespan of window surfaces by removing dirt, grime, and streaks. Specialized equipment and safe cleaning solutions are used to achieve optimal results. "
        case .kitchen:
            "Kitchen cleaning service encompasses deep cleaning of all kitchen areas, including countertops, cabinets, appliances, floors, and backsplashes. It involves removing grease, food residues, and stains, as well as sanitizing surfaces to maintain a hygienic environment. Special attention is given to hard-to-reach places and detailed cleaning of cooktops, ovens, and refrigerators."
        case .bathroom:
            "Bathroom cleaning service includes thorough cleaning and disinfecting of all bathroom surfaces, fixtures, and fittings. This encompasses scrubbing tiles, shower doors, tubs, sinks, toilets, and mirrors, as well as removing soap scum, mildew, and limescale. The goal is to create a clean, hygienic, and refreshed bathroom environment using specialized tools and safe cleaning products."
        case .furniture:
            "Furniture cleaning service offers professional care for various types of furniture, including sofas, chairs, tables, and more. The process involves removing dirt, stains, and allergens from upholstery and surfaces, restoring their original appearance and extending their lifespan. Different techniques and specialized products are used depending on the material, ensuring gentle yet effective cleaning."
        case .stainRemover:
            "Spot removal service focuses on targeted treatment of specific stains on carpets, upholstery, clothing, or other textiles. Professionals use specialized stain removers and techniques tailored to the type of stain and fabric, aiming to lift and eliminate spots without damaging the material. This service helps restore items to their pristine condition quickly and effectively."
        }
    }
    
    var image: [ImageResource] {
        switch self {
            
        case .carpet:
            return [.imageCarpet1, .imageCarpet2, .imageCarpet3]
        case .safa:
            return [.imageSofa1, .imageSofa2, .imageSofa3]
        case .plumbing:
            return [.imagePlamping3, .imagePlumbing2, .imagePlumbing1]
        case .window:
            return [.imageWindow1, .imageWindow2, .imageWindow3]
        case .kitchen:
            return [.imageKitchen1, .imageKitchen2, .imageKitchen3]
        case .bathroom:
            return [.imageBathroom, .imageBathroom2, .imageBathroom3]
        case .furniture:
            return [.imagefurniture, .imageFurniture2, .imageFurniture3]
        case .stainRemover:
            return [.imageStain, .imageStain2, .imageStain3]
        }
        
        
    }
    var name: String {
        switch self {
            
        case .carpet:
            return "Carpet cleaning"
        case .safa:
            return "Sofa cleaning"
        case .plumbing:
            return "Plumbing cleaning"
        case .window:
            return "Window cleaning"
        case .kitchen:
            return  "Kitchen cleaning"
        case .bathroom:
            return "Bathroom cleaning"
        case .furniture:
            return "Cleaning furnooture"
        case .stainRemover:
            return "Stain remover"
        }
    }
}
