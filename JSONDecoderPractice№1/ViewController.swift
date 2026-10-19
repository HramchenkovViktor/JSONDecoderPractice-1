//
//  ViewController.swift
//  JSONDecoderPractice№1
//
//  Created by Виктор on 19.10.2026.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        decodeCar()
    }

    private func decodeCar() {
        let json = """
    {
        "cars": [
            {
                "name": "Toyota Supra",
                "year": 2022
            },
            {
                "name": "Ford Mustang",
                "year": 2023
            },
            {
                "name": "Nissan GT-R",
                "year": 2021
            }
        ]
    }
    """

        let data = Data(json.utf8)
        let decoder = JSONDecoder()

        do {
            let response = try decoder.decode(CarResponse.self, from: data)

            for car in response.cars {
                print("Автомобиль: \(car.name), год: \(car.year)")
            }
        } catch {
            print("Ошибка декодирования: \(error)")
        }
    }
}

