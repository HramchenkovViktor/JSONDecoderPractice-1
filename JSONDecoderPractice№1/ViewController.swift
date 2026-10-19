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
            "name": "Toyota Supra",
            "year": 2022
        }
        """

        let data = Data(json.utf8)
        let decoder = JSONDecoder()

        do {
            let car = try decoder.decode(Car.self, from: data)

            print("Автомобиль: \(car.name)")
            print("Год выпуска: \(car.year)")
        } catch {
            print("Ошибка декодирования: \(error)")
        }
    }
}

