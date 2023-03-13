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
struct Chip{
    var value: Int
    var color: Color
}
struct ContentView: View {
    @State private var tables = [
    Table(value: 1, color: .red ,ismoney: 0),
    Table(value: 2, color: .black ,ismoney: 0),
    Table(value: 3, color: .red ,ismoney: 0),
    Table(value: 4, color: .black ,ismoney: 0),
    Table(value: 5, color: .red ,ismoney: 0),
    Table(value: 6, color: .black ,ismoney: 1),
    Table(value: 7, color: .red ,ismoney: 0),
    Table(value: 8, color: .black ,ismoney: 0),
    Table(value: 9, color: .red ,ismoney: 0),
    Table(value: 10, color: .black ,ismoney: 0),
    Table(value: 11, color: .black ,ismoney: 1),
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
    Table(value: 33, color: .black ,ismoney: 1),
    Table(value: 34, color: .red ,ismoney: 0),
    Table(value: 35, color: .black ,ismoney: 0),
    Table(value: 36, color: .red ,ismoney: 0),
    ]
    @State private var chips=[
    Chip(value: 0, color: .gray),
    Chip(value: 1, color: .gray),
    Chip(value: 5, color: .white),
    Chip(value: 10, color: .blue),
    Chip(value: 50, color: .orange)
    ]
    
    @State private var balance:   Int = 1000
    @State private var betChose = Chip(value: 0, color: .gray)
    @State private var tabChose = 0;
        var body: some View {
            let howBig = 45
            ZStack {
                        Color.purple
                            .ignoresSafeArea()
                        
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        VStack{
                            Text("00")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(howBig), height: 2*CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    
                                }
                            Text("0")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    
                                }
                        }
                        
                        ForEach(0..<12){index in
                            VStack(spacing: 0){
                                ForEach(0..<3){jdex in
                                    var now=tables[index*3+2-jdex]
                                    ZStack(){
                                        
                                        Text("\(now.value)")
                                            .fixedSize()
                                            .foregroundColor(.white)
                                            .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                            .background(now.color)
                                            .border(Color.black, width: 2)
                                            .onTapGesture {
                                                tabChose=now.value;
                                            }
                                            
                                        if tabChose == now.value {
                                            Image(systemName:"circle")
                                                .resizable()
                                                .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                                
                                                .scaledToFit()
                                                .foregroundColor(betChose.color)
                                            Text("\(betChose.value)")
                                                .font(.title2)
                                                .foregroundColor(.yellow)
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                        VStack{
                            ForEach(0..<3){ i in
                                Text("2to1")
                                    .fixedSize()
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                    .background(Color.green)
                                    .border(Color.black, width: 2)
                                    .onTapGesture {
                                        
                                    }
                            }
                            
                        }
                        
                    }
                    
                    HStack(spacing: 0){
                        ForEach(1..<4){ i in
                            Text("\(i)st 12")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(4*howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    
                                }
                        }
                    }
                        
                    
                    HStack(spacing: 0){
                        
                        Text("1 - 18")
                            .fixedSize()
                            .foregroundColor(.white)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.green)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                                
                            }
                        Text("Even")
                            .fixedSize()
                            .foregroundColor(.white)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.green)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                        
                            }
                        Text("red")
                            .fixedSize()
                            .foregroundColor(.black)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.red)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                                
                            }
                        Text("black")
                            .fixedSize()
                            .foregroundColor(.white)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.black)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                                
                            }
                        Text("Odd")
                            .fixedSize()
                            .font(.footnote)
                            .foregroundColor(.white)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.green)
                            .border(Color.black, width: 2)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                                
                            }
                        Text("19 - 36")
                            .fixedSize()
                            .foregroundColor(.white)
                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                            .background(Color.green)
                            .border(Color.black, width: 2)
                            .border(Color.black, width: 2)
                            .onTapGesture {
                                
                            }
                        
                    }
                    
                    HStack(){
                        VStack{
                            HStack{
                                Text("你有的錢錢:\(balance)")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                    .onTapGesture {
                                        
                                    }
                                Text("你下注的金額:\(betChose.value)")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                    .onTapGesture {
                                        
                                    }
                                
                            }
                            HStack{
                                Text("restart")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                    .background(Color.red)
                                    .cornerRadius(100)
                                    .onTapGesture {
                                        
                                    }
                                Text("red")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                    .background(Color.red)
                                    .cornerRadius(100)
                                    .onTapGesture {
                                        
                                    }
                                Text("Spin")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                    .background(Color.green)
                                    .cornerRadius(100)
                                    .onTapGesture {
                                        
                                    }
                                
                            }
                            
                        }
                        ForEach(1..<5){ i in
                            ZStack{
                                Image(systemName:"circle")
                                    .resizable()
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(2*howBig))
                                    
                                    .scaledToFit()
                                    .foregroundColor(chips[i].color)
                                    .onTapGesture {
                                        betChose=chips[i]
                                    }
                                Text("\(chips[i].value)")
                                    .font(.title3)
                                    .foregroundColor(.yellow)
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
            .previewLayout(.fixed(width: 852, height: 393))
    }
}
