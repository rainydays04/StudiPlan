//
//  studyTimer.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

struct studyTimer: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 250
    @State var reservationDate = Date()
    @State private var learnMore: String = ""
    @State private var clickCount: Int = 0

    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 241/255, green: 239/255, blue: 231/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Study Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                    Text("Move the slider to set your desired work time.")         .multilineTextAlignment(.center)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.bottom, 25)
                    
                    Text("\(vm.time)")
                        .font(.system(size: 70, weight: .medium, design: .rounded))
                        .alert("Timer done, feel free to take a 5 minute break now!", isPresented: $vm.showingAlert) {
                            Button("Continue", role: .cancel) {
                                // Code
                            }
                        }
                        .padding()
                        .frame(width: width)
                        .background(.thinMaterial)
                        .cornerRadius(20)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(red: 153/255.0, green: 51/255.0, blue: 255/255.0), lineWidth: 6)
                            )
                        .padding(.top, 5)
                    
                    Slider(value: $vm.minutes, in: 1...25, step: 1)
                        .padding()
                        .disabled(vm.isActive)
                        .animation(.easeInOut, value: vm.minutes)
                        .frame(width: width)
                        .accentColor(Color(red: 153/255.0, green: 51/255.0, blue: 255/255.0))


                    HStack(spacing:50) {
                        Button("Start") {
                            vm.start(minutes: vm.minutes)
                        }
                        .disabled(vm.isActive)
                        
                        Button("Reset", action: vm.reset)
                            .tint(.red)
                    }
                
                
                    
                    
    
                        
                    
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 153/255.0, green: 51/255.0, blue: 255/255.0))
                    .cornerRadius(8)
                    .padding()

                }
                .onReceive(timer) { _ in
                    vm.updateCountdown()
                }
            }
        }
    }
}


struct studyTimer_Previews: PreviewProvider {
    static var previews: some View {
        studyTimer()
    }
}
 
