//
//  HomePageView.swift
//  OpenInApp_Assignment
//
//  Created by Smit Patel on 03/04/24.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            TabView {
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house")
                    }
                CoursesView()
                    .tabItem {
                        Label("Courses", systemImage: "book")
                    }
                CampaignsView()
                    .tabItem {
                        Label("Campaigns", systemImage: "megaphone")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
            .accentColor(.gray) // Change tab bar color
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

#Preview {
    HomePageView()
}

