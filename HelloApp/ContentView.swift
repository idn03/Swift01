//
//  ContentView.swift
//  HelloApp
//
//  Created by NhatDi on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isVisible: Bool = false
    @State private var refreshID = UUID()

    var body: some View {
        VStack(spacing: 12) {
            Image("hello")
                .resizable()
                .frame(width: 60, height: 60)
                .scaleEffect(isVisible ? 1.0 : 0.6)
                .opacity(isVisible ? 1 : 0)
                .animation(.interpolatingSpring(stiffness: 220, damping: 18), value: isVisible)
            Text("Hello everyone!")
                .font(.headline)
                .opacity(isVisible ? 1 : 0)
                .scaleEffect(isVisible ? 1.0 : 0.95)
                .animation(.spring(response: 0.45, dampingFraction: 0.85).delay(0.06), value: isVisible)
            Text("Welcome back")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .opacity(isVisible ? 1 : 0)
                .scaleEffect(isVisible ? 1.0 : 0.98)
                .animation(.easeOut(duration: 0.35).delay(0.12), value: isVisible)

            Button {
                // Trigger a simple reload by changing the identity of the content
                refreshID = UUID()
                isVisible = false
                // Re-run the appear animation shortly after resetting
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                    isVisible = true
                }
            } label: {
                Label("Refresh", systemImage: "arrow.clockwise")
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 8)
        }
        .padding()
        .id(refreshID)
        .onAppear {
            // Run appear animation
            isVisible = true
        }
    }
}

#Preview {
    ContentView()
}
