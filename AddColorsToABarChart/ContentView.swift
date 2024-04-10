//
//  ContentView.swift
//  AddColorsToABarChart
//
//  Created by Sandra Gomez on 4/9/24.
//

import SwiftUI
import Charts

struct SalesPerson: Identifiable {
    var name: String
    var region: String
    var sales: Int
    var id = UUID()
}

var mySalesArray: [SalesPerson] = [
    .init(name: "Oscar", region: "North", sales: 50),
    .init(name: "Mayer", region: "South", sales: 43),
    .init(name: "George", region: "East", sales: 62),
    .init(name: "Hormel", region: "West", sales: 26),
    .init(name: "Mike", region: "North", sales: 67),
    .init(name: "Link", region: "South", sales: 38),
    .init(name: "Jan", region: "East", sales: 47),
    .init(name: "Saus", region: "West", sales: 53)
]


struct ContentView: View {
    var body: some View {
        VStack {
            Chart (mySalesArray) { z in
                BarMark(x: .value("Name", z.name),
                        y: .value("Sales", z.sales))
                .foregroundStyle(by: .value("Department", z.region))
            }
        }
    }
}

#Preview {
    ContentView()
}
