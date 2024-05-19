//
//  theme background.swift
//  task app
//
//  Created by fernando babonoyaba on 5/7/24.
//

import SwiftUI

struct theme_background: View {
    @State var calendar = false
    @State var textSize: CGFloat = 0
    @State var toggle = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var button: String {
        calendar ? "chevron.down" : "chevron.forward"
    }
    
    var body: some View {
        
        GeometryReader { screen in
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    if !calendar {
                        
                        VStack(alignment: .leading) {
                            Text("Quote of the day")
                                .font(.headline)
                                .padding(.horizontal, 20)
                                .padding(.top, screen.size.height / 9.7)
                                
                            
                            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. fg;dlskf; a;sld f;ls d;fs ;dglk ;sdf gd;lfkg;dlf g;sdlf g;lkdf;lgk ;ldfgk ;dfg ;dflgk ")
                                .padding(.horizontal, 20)
                                .padding(.top, 1)
                                .lineLimit(4)
                            
                            //                            Spacer()
                            
                            
                            
                        }
//                        .opacity(1)
                        .tint(.white)
                        .frame(maxWidth: .infinity)
                        //                        .frame(minHeight: screen.size.height / 4.2)
                        
                        
                        
                        
                    }
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
                .background(.purple.gradient)
                .opacity(0.8)
                
                
                VStack {
                    HStack {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                            
                        } label: {
                            Image(systemName: "arrow.left")
                                .tint(.white)
                                .bold()
                        }
                        
                        Label(
                            title: { Text("November")
                            },
                            icon: { Image(systemName: "calendar") }
                        )
                        .font(.title)
                        .bold()
                        .padding(.trailing, 6)
                        //                            .colorInvert()
                        
                        
                        Button {
                            withAnimation(.easeOut) {
                                calendar.toggle()
                            }
                            
                        } label: {
                            Image(systemName: button)
                                .tint(.white)
                        }
//                        .frame(align.ment: .bottom)
                        //                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.easeOut) {
                                calendar.toggle()
                            }
                            
                        } label: {
                            Image(systemName: "plus")
                                .tint(.white)
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    if calendar {
                        ScrollView(.horizontal) {
                            HStack {
                                
                                ForEach(Range(1...30)) { day in
                                    ZStack {
                                        VStack {
                                            
                                        }
                                        .padding(.vertical, 35)
                                        .padding(.horizontal, 27)
                                        .background(.black.gradient)
                                        .opacity(0.1)
                                        .addBorder(.black.opacity(0.3), cornerRadius: 20)
                                        
                                        VStack {
                                            Text("\(day)")
                                            Text("d")
                                            
                                        }
                                        .foregroundStyle(.white)
                                        .opacity(1)
                                        
                                    }
                                    
                                    
                                }
                                .containerRelativeFrame(.horizontal, count: 7, spacing: 7.0)
                                .foregroundStyle(.black.gradient)
                                .scrollTransition { content, phase in
                                    content
                                        .opacity(phase.isIdentity ? 1 : 0)
                                        .scaleEffect(phase.isIdentity ? 1 : 0.5)
                                }
                                
                                
                                
                            }
                            .padding(.vertical, 10)
                            
                            
                        }
                    }
                    
                    ScrollView {
                        Spacer(minLength: calendar ? 0 : screen.size.height / 5 )
                        VStack(spacing: 10) {
                            VStack {}
                                .frame(minHeight: 30)
                            
                            ForEach(Range(0...3)) { tasks in
                                HStack{
                                    Rectangle()
                                        .fill(.red)
                                        .frame(maxWidth: screen.size.width * 0.04)
                                    Spacer()
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Task \(tasks)")
                                            .bold()
                                            .font(.headline)
                                        
                                        Text("more info. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.")
                                            .lineLimit(2)
                                        

                                    }
                                    .frame(width: screen.size.width * 0.67)
                                    Spacer()
                                    
                                    Toggle(isOn: $toggle) {
                                        
                                    }
                                    .toggleStyle(i0SCheckBoxStyle())
                                    .frame(width: screen.size.width * 0.08)
                                    .padding()
                                                                        
                                }
                                .frame(maxWidth: screen.size.width * 0.95)
                                .frame(height: screen.size.height / 7.5)
                                .background(.white)
                                .addBorder(.black.opacity(0.3).gradient, cornerRadius: 20)
                            .shadow(radius: 2)
                            }

                            
                            Spacer(minLength: 30)
                        }
                        .frame(maxWidth: .infinity, minHeight: screen.size.height / 1.47)
                        .foregroundStyle(.black)
                        .background(.white)
                        .addBorder(.white, cornerRadius: 40)
                    }
                }
                
                
            }
            //            .ignoresSafeArea()
            .foregroundStyle(.white)
        }
    }
}




#Preview {
    theme_background()
}
