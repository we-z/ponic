//
//  AppIconView.swift
//  ponic
//
//  Created by Wheezy Capowdis on 7/4/24.
//

import SwiftUI

struct AppIconView: View {
    var body: some View {
        ZStack {
            Color.green
            Image(systemName: "leaf")
                .font(.system(size: 270))
        }
    }
}

#Preview {
    AppIconView()
}
