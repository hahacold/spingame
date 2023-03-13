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
    Table(value: 2, color: .black ,ismoney: 0),
    Table(value: 3, color: .red ,ismoney: 0),
    Table(value: 4, color: .black ,ismoney: 0),
    Table(value: 5, color: .red ,ismoney: 0),
    Table(value: 6, color: .black ,ismoney: 0),
    Table(value: 7, color: .red ,ismoney: 0),
    Table(value: 8, color: .black ,ismoney: 0),
    Table(value: 9, color: .red ,ismoney: 0),
    Table(value: 10, color: .black ,ismoney: 0),
    Table(value: 11, color: .black ,ismoney: 0),
    Table(value: 12, color: .red ,ismoney: 0),
    Table(value: 13, color: .black ,ismoney: 0),
    Table(value: 14, color: .red ,ismoney: 0),
    Table(value: 15, color: .black ,ismoney: 0),
    Table(value: 16, color: .red ,ismoney: 0),
    Table(value: 17, color: .black ,ismoney: 0),
    Table(value: 18, color: .red ,ismoney: 0),
    Table(value: 19, color: .red ,ismoney: 0),
    Table(value: 20, color: .black ,ismoney: 0),
    Table(value: 21, color: .red ,ismoney: 0),
    Table(value: 22, color: .black ,ismoney: 0),
    Table(value: 23, color: .red ,ismoney: 0),
    Table(value: 24, color: .black ,ismoney: 0),
    Table(value: 25, color: .red ,ismoney: 0),
    Table(value: 26, color: .black ,ismoney: 0),
    Table(value: 27, color: .red ,ismoney: 0),
    Table(value: 28, color: .black ,ismoney: 0),
    Table(value: 29, color: .black ,ismoney: 0),
    Table(value: 30, color: .red ,ismoney: 0),
    Table(value: 31, color: .black ,ismoney: 0),
    Table(value: 32, color: .red ,ismoney: 0),
    Table(value: 33, color: .black ,ismoney: 0),
    Table(value: 34, color: .red ,ismoney: 0),
    Table(value: 35, color: .black ,ismoney: 0),
    Table(value: 36, color: .red ,ismoney: 0),
    ]
    @State private var betAmount: Int = 0
    @State private var balance:   Int = 100000
        var body: some View {
            let howBig = 45
            VStack{
                HStack(spacing: 0){
                    VStack{
                        Text("00")
                            .fixedSize()
                            .font(.footnote)
                            .foregroundColor(.white)
                            .frame(width: CGFloat(howBig), height: 2*CGFloat(howBig))
                            .background(Color.yellow)
                            .onTapGesture {
                                
                            }
                        Text("0")
                            .fixedSize()
                            .font(.footnote)
                            .foregroundColor(.white)
                            .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                            .background(Color.yellow)
                            .onTapGesture {
                                
                            }
                    }
                    
                    ForEach(0..<12){index in
                        VStack(spacing: 0){
                            ForEach(0..<3){jdex in
                                let now=tables[index*3+2-jdex]
                                ZStack{
                                    if(now.ismoney){
                                        Image(systemName:"bitcoinsign.circle")
                                            .scaledToFit()
                                    }
                                    Text("\(now.value)")
                                        .fixedSize()
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                        .background(now.color)
                                        .onTapGesture {
                                            
                                        }
                                    
                                }
                                
                            }
                        }
                    }
                    VStack{
                        ForEach(0..<3){ i in
                            Text("2to1")
                                .fixedSize()
                                .font(.footnote)
                                .foregroundColor(.white)
                                .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                .background(Color.yellow)
                                .onTapGesture {
                                    
                                }
                        }
                        
                    }
                    
                }
                
                HStack(spacing: 0){
                    ForEach(1..<4){ i in
                        Text("\(i)st 12")
                            .fixedSize()
                            .font(.footnote)
                            .foregroundColor(.white)
                            .frame(width: CGFloat(4*howBig), height: CGFloat(howBig))
                            .background(Color.yellow)
                            .onTapGesture {
                                
                            }
                    }
                }
                    
                
                HStack(spacing: 0){
                    
                    Text("1 - 18")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.yellow)
                        .onTapGesture {
                            
                        }
                    Text("Even")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.yellow)
                        .onTapGesture {
                            
                        }
                    Text("red")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.black)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.red)
                        .clipShape(Rectangle())
                        .onTapGesture {
                            
                        }
                    Text("black")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.black)
                        .clipShape(Rectangle())
                        .onTapGesture {
                            
                        }
                    Text("Odd")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.yellow)
                        
                        .onTapGesture {
                            
                        }
                    Text("19 - 36")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.white)
                        .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                        .background(Color.yellow)
                        .onTapGesture {
                            
                        }
                    
                }
                HStack(){
                    Text("你有的錢錢:\(balance)")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.black)
                        .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                        .onTapGesture {
                            
                        }
                    Text("你下注的金額:\(betAmount)")
                        .fixedSize()
                        .font(.footnote)
                        .foregroundColor(.black)
                        .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                        .onTapGesture {
                            
                        }
                }
                
            }
            
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 852, height: 393))
    }
}
