//
//  ProfileView.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModal()
    
    var body: some View {
        NavigationView {
            VStack{
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
