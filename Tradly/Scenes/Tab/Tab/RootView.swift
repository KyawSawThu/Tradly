//
//  RootView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct RootView: View {
    // MARK: - PROPERTIES
    private let tabs: [Tab] = Tab.allCases
    @State private var selectedTab: Int = 0
    // MARK: - COMPONENTS
    // MARK: - BODY
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag(0)
                .tabItem {
                    TabItemView(data: tabs[0].item, isActive: selectedTab == 0)
                }
            BrowseView()
                .tag(1)
                .tabItem {
                    TabItemView(data: tabs[1].item, isActive: selectedTab == 1)
                }
            StoreView()
                .tag(2)
                .tabItem {
                    TabItemView(data: tabs[2].item, isActive: selectedTab == 2)
                }
            OrderHistoryView()
                .tag(3)
                .tabItem {
                    TabItemView(data: tabs[3].item, isActive: selectedTab == 3)
                }
            ProfileView()
                .tag(4)
                .tabItem {
                    TabItemView(data: tabs[4].item, isActive: selectedTab == 4)
                }
        }
        .accentColor(.colorGreen)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

struct TabItemView: View {
    var data: TabItemData
    var isActive: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Image(data.icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 12, height: 12)
                .foregroundColor(isActive ? .colorGreen : .colorGrey)
            Text(data.title)
                .foregroundColor(isActive ? .colorGreen : .colorGrey)
        } //: VSTACK
    }
}

enum Tab: CaseIterable {
    case home
    case browse
    case store
    case orderHistory
    case profile
    
    var item: TabItemData {
        switch self {
        case .home: return .init(icon: "tab.home", title: "Home")
        case .browse: return .init(icon: "tab.search", title: "Browse")
        case .store: return .init(icon: "tab.store", title: "Store")
        case .orderHistory: return .init(icon: "tab.order", title: "Order History")
        case .profile: return .init(icon: "tab.profile", title: "Profile")
        }
    }
}

struct TabItemData {
    let icon: String
    let title: String
}
