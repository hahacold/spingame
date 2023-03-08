//
//  ContentView.swift
//  gamble
//
//  Created by User19 on 2023/3/8.
//

import SwiftUI
struct Table{
    var value: Int
    var color: Color
    var ismoney: Int
}
struct ContentView: View {
    @State private var tables = [
    Table(value: 1, color: .red ,ismoney: 0),
    Table(value: 2, color: .red ,ismoney: 0),
    Table(value: 3, color: .red ,ismoney: 0),
    Table(value: 4, color: .red ,ismoney: 0),
    Table(value: 5, color: .red ,ismoney: 0),
    Table(value: 6, color: .red ,ismoney: 0),
    Table(value: 7, color: .red ,ismoney: 0),
    Table(value: 8, color: .red ,ismoney: 0),
    Table(value: 9, color: .red ,ismoney: 0),
    Table(value: 10, color: .red ,ismoney: 0),
    Table(value: 11, color: .red ,ismoney: 0),
    Table(value: 12, color: .red ,ismoney: 0),
    Table(value: 13, color: .red ,ismoney: 0),

    ]
    
        var body: some View {
            VStack{
//                ForEach(0..<tables.count){index in
//                    if index % 3 == 0{
//                        HStack{
//                            Text("\(tables[index].value)")
//                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .onTapGesture {
//
//                                }
//                        }
//
//                    }
//
//                }
                ForEach(0..<12){index in
                    HStack{
                        ForEach(0..<3){jndex in
                                Text("\(tables[index*3+jndex].value)")
                                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .onTapGesture {
                                        
                                    }
                        }
                    }
                    
                }

            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
