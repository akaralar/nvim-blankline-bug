// Created by Ahmet Karalar for WeSplit in 2024
// Using Swift 5.0

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20

    let tipPercentages = [10, 15, 20, 25, 0]

    var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }

    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: currencyCode))
                    .keyboardType(.decimalPad)

                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(2 ..< 100) {
                        Text("\($0) people")
                    }
                }
            }

            Section {
                Text(checkAmount, format: .currency(code: currencyCode)).padding(.zero)
            }
        }
    }
}

#Preview {
    ContentView()
}
