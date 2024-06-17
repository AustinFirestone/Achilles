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

    var body: some View {
        VStack{
            HStack{
                Text("Achilles")
                    .font(.title)
                Image(systemName: "figure.archery")
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
