//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Anish Hazra on 15/02/25.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Red Fort",
            cityName: "Central Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.6562, longitude: 77.2410),
            description: "Red Fort is a historic fort in the heart of Old Delhi, India. Built by Mughal Emperor Shah Jahan in 1648, it served as the main residence of the Mughal emperors for nearly 200 years. The fort is renowned for its stunning red sandstone architecture, intricate carvings, and expansive courtyards. A UNESCO World Heritage Site, it houses significant structures like the Diwan-i-Aam, Diwan-i-Khas, and the iconic Lahori Gate. Today, the Red Fort stands as a symbol of India’s rich history and hosts the annual Independence Day celebrations.",
            imageNames: [
                "Red_Fort_1",
                "Red_Fort_2",
                "Red_Fort_3",
                "Red_Fort_4",
            ],
            link: "https://en.wikipedia.org/wiki/Red_Fort"),
        Location(
            name: "Jama Masjid",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.6507, longitude: 77.2334),
            description:
            "Jama Masjid, located in Old Delhi, India, is one of the largest and most magnificent mosques in the country. Built by Mughal Emperor Shah Jahan in 1656, the mosque showcases stunning Mughal architecture with red sandstone and white marble domes. It can accommodate over 25,000 worshippers at a time. The mosque’s towering minarets offer breathtaking panoramic views of Old Delhi. A symbol of cultural heritage and spiritual significance, Jama Masjid remains a must-visit landmark for history and architecture enthusiasts.",
            imageNames: [
                "Jama_Masjid_1",
                "Jama_Masjid_2",
                "Jama_Masjid_3",
                "Jama_Masjid_4",
            ],
            link: "https://en.wikipedia.org/wiki/Jama_Masjid,_Delhi"),
        Location(
            name: "India Gate",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.6129, longitude: 77.2295),
            description: "India Gate is a war memorial located in the heart of New Delhi, India. It was built to honor the soldiers of the British Indian Army who lost their lives in World War I and the Third Anglo-Afghan War. Designed by Sir Edwin Lutyens, the 42-meter-tall monument resembles the Arc de Triomphe in Paris and stands as a symbol of bravery and sacrifice. The structure is surrounded by lush lawns, making it a popular spot for tourists and locals alike.",
            imageNames: [
                "India_Gate_1",
                "India_Gate_2",
                "India_Gate_3",
                "India_Gate_4",
            ],
            link: "https://en.wikipedia.org/wiki/India_Gate"),
        Location(
            name: "Akshardham Temple",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.6127, longitude: 77.2773),
            description:
            "Akshardham Temple, located in Delhi, India, is a breathtaking Hindu temple complex dedicated to Bhagwan Swaminarayan. Inaugurated in 2005, it showcases intricate carvings, grand sculptures, and traditional Indian architecture. The temple features a massive central monument built without steel, a mesmerizing musical fountain, and the Sahaj Anand water show. The complex also includes exhibitions on Indian culture, spiritual values, and an IMAX-style theatre. As one of the largest Hindu temples in the world, Akshardham Temple offers a divine and cultural experience for visitors.",
            imageNames: [
                "Akshardham_Temple_1",
                "Akshardham_Temple_2",
                "Akshardham_Temple_3",
                "Akshardham_Temple_4",
            ],
            link: "https://en.wikipedia.org/wiki/Akshardham_(Delhi)"),
        Location(
            name: "Humayun’s Tomb",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.5933, longitude: 77.2507),
            description:
            "Humayun’s Tomb, located in Delhi, India, is a UNESCO World Heritage Site and a masterpiece of Mughal architecture. Built in 1570 by Empress Bega Begum in memory of Emperor Humayun, it was the first garden tomb in India and later inspired the design of the Taj Mahal. The structure features Persian and Indian architectural influences, with red sandstone facades, intricate marble inlays, and lush gardens. As one of Delhi’s most iconic historical monuments, Humayun’s Tomb offers visitors a glimpse into India’s rich cultural heritage.",
            imageNames: [
                "Humayun’s_Tomb_1",
                "Humayun’s_Tomb_2",
                "Humayun’s_Tomb_3",
                "Humayun’s_Tomb_4",
            ],
            link: "https://en.wikipedia.org/wiki/Humayun%27s_Tomb"),
        Location(
            name: "Lotus Temple",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.5535, longitude: 77.2588),
            description: "The Lotus Temple, located in New Delhi, India, is a Bahá'í House of Worship known for its stunning lotus-shaped architecture. Completed in 1986, it is open to people of all religions, promoting unity, peace, and meditation. The temple is surrounded by lush gardens and nine reflecting pools, enhancing its serene atmosphere. As one of the most visited landmarks in the world, the Lotus Temple stands as an architectural marvel and a spiritual haven for visitors seeking tranquility.",
            imageNames: [
                "Lotus_Temple_1",
                "Lotus_Temple_2",
                "Lotus_Temple_3",
                "Lotus_Temple_4",
            ],
            link: "https://en.wikipedia.org/wiki/Lotus_Temple"),
        Location(
            name: "Qutub Minar",
            cityName: "New Delhi",
            coordinates: CLLocationCoordinate2D(latitude: 28.5245, longitude: 77.1855),
            description: "Qutub Minar, located in Delhi, India, is a UNESCO World Heritage Site and the tallest brick minaret in the world, standing at 72.5 meters (237.8 feet). Built in 1193 by Qutb-ud-din Aibak, the minaret is an exquisite example of Indo-Islamic architecture, adorned with intricate carvings and verses from the Quran. The complex also houses the famous Iron Pillar, which has remained rust-free for centuries. Qutub Minar is a must-visit historical landmark, offering a glimpse into Delhi’s rich past.",
            imageNames: [
                "Qutub_Minar_1",
                "Qutub_Minar_2",
                "Qutub_Minar_3",
                "Qutub_Minar_4",
            ],
            link: "https://en.wikipedia.org/wiki/Qutb_Minar"),
    ]
    
}
