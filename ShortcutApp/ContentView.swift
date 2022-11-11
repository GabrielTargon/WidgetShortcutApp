//
//  ContentView.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var linkHome: Bool = false
    @State var linkEmail: Bool = false
    @State var linkCall: Bool = false
    @State var linkProfile: Bool = false
    @State var linkConfig: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: Text("HomeView"),
                    isActive: $linkHome,
                    label: {
                        Text("Home")
                    })
                NavigationLink(
                    destination: Text("EmailView"),
                    isActive: $linkEmail,
                    label: {
                        Text("Email")
                    })
                NavigationLink(
                    destination: Text("CallView"),
                    isActive: $linkCall,
                    label: {
                        Text("Call")
                    })
                NavigationLink(
                    destination: Text("ProfileView"),
                    isActive: $linkProfile,
                    label: {
                        Text("Profile")
                    })
                NavigationLink(
                    destination: Text("ConfigView"),
                    isActive: $linkConfig,
                    label: {
                        Text("Config")
                    })
            }
            .navigationBarTitle("Links")
            .onOpenURL { url in
                self.linkHome = url == ShortcutURLs.home.url
                self.linkEmail = url == ShortcutURLs.email.url
                self.linkCall = url == ShortcutURLs.call.url
                self.linkProfile = url == ShortcutURLs.profile.url
                self.linkConfig = url == ShortcutURLs.config.url
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
