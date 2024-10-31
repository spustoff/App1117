//
//  Reviewers_2.swift
//  App1117
//
//  Created by Вячеслав on 10/31/24.
//

import SwiftUI

struct Reviewers_2: View {
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("reviewers_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea(.all, edges: .top)
                
                Spacer()
            }
            
            VStack(spacing: 90) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Collecting coupons")
                        .foregroundColor(.black)
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Text("Get notifications and activate coupons in just a few clicks.")
                        .foregroundColor(.black.opacity(0.7))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                NavigationLink(destination: {
                    
                    Reviewers_3()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                })
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white.ignoresSafeArea())
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    Reviewers_2()
}
