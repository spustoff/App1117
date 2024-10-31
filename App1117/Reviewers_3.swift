//
//  Reviewers_3.swift
//  App1117
//
//  Created by Вячеслав on 10/31/24.
//

import SwiftUI

struct Reviewers_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("reviewers_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea(.all, edges: .top)
                
                Spacer()
            }
            
            VStack(spacing: 90) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Premium Plus")
                        .foregroundColor(.black)
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Text("Access to unique offers available only to Premium Plus members.")
                        .foregroundColor(.black.opacity(0.7))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    status = true
                    
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
    Reviewers_3()
}
