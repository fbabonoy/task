//
//  ContentView.swift
//  task app
//
//  Created by fernando babonoyaba on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: theme_background().navigationBarBackButtonHidden()) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        }
        
        
    }
}

#Preview {
    ContentView()
}
