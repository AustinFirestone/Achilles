//
//  ContentView.swift
//  Achilles
//
//  Created by Austin Firestone on 6/17/24.
//

import SwiftUI

struct MainView: View {
    //@State private var classes: [Class] = []
    @Environment(\.scenePhase) private var scenePhase
    //@State private var selectedTab: Int = 1 // Default to HomeView
    @State private var isShowingStandardSheet = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Achilles")
                    .font(.title)
                Image(systemName: "figure.archery")
            }
            .onTapGesture {
                isShowingStandardSheet = true
            }
            TabView() {
                InsightsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "lightbulb.min")
                            Text("Insights")
                                .font(.title)
                        }
                    }
                //.tag(0)
                
                NutritionView()
                    .tabItem {
                        VStack {
                            Image(systemName: "fork.knife")
                            Text("Nutrition")
                                .font(.title)
                        }
                    }
                //.tag(1)
                
                WaterView()
                    .tabItem {
                        VStack {
                            Image(systemName: "waterbottle")
                            Text("Water")
                                .font(.title)
                        }
                    }
                //.tag(1)
                
                SleepView()
                    .tabItem {
                        VStack {
                            Image(systemName: "bed.double")
                            Text("Sleep")
                                .font(.title)
                        }
                    }
                //.tag(1)
                
                WorkoutView()
                    .tabItem {
                        VStack {
                            Image(systemName: "figure.strengthtraining.traditional")
                            Text("Workout")
                                .font(.title)
                        }
                    }
                //.tag(2)
            }
            .onAppear {
                //classes = CoreDataManager.shared.loadClasses()
            }
            .onChange(of: scenePhase) { phase in
                if phase == .inactive { saveClasses() }
            }
        }
        .sheet(isPresented: $isShowingStandardSheet) {
            Text("THE STANDARD")
                .font(.largeTitle)
                .underline()
                .padding()
            Text("Find balance - Mind, Body, Spirit")
                .font(.headline)
                .padding()
            Text("Run - Swim - Fight - Lift")
            Text("""
                 
                 
                 Nutrition: Eat for performance
                 
                 Hydration: 1 gallon a day
                 
                 Sleep: 6 hours with consistent sleep/wake
                 
                 Train: Run 5 days a week, Lift 4 days a week, Figth 3 days a week, Swim 2 days a week, Stretch every day
                 
                 """)
            .font(.subheadline)
            .padding()
            Image(systemName: "figure.arms.open")
                .resizable()
                .scaledToFit()
            
            Spacer()
        }
    }

    private func saveClasses() {
        //fork.knifeCoreDataManager.shared.saveClasses(classes)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
