//
//  ContentView.swift
//  Workouts
//
//  Created by Vardhan Chopada on 11/20/23.
//
import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var jsonData: HomepageResponse?
    @State private var opacity: Double = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ZStack() {
                    Group {
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Good Morning 🔥")
                                .font(Font.custom("Poppins", size: 12).weight(.medium))
                                .foregroundColor(.white)
                            Text("Daisy")
                                .font(Font.custom("Poppins", size: 14).weight(.medium))
                                .foregroundColor(.white)
                        }
                        .offset(x: -120, y: -477)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 15.09, height: 15)
                                .offset(x: 140.36, y: 0.50)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 328, height: 36)
                                .background(.white)
                                .cornerRadius(15)
                                .offset(x: 0, y: 0)
                            ZStack() {
                                
                            }
                            .frame(width: 17, height: 17)
                            .offset(x: -145.50, y: 1.50)
                            HStack{
                                Ellipse()
                                    .foregroundColor(.clear)
                                    .frame(width: 6, height: 2)
                                    .background(Image(systemName: "magnifyingglass"))
                                    .offset(x: -90, y: 0)
                                Text("Search Excercise")
                                    .font(Font.custom("Poppins", size: 12).weight(.light))
                                    .foregroundColor(.black)
                                    .offset(x: -84.66, y: -1)
                            }
                        }
                        .frame(width: 328, height: 36)
                        .offset(x: 0, y: -432)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 30, height: 30)
                            .background(
                                Image("Ellipse")
                            )
                            .offset(x: 131, y: -478)
                            .shadow(
                                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 4, y: 4
                            )
                        
                        if let data = jsonData {
                            Text("\(data.data.section_1.plan_name)")
                                .font(Font.custom("Poppins", size: 12).weight(.medium))
                                .foregroundColor(.white)
                                .offset(x: -50.50, y: -384)
                                    } else {
                                        Text("Loading...")
                                            .onAppear {
                                                fetchData()
                                            }
                                    }
                            
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 306, height: 47)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.45, green: 0.61, blue: 0.80).opacity(0.69), Color(red: 0.49, green: 0.90, blue: 0.51).opacity(0.84)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(10)
                            .offset(x: 0, y: 10.50)
                        ZStack() {
                            Group {
                                Text("Enhance your journey with AI tracker")
                                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                                    .offset(x: -50, y: -70)
                                    .foregroundColor(.white)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 306, height: 115)
                                    .background(
                                        LinearGradient(gradient: Gradient(colors: [Color(red: 0.28, green: 0.76, blue: 0.86).opacity(0.86), Color(red: 0.80, green: 0.78, blue: 0.11).opacity(0.84)]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .cornerRadius(10)
                                
                                Text("Accuracy")
                                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                                    .foregroundColor(.white)
                                    .offset(x: -60, y: -20)
                                Text("Workout Duration")
                                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                                    .foregroundColor(.white)
                                    .offset(x: 50, y: -20)
                                ZStack() {
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 35.65, height: 35)
                                        .background(
                                        Image("Calories"))
                                        .offset(x: 125, y: 31)
                                        .shadow(
                                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 2, x: 2, y: 2
                                        )
                                    ZStack() {
                                        
                                    }
                                    .frame(width: 30.55, height: 30)
                                    .offset(x: 2.55, y: -0.50)
                                }
                                .frame(width: 35.65, height: 35)
                                ZStack() {
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 35.65, height: 35)
                                        .background(Image("Reps"))
                                        .background(Image("EllipeCom").offset(x: 2, y: 3))
                                        .offset(x: -110, y: 27)
                                    
                                        .shadow(
                                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 2, x: 2, y: 2
                                        )
                                }
                                .frame(width: 35.65, height: 35)
                                if let data = jsonData {
                                    Text("\(data.data.section_2.accuracy)")
                                        .font(Font.custom("Poppins", size: 12))
                                        .offset(x: -60, y: -6)
                                        .foregroundColor(.white)
                                            } else {
                                                Text("...")
                                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                    .foregroundColor(.white)
                                                    .onAppear {
                                                        fetchData()
                                                    }
                                            }
                                if let data = jsonData {
                                    Text("\(data.data.section_2.workout_duration)")
                                        .font(Font.custom("Poppins", size: 12))
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: -6)
                                            } else {
                                                Text("...")
                                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                    .foregroundColor(.white)
                                                    .onAppear {
                                                        fetchData()
                                                    }
                                            }
                          
                                   
                                Text("Reps")
                                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                                    .foregroundColor(.white)
                                    .offset(x: -60, y: 20)
                                Text("Calories Burn")
                                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                                    .foregroundColor(.white)
                                    .offset(x: 60, y: 20)
                            }
                            Group {
                                ZStack() {
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 35.65, height: 35)
                                        .background(Image("Duration"))
                                        .offset(x: 125, y: -10)
                                        .shadow(
                                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 2, x: 2, y: 2
                                        )
                                }
                                .frame(width: 35.65, height: 35)
                                ZStack() {
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 35.65, height: 35)
                                        .background(
                                        Image("Accuracy"))
                                        .background(
                                            Image("EllipeCom")
                                                .offset(x: 0, y: 4))
                                        .offset(x: -110, y: -15)
                                        .shadow(
                                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 2, x: 2, y: 2
                                        )
                                    ZStack() {
                                        ZStack() { }
                                            .frame(width: 22.92, height: 22.53)
                                            .offset(x: -0, y: 0.05)
                                        ZStack() { }
                                            .frame(width: 22.92, height: 22.53)
                                            .offset(x: -0, y: 0.05)
                                    }
                                    .frame(width: 30.55, height: 30)
                                    .offset(x: 0.51, y: -0.50)
                                }
                                .frame(width: 35.65, height: 35)
                                if let data = jsonData {
                                    Text("\(data.data.section_2.reps)")
                                        .font(Font.custom("Poppins", size: 12))
                                        .foregroundColor(.white)
                                        .offset(x: -60, y: 36)
                                            } else {
                                                Text("...")
                                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                    .foregroundColor(.white)
                                                    .onAppear {
                                                        fetchData()
                                                    }
                                            }
                               
                                if let data = jsonData {
                                    Text("\(data.data.section_2.calories_burned)")
                                        .font(Font.custom("Poppins", size: 12))
                                        .foregroundColor(.white)
                                        .offset(x: 60, y: 36)
                                            } else {
                                                Text("...")
                                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                    .foregroundColor(.white)
                                                    .onAppear {
                                                        fetchData()
                                                    }
                                            }
                                   
                                
                                   
                            }
                        }
                        .frame(width: 316, height: 145)
                        .offset(x: -5, y: -85.50)
                        Text("200+ people tracked their fitness")
                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                            .foregroundColor(.white)
                            .offset(x: -10, y: 3.50)
                        Text("Why haven't you joined them yet? TRY NOW ")
                            .font(Font.custom("Poppins", size: 8).weight(.medium))
                            .foregroundColor(.white)
                            .offset(x: -4, y: 16)
                    }
                    Group {
                        Text("Recommended Plan")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(.white)
                            .offset(x: -101.50, y: 70)
                        Text("Categories")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(.white)
                            .offset(x: -130.50, y: 242)
                        
              
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 35, height: 35)
                            .background(Image("Vector"))
                            .background(Image("EllipeCom"))
                            .offset(x: -124.50, y: 10.50)
                            .shadow(
                                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 2, x: 2, y: 3
                            )
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 324, height: 187)
                                .background(
                                    Image("Bg")
                                )
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.black, lineWidth: 0.50)
                                )
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 324, height: 187)
                                .background(Color(red: 0.48, green: 0.97, blue: 0.49).opacity(0.26))
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 83.53, height: 17)
                                    .background(Color(red: 0.69, green: 0.70, blue: 0.15))
                                    .cornerRadius(10)
                                    .offset(x: 0, y: 0)
                                Button(action: {
                                            // Add your action here
                                            print("Button tapped")
                                        }) {
                                            Text("CONTINUE")
                                                .font(Font.custom("Poppins", size: 10).weight(.medium))
                                                .foregroundColor(Color(red: 0.99, green: 1, blue: 0.73))
                                                .offset(x: 0, y: 0)
                                        }
                            }
                            .frame(width: 83.53, height: 17)
                            .offset(x: 57.48, y: 34)
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 53.34, height: 10.76)
                                    .background(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .cornerRadius(10)
                                    .offset(x: 9.15, y: 0.50)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 31.20, height: 10.76)
                                    .background(Color(red: 0.77, green: 0.15, blue: 0.15))
                                    .cornerRadius(10)
                                    .offset(x: -20.22, y: 0.48)
                                if let data = jsonData {
                                    Text("\(data.data.section_1.progress)")
                                        .font(Font.custom("Poppins", size: 8).weight(.medium))
                                        .foregroundColor(.white)
                                        .offset(x: -20.22, y: -0.01)
                                            } else {
                                                Text("...")
                                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                    .foregroundColor(.white)
                                                    .onAppear {
                                                        fetchData()
                                                    }
                                            }
                                   
                            }
                            .frame(width: 71.63, height: 11.76)
                            .offset(x: 51.53, y: 5.38)
                            ZStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 162, height: 187)
                                            .background(
                                                Image("Girl")
                                                    .resizable()
                                                    .cornerRadius(10)
                                            )
                                            .offset(x: -81, y: 0)
                                            .zIndex(1) // Set the zIndex to a higher value
                                
                               
                                
                                        
                                        Text("Build Bigger Biceps,")
                                            .font(Font.custom("Montserrat", size: 15).weight(.heavy))
                                            .lineSpacing(16)
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                            .offset(x: 86.68, y: -33.77)
                                            .zIndex(5) // Set the zIndex to a lower value
                                Text("Unleash Your Arm Power")
                                    .font(Font.custom("Montserrat", size: 15).weight(.heavy))
                                    .lineSpacing(16)
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .offset(x: 76.68, y: -20.77)
                                    .zIndex(5) // Set the zIndex to a lower value
                                    }
                                
                        }
                        .frame(width: 324, height: 187)
                        .offset(x: 1, y: -266.50)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 160, height: 94)
                                .background(
                                    Image("Bg2")
                                )
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 160, height: 94)
                                .background(Color(red: 0.90, green: 0.54, blue: 0).opacity(0.20))
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 99.60, height: 94)
                                .background(
                                    Image("Men")
                                )
                                .cornerRadius(10)
                                .offset(x: 30.20, y: 0)
                            
                            if let data = jsonData {
                                Text("\(data.data.section_4["category_1"]?.category_name ?? "Failed to Load Category")")
                                    .font(Font.custom("Montserrat", size: 12).weight(.heavy))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .offset(x: -42.50, y: -24.50)
                                Text("\(data.data.section_4["category_1"]?.no_of_exercises ?? "Failed to Amount")")
                                    .font(Font.custom("Montserrat", size: 10).weight(.semibold))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .offset(x: -44.98, y: -9)
                                        } else {
                                            Text("...")
                                                .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                .foregroundColor(.white)
                                                .onAppear {
                                                    fetchData()
                                                }
                                        }
                           
                        }
                        .frame(width: 160, height: 94)
                        .offset(x: -84, y: 304)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 160, height: 94)
                                .background(
                                    Image("Bg2")
                                )
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 160, height: 94)
                                .background(Color(red: 0.55, green: 0.60, blue: 0.80).opacity(0.44))
                                .cornerRadius(10)
                                .offset(x: 0, y: 0)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 99.60, height: 94)
                                .background(
                                  Image("Men")
                                )
                                .cornerRadius(10)
                                .offset(x: 30.20, y: 0)
                            
                            if let data = jsonData {
                                Text("\(data.data.section_4["category_2"]?.category_name ?? "Failed to Load Category")")
                                    .font(Font.custom("Montserrat", size: 12).weight(.heavy))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .offset(x: -42.50, y: -24.50)
                                Text("\(data.data.section_4["category_2"]?.no_of_exercises ?? "Failed to Amount")")
                                    .font(Font.custom("Montserrat", size: 10).weight(.semibold))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                    .offset(x: -43, y: -9)
                                        } else {
                                            Text("...")
                                                .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                .foregroundColor(.white)
                                                .onAppear {
                                                    fetchData()
                                                }
                                        }
                          
                        }
                        .frame(width: 160, height: 94)
                        .offset(x: 88, y: 304)
                    }
                    Group {
                        
                        Button(action: {
                                    // Add your action here
                                    print("Button tapped")
                                }) {
                                    Text("See All")
                                        .font(Font.custom("Montserrat", size: 12).weight(.semibold))
                                        .foregroundColor(Color(red: 0.73, green: 0.75, blue: 0.08))
                                        .offset(x: 132.50, y: 71.50)
                                }
                        
                        Button(action: {
                                    // Add your action here
                                    print("Button tapped")
                                }) {
                                    Text("See All")
                                        .font(Font.custom("Montserrat", size: 12).weight(.semibold))
                                        .foregroundColor(Color(red: 0.73, green: 0.75, blue: 0.08))
                                        .offset(x: 136.50, y: 240.50)
                                    
                                }
                        
                       
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                            ZStack() {
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 187.53, height: 128.04)
                                        .background(
                                            Image("Bg2")
                                        )
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 187.53, height: 128.04)
                                        .background(Color(red: 0.71, green: 0.93, blue: 0.26).opacity(0.44))
                                        .cornerRadius(10)
                                        .offset(x: 0, y: 0)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 103, height: 120)
                                        .background(
                                            Image("Girl2")
                                        )
                                        .offset(x: 39.74, y: 3.98)
                                    
                                    if let data = jsonData {
                                        Text("\(data.data.section_3["plan_1"]?.plan_name ?? "Not able to load the Plan")")
                                            .font(Font.custom("Montserrat", size: 12).weight(.heavy))
                                            .lineSpacing(18)
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                            .offset(x: -18.26, y: -13.02)
                                        Text("\(data.data.section_3["plan_1"]?.difficulty ?? "Not able to load the Difficulty")")
                                            .font(Font.custom("Montserrat", size: 12).weight(.bold))
                                            .lineSpacing(18)
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                            .offset(x: -54.26, y: 4.98)
                                                } else {
                                                    Text("...")
                                                        .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                        .foregroundColor(.white)
                                                        .onAppear {
                                                            fetchData()
                                                        }
                                                }
                                       
                                    
                                   
                                }
                                .frame(width: 187.53, height: 128.04)
                                .offset(x: -99.74, y: 0)
                                ZStack() {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 187.53, height: 128.04)
                                        .background(
                                            Image("Bg2"))
                                    
                                        .cornerRadius(10)
                                        .offset(x: -0.24, y: 0)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 187.53, height: 128.04)
                                        .background(Color(red: 0.88, green: 0.48, blue: 0.87).opacity(0.44))
                                        .cornerRadius(10)
                                        .offset(x: -0.24, y: 0)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 103, height: 120)
                                        .background(
                                            Image("Girl2")
                                        )
                                        .offset(x: 42.50, y: 2.98)
                                    
                                    if let data = jsonData {
                                        Text("\(data.data.section_3["plan_2"]?.plan_name ?? "Not able to load the Plan")")
                                            .font(Font.custom("Montserrat", size: 12).weight(.heavy))
                                            .lineSpacing(18)
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                            .offset(x: -0.50, y: -13.02)
                                        Text("\(data.data.section_3["plan_2"]?.difficulty ?? "Not able to load the Difficulty")")
                                            .font(Font.custom("Montserrat", size: 12).weight(.bold))
                                            .lineSpacing(18)
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                                            .offset(x: -52, y: 4.98)
                                                } else {
                                                    Text("...")
                                                        .font(Font.custom("Poppins", size: 8).weight(.medium))
                                                        .foregroundColor(.white)
                                                        .onAppear {
                                                            fetchData()
                                                        }
                                                }
                                    
                                }
                                .frame(width: 188, height: 128.04)
                                .offset(x: 99.50, y: 0)
                            }
                            .frame(minWidth: 387, maxWidth: 387, maxHeight: .infinity)
                            .offset(x: 25, y: 0)
                        }
                        }
                        .frame(height: 128)
                        .offset(x: 8, y: 151)
                        ZStack() {
                            Text("Home")
                                .font(Font.custom("Poppins", size: 14).weight(.semibold))
                                .lineSpacing(24)
                                .foregroundColor(.white)
                                .offset(x: -138.16, y: -3)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 6.23, height: 6)
                                .background(Image(systemName: "house.fill")
                                    .foregroundColor(.white))
                                .offset(x: -138.68, y: 15)
                            
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 6.23, height: 6)
                                .background(Image(systemName: "dumbbell.fill")
                                    .foregroundColor(.white))
                                .offset(x: -50.68, y: 15)
                           
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 6.23, height: 6)
                                .background(Image(systemName: "figure.mind.and.body")
                                    .foregroundColor(.white))
                                .offset(x: 30.68, y: 15)
                          
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 6.23, height: 6)
                                .background(Image(systemName: "figure.cooldown")
                                    .foregroundColor(.white))
                                .offset(x: 120.68, y: 15)
                            
                        }
                        .frame(width: 340, height: 30)
                        .offset(x: -0.50, y: 493)
                    }
                }
                .frame(width: 400, height: 1062)
                .background(Color(red: 0, green: 0, blue: 0).opacity(0.85))
                .overlay(
                    Rectangle()
                        .inset(by: 0.50)
                        .stroke(.black, lineWidth: 0.50)
                )
            }
            .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                opacity = 1.0
                            }
                        }
            .ignoresSafeArea(edges: .all)
        }
        
    }
        
    func fetchData() {
           guard let url = URL(string: "http://52.25.229.242:8000/homepage_v2/?format=json") else {
               return
           }

           URLSession.shared.dataTask(with: url) { data, _, error in
               guard let data = data, error == nil else {
                   return
               }

               do {
                   let decoder = JSONDecoder()
                   let result = try decoder.decode(HomepageResponse.self, from: data)
                   DispatchQueue.main.async {
                       self.jsonData = result
                   }
               } catch {
                   print(error.localizedDescription)
               }
           }.resume()
       }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
struct HomepageResponse: Codable {
    let success: Bool
    let data: HomepageData
    let message: String
}

struct HomepageData: Codable {
    let section_1: Section1
    let section_2: Section2
    let section_3: [String: Plan]
    let section_4: [String: Category]
}

struct Section1: Codable {
    let plan_name: String
    let progress: String
}

struct Section2: Codable {
    let accuracy: String
    let workout_duration: String
    let reps: Int
    let calories_burned: Int
}

struct Plan: Codable {
    let plan_name: String
    let difficulty: String
}

struct Category: Codable {
    let category_name: String
    let no_of_exercises: String
}
