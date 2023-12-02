//
//  reasources.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

struct reasources: View {
    var websiteURLs: [String] = ["https://www.grammarly.com/", "https://www.notion.so/", "https://www.wolframalpha.com/"]
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            VStack {
                Text("Student Resources")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Tap the buttons to open the websites externally")
                    .font(.headline)
                    .fontWeight(.semibold)
                ForEach(websiteURLs, id: \.self) { url in
                    Button((websiteName(for: url))) {
                        if let url = URL(string: url) {
                            UIApplication.shared.open(url)
                        }
                    }
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0))
                    .cornerRadius(8)
                    .padding()
                }
            }
        }
        
    }
    private func websiteName(for url: String) -> String {
        if let host = URL(string: url)?.host {
            return host
        }
        return ""
    }
}

struct reasources_Previews: PreviewProvider {
    static var previews: some View {
        reasources()
    }
}
