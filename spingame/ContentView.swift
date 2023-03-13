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
    Table(value: 37, color: .purple ,ismoney: 0),
    Table(value: 38, color: .purple ,ismoney: 0),
    Table(value: 39, color: .purple ,ismoney: 0),
    Table(value: 40, color: .purple ,ismoney: 0),
    Table(value: 41, color: .purple ,ismoney: 0),
    Table(value: 42, color: .purple ,ismoney: 0),
    Table(value: 43, color: .purple ,ismoney: 0),
    Table(value: 44, color: .purple ,ismoney: 0),
    Table(value: 45, color: .purple ,ismoney: 0),
    Table(value: 46, color: .purple ,ismoney: 0),
    Table(value: 47, color: .purple ,ismoney: 0),
    Table(value: 48, color: .purple ,ismoney: 0),
    Table(value: 49, color: .purple ,ismoney: 0),
    Table(value: 50, color: .purple ,ismoney: 0),
    ]
    @State private var chips=[
    Chip(value: 0, color: .gray),
    Chip(value: 1, color: .gray),
    Chip(value: 5, color: .white),
    Chip(value: 10, color: .blue),
    Chip(value: 50, color: .orange)
    ]
    var to46Set = Set([3,6,9,12,15,18,21,24,27,30,33,36])
    var to47Set = Set([2,5,8,11,14,17,20,23,26,29,32,35])
    var to48Set = Set([1,4,7,10,13,16,19,22,25,28,31,34])
    @State private var balance:   Int = 1000
    @State private var betChose = Chip(value: 0, color: .gray)
    @State private var tabChose = 0;
    @State var  randSpin = -1;
    func clear(){
        tabChose=0
        betChose = Chip(value: 0, color: .gray)
    }
    func countStart(){
        var  win = 0
        if tabChose >= 1 && tabChose <= 36{
            if(tabChose==randSpin){
                balance+=betChose.value*35
                win = 1
            }
        }else if tabChose == 37{
            if randSpin == 37{
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 38{
            if randSpin == 0{
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 39{
            if to46Set.contains(randSpin){
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 40{
            if to47Set.contains(randSpin){
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 41{
            if to48Set.contains(randSpin){
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 42{
            if randSpin >= 1 && randSpin <= 12{
                balance+=betChose.value*2
                win = 1
            }
                
        }
        else if tabChose == 43{
            if randSpin >= 13 && randSpin <= 24{
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 44{
            if randSpin >= 25 && randSpin <= 36{
                balance+=betChose.value*2
                win = 1
            }
        }
        else if tabChose == 45{
            if randSpin >= 1 && randSpin <= 18{
                balance+=betChose.value
                win = 1
            }
        }
        else if tabChose == 46{
            if randSpin%2==0 {
                balance+=betChose.value
                win = 1
            }
        }
        else if tabChose == 47{
            if tables[randSpin].color == .black{
                balance+=betChose.value
                win = 1
            }
        }
        else if tabChose == 48{
            if tables[randSpin].color == .red{
                balance+=betChose.value
                win = 1
            }
        }
        else if tabChose == 49{
            if randSpin%2==1 {
                balance+=betChose.value
                win = 1
            }
        }
        else if tabChose == 50{
            if randSpin >= 19 && randSpin <= 36{
                balance+=betChose.value
                win = 1
            }
        }
        else{
            win=0
            
        }
        if(win==0){
            balance-=betChose.value
        }
        if(balance<=0){
            //gameover()
        }
        
    }
        var body: some View {
            let howBig = 45
            ZStack {
                        Color.purple
                            .ignoresSafeArea()
                        
                VStack(spacing: 0){
                    HStack(spacing: 0){
                        VStack(spacing: 0){
                            ZStack{
                                Text("00")
                                    .fixedSize()
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(howBig), height: 2*CGFloat(howBig))
                                    .background(Color.green)
                                    .border(Color.black, width: 2)
                                    .onTapGesture {
                                        tabChose = 37
                                    }
                                if tabChose == 37 && betChose.value>0 {
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
                            
                            ZStack{
                                Text("0")
                                    .fixedSize()
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                    .background(Color.green)
                                    .border(Color.black, width: 2)
                                    .onTapGesture {
                                        tabChose = 38
                                    }
                                if tabChose == 38 && betChose.value>0 {
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
                                            
                                        if tabChose == now.value && betChose.value>0 {
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
                        VStack(spacing: 0){
                            ForEach(0..<3){ i in
                                ZStack{
                                    Text("2to1")
                                        .fixedSize()
                                        .foregroundColor(.white)
                                        .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                        .background(Color.green)
                                        .border(Color.black, width: 2)
                                        .onTapGesture {
                                            tabChose=39+i
                                        }
                                    if tabChose == 39+i && betChose.value>0 {
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
                    
                    HStack(spacing: 0){
                        ForEach(1..<4){ i in
                            ZStack{
                                Text("\(i)st 12")
                                    .fixedSize()
                                    .foregroundColor(.white)
                                    .frame(width: CGFloat(4*howBig), height: CGFloat(howBig))
                                    .background(Color.green)
                                    .border(Color.black, width: 2)
                                    .onTapGesture {
                                        tabChose = 41+i
                                    }
                                if tabChose == 41+i && betChose.value>0 {
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
                        
                    
                    HStack(spacing: 0){
                        ZStack{
                            Text("1 - 18")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 45
                                }
                            if tabChose == 45 && betChose.value>0 {
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
                        
                        ZStack{
                            Text("Even")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 46
                                }
                            if tabChose == 46 && betChose.value>0 {
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
                        ZStack{
                            Text("red")
                                .fixedSize()
                                .foregroundColor(.black)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.red)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 47
                                }
                            if tabChose == 47 && betChose.value>0 {
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
                        ZStack{
                            Text("black")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.black)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 48
                                }
                            if tabChose == 48 && betChose.value>0 {
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
                        ZStack{
                            Text("Odd")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 49
                                }
                            if tabChose == 49 && betChose.value>0 {
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
                        ZStack{
                            Text("19 - 36")
                                .fixedSize()
                                .foregroundColor(.white)
                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                .background(Color.green)
                                .border(Color.black, width: 2)
                                .border(Color.black, width: 2)
                                .onTapGesture {
                                    tabChose = 50
                                }
                            if tabChose == 50 && betChose.value>0 {
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
                    
                    HStack(){
                        VStack{
                            HStack{
                                Text("你有的錢錢:\(balance)-\(betChose.value)")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                                    .onTapGesture {
                                        
                                    }
                                Text("你輸或贏了:\(balance-1000)")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                                    .onTapGesture {
                                        
                                    }
                                Text("隨機數字來了:")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
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
                                        balance=1000
                                        clear()
                                        randSpin = 0
                                    }
                                Text("clear")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                    .background(Color.yellow)
                                    .cornerRadius(100)
                                    .onTapGesture {
                                        clear();
                                    }
                                Text("Spin")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                    .background(Color.green)
                                    .cornerRadius(100)
                                    .onTapGesture {
                                        if betChose.value>0{
                                            randSpin = .random(in: 0...37)
                                            countStart()
                                            
                                            clear()
                                        }
                                        
                        
                                        
                                    }
                                if(randSpin>=1 && randSpin<=36){
                                    Text("\(randSpin)!!")
                                        .fixedSize()
                                        .foregroundColor(.black)
                                        .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                        .font(.system(size: 60))
                                        .onTapGesture {
                                            
                                        }
                                }
                                else if(randSpin==0){
                                    Text("\(randSpin)!!")
                                        .fixedSize()
                                        .foregroundColor(.black)
                                        .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                        .font(.system(size: 60))
                                        .onTapGesture {
                                            
                                        }
                                }
                                else if(randSpin==37){
                                    Text("00!!")
                                        .fixedSize()
                                        .foregroundColor(.black)
                                        .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                        .font(.system(size: 60))
                                        .onTapGesture {
                                            
                                        }
                                }
                                else{
                                    Text("還沒!!")
                                        .fixedSize()
                                        .foregroundColor(.black)
                                        .frame(width: CGFloat(3*howBig), height: CGFloat(2*howBig))
                                        .font(.system(size: 60))
                                        .onTapGesture {
                                            
                                        }
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
                                if betChose.value == chips[i].value {
                                    Image(systemName:"circle")
                                        .resizable()
                                        .frame(width: CGFloat(2*howBig+15), height: CGFloat(2*howBig+15))
                                        .scaledToFit()
                                        .foregroundColor(.black)
                                    
                                }
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
