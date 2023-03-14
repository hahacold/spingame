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
    Table(value: 0, color: .white ,ismoney: 0),
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
    @State private var pretables: [Table] = []
        
        init() {
            pretables = tables
        }
    @State private var chips=[
    Chip(value: 0, color: .gray),
    Chip(value: 1, color: .gray),
    Chip(value: 10, color: .white),
    Chip(value: 100, color: .blue),
    Chip(value: 500, color: .orange)
    ]
    var to46Set = Set([3,6,9,12,15,18,21,24,27,30,33,36])
    var to47Set = Set([2,5,8,11,14,17,20,23,26,29,32,35])
    var to48Set = Set([1,4,7,10,13,16,19,22,25,28,31,34])
    @State private var balance:   Int = 100//10000
    @State private var betChose = Chip(value: 0, color: .gray)
    @State private var tabChose = 0;
    @State private var bettime = 0;
    @State private var gameover = 0;
    @State var  randSpin = -1;
    @State var  startBet = 0;
    @State private var prebetChose = Chip(value: 0, color: .gray)
    @State var  waiting=0;
    
    func clear(){
        
        for i in (1...50){
            tables[i].ismoney=0;
        }
        bettime=0
        randSpin = -1
        betChose = Chip(value: 0, color: .gray)
    }
    func bettimecount(){
        var c=0
        for i in (1...50){
            c+=tables[i].ismoney
        }
        bettime=c
        
    }
    func countStart(){
        var wintime=0;
 
        ////
        for i in 1...36{
            if(tables[i].ismoney>0){
                if(i==randSpin){
                    wintime += 35
                }
                else{
                    wintime -= 1
                }
            }
        }
        if(tables[37].ismoney>0){
            if randSpin == 37{
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[38].ismoney>0){
            if randSpin == 0{
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[39].ismoney>0){
            if to46Set.contains(randSpin){
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[40].ismoney>0){
            if to47Set.contains(randSpin){
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[41].ismoney>0){
            if to48Set.contains(randSpin){
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[42].ismoney>0){
            if randSpin >= 1 && randSpin <= 12{
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[43].ismoney>0){
            if randSpin >= 13 && randSpin <= 24{
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[44].ismoney>0){
            if randSpin >= 25 && randSpin <= 36{
                wintime += 2
            }
            else{
                wintime -= 1
            }
        }
        if(tables[45].ismoney>0){
            if randSpin >= 1 && randSpin <= 18{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        if(tables[46].ismoney>0){
            if randSpin%2==0{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        if(tables[47].ismoney>0){
            if tables[randSpin].color == .black{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        if(tables[48].ismoney>0){
            if tables[randSpin].color == .red{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        if(tables[49].ismoney>0){
            if randSpin%2==1{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        if(tables[50].ismoney>0){
            if randSpin >= 19 && randSpin <= 36{
                wintime += 1
            }
            else{
                wintime -= 1
            }
        }
        
        
        
//        else if tabChose == 50{
//            if randSpin >= 19 && randSpin <= 36{
//                balance+=betChose.value
//                win = 1
//            }
//        }
        balance+=betChose.value*(wintime)

        if(balance<=0){
            gameover=1;
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
                                        if betChose.value>0{
                                            tables[37].ismoney=1;
                                            bettimecount()
                                        }
                                    }
                                if tables[37].ismoney==1 && betChose.value>0 {
                                    Image(systemName:"circle.fill")
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
                                        if betChose.value>0{
                                            tables[38].ismoney=1;
                                            bettimecount()
                                        }
                                    }
                                if tables[38].ismoney==1 && betChose.value>0 {
                                    Image(systemName:"circle.fill")
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
                        
                        ForEach(0..<12){index in//0..<12
                            VStack(spacing: 0){
                                ForEach(0..<3){jdex in
                                    let now=tables[index*3+3-jdex]
                                    ZStack(){
                                        
                                        Text("\(now.value)")
                                            .fixedSize()
                                            .foregroundColor(.white)
                                            .frame(width: CGFloat(howBig), height: CGFloat(howBig))
                                            .background(now.color)
                                            .border(Color.black, width: 2)
                                            .onTapGesture {
                                                if betChose.value>0{
                                                    tables[index*3+3-jdex].ismoney=1;
                                                    bettimecount()
                                                }
                                            }
                                            
                                        if tables[index*3+3-jdex].ismoney==1 && betChose.value>0 {
                                            Image(systemName:"circle.fill")
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
                                            if betChose.value>0{
                                                tables[39+i].ismoney=1;
                                                bettimecount()
                                            }
                                        }
                                    if tables[39+i].ismoney==1 && betChose.value>0 {
                                        Image(systemName:"circle.fill")
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
                                        if betChose.value>0{
                                            tables[41+i].ismoney=1;
                                            bettimecount()
                                        }
                                    }
                                if tables[41+i].ismoney==1 && betChose.value>0 {
                                    Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[45].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[45].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[46].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[46].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[47].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[47].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[48].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[48].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[49].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[49].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                    if betChose.value>0{
                                        tables[50].ismoney=1;
                                        bettimecount()
                                    }
                                }
                            if tables[50].ismoney==1 && betChose.value>0 {
                                Image(systemName:"circle.fill")
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
                                Text("你有的錢錢:\(balance)")
                                    .fixedSize()
                                    .foregroundColor(.black)
                                    .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                                    .onTapGesture {
                                        
                                    }
                                Text("Total Bet:\(bettime*betChose.value)")
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
                                        balance=10000
                                        clear()
                                        randSpin = -1
                                        startBet=0;
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
                                VStack{
                                    if(startBet > 0){
                                        Text("rebet")
                                            .fixedSize()
                                            .foregroundColor(.black)
                                            .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                            .background(Color.yellow)
                                            .cornerRadius(100)
                                            .onTapGesture {
                                                betChose=prebetChose
                                                tables=pretables
                                                var c=0;
                                                for i in 1...50{
                                                    c+=tables[i].ismoney
                                                }
                                                bettime=c
                                                
                                                
                                            }
                                    }
                                    if(waiting==0){
                                        if(balance-bettime*betChose.value>=0){
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
                                                        pretables=tables
                                                        startBet=1
                                                        prebetChose=betChose
                                                        waiting=1;
                                                        
                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                                            clear()
                                                            waiting=0
                                                        }
                                                        
                                                    }
                                                    
                                    
                                                    
                                                }
                                        }
                                        else{
                                            Text("⬅︎錢不夠喔")
                                                .fixedSize()
                                                .foregroundColor(.black)
                                                .frame(width: CGFloat(2*howBig), height: CGFloat(howBig))
                                                .background(Color.green)
                                                .cornerRadius(100)
                                                .onTapGesture {
                                                    
                                                }
                                        }
                                    }
                                    else{
                                        Text("3秒查看結果")
                                            .fixedSize()
                                            .foregroundColor(.black)
                                            .frame(width: CGFloat(3*howBig), height: CGFloat(howBig))
                                            .background(Color.green)
                                            .cornerRadius(100)
                                            
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
                                Image(systemName:"circle.fill")
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
                if gameover==1{
                    Text("GameOver👎👎 TapToRestart")
                        .fixedSize()
                        .foregroundColor(.white)
                        .frame(width: CGFloat(10*howBig), height: CGFloat(4*howBig))
                        .background(Color.green)
                        .border(Color.black, width: 2)
                        .border(Color.black, width: 2)
                        .onTapGesture {
                            balance=10000
                            clear()
                            randSpin = -1
                            startBet=0;
                            gameover=0
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
