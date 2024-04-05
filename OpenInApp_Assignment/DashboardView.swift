//
//  DashboardView.swift
//  OpenInApp_Assignment
//
//  Created by Smit Patel on 04/04/24.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedTab = "Top Links"
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        
        ZStack{
            Color(.blue)
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("Dashboard")
                        .fontWeight(.semibold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Image("wrench")
                            .resizable()
                            .frame(width: 25 , height: 25)
                    }
                }
                .padding()
                
                Spacer()
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.offwhite)
                        .frame(maxHeight: .infinity)
                    
                    
                        
                    VStack{
                        
                        ScrollView{
                            HStack{
                                Text("\(greetingLogic())")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20))
                                Spacer()
                            }.padding(.leading,20)
                                .padding(.top,30)
                            
                            HStack{
                                Text("Ajay Manva 👋")
                                    .foregroundColor(.black)
                                    .font(.system(size: 30))
                                    .fontWeight(.semibold)
                                Spacer()
                            }.padding(.leading,20)
                                .padding(.top,1)
                            
                            
                            //chart ka data implement hoga
                            //chat ka UI dekhna hai
                            ZStack{
                                RoundedRectangle(cornerRadius: 20.0)
                                    .fill(Color.white)
                                    .frame(width: 350 , height: 200)
                            }
                            
                            ScrollView(.horizontal){
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 120 , height: 120)
                                        VStack{
                                            HStack{
                                                Image("clicks")
                                                    .frame(width: 25 , height: 25)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom,15)
                                            
                                            HStack{
                                                Text("\(viewModel.response?.today_clicks ?? 100)")
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom , 5)
                                            
                                            HStack{
                                                Text("Today's clicks")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 14))
                                                Spacer()
                                            }.padding(.leading,10)
                                            
                                            
                                        }
                                    }.padding(.leading , 10)
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 120 , height: 120)
                                        
                                        VStack{
                                            HStack{
                                                Image("pin")
                                                    .resizable()
                                                    .frame(width: 25 , height: 25)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom,15)
                                            
                                            HStack{
                                                Text("\(viewModel.response?.top_location ?? "Ahmedabad")")
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom , 5)
                                            
                                            HStack{
                                                Text("Top Location")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 14))
                                                Spacer()
                                            }.padding(.leading,10)
                                            
                                            
                                        }
                                    }.padding(.leading , 10)
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 120 , height: 120)
                                        
                                        VStack{
                                            HStack{
                                                Image("insta")
                                                    .frame(width: 25 , height: 25)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom,15)
                                            
                                            HStack{
                                                Text("\(viewModel.response?.top_source ?? "Instagram")")
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom , 5)
                                            
                                            HStack{
                                                Text("Top Source")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 14))
                                                Spacer()
                                            }.padding(.leading,10)
                                            
                                            
                                        }
                                    }.padding(.leading , 10)
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color.white)
                                            .frame(width: 120 , height: 120)
                                        
                                        
                                        VStack{
                                            HStack{
                                                Image("clicks")
                                                    .frame(width: 25 , height: 25)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom,15)
                                            
                                            HStack{
                                                Text("\(viewModel.response?.total_clicks ?? 150)")
                                                    .fontWeight(.semibold)
                                                Spacer()
                                            }.padding(.leading,10)
                                                .padding(.bottom , 5)
                                            
                                            HStack{
                                                Text("Today's clicks")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 14))
                                                Spacer()
                                            }.padding(.leading,10)
                                            
                                            
                                        }
                                    }.padding(.leading , 10)
                                    
                                }.padding()
                                
                                
                            }
                            // Hstack complete hogaya
                            
                            
                            Button {
                                
                            } label: {
                                
                                ZStack{
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .continuous
                                    )
                                    .stroke(.gray, lineWidth: 1)
                                    .frame(width: 350 , height: 50)
                                    
                                    HStack{
                                        
                                        Image("arrow")
                                        
                                        Text("View Analytics")
                                            .padding()
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                    }
                                }
                                
                                
                            }.frame(maxWidth:350)
                            
                            
                            HStack{
                                
                                HStack{
                                    
                                    
                                    Button {
                                        selectedTab = "Top Links"
                                    } label: {
                                        
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 18)
                                                .fill(selectedTab == "Top Links" ? .blue : .clear)
                                            
                                            
                                            Text("Top Links")
                                                .foregroundColor(selectedTab == "Top Links" ? .white : .gray)
                                        }
                                        
                                        
                                    }.frame(width: 120 , height: 35)
                                        .cornerRadius(18)
                                    
                                    
                                    
                                    
                                    Button {
                                        selectedTab = "Recent Links"
                                    } label: {
                                        
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 18)
                                                .fill(selectedTab == "Recent Links" ? .blue : .clear)
                                            
                                            
                                            Text("Recent Links")
                                                .foregroundColor(selectedTab == "Recent Links" ? .white : .gray)
                                        }
                                        
                                        
                                    }.frame(width: 120 , height: 35)
                                        .cornerRadius(18)
                                    
                                }
                                
                                
                                Spacer()
                                
                                ZStack{
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .continuous
                                    )
                                    .stroke(.gray, lineWidth: 1)
                                    .frame(width: 40 , height: 40)
                                    
                                    Image("search")
                                        .resizable()
                                        .frame(width: 20 , height: 20)
                                }
                                
                                
                                
                                
                            }.frame(maxWidth: 350 , maxHeight: 40)
                            
                            
                            
                            
                            
                            if let response = viewModel.response {
                                if selectedTab == "Top Links" {
                                    List(response.data.top_links, id: \.url_id) { link in
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .frame(width: 350 , height: 120)
                                                .shadow(radius: 5)
                                            HStack{
                                                Image(link.original_image)
                                                    .resizable()
                                                    .frame(width: 50 , height: 50)
                                            }
                                           
                                        }
                                        .padding(.vertical, 5)
                                    }
                                    .listStyle(PlainListStyle())
                                    .frame(height: 300)
                                } else {
                                    List(response.data.recent_links, id: \.url_id) { link in
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .frame(height: 50)
                                                .shadow(radius: 5)
                                            
                                            Text(link.title)
                                                .padding()
                                        }
                                        .padding(.vertical, 5)
                                    }
                                    .listStyle(PlainListStyle())
                                    .frame(height: 300)
                                }
                            } else {
                                ProgressView("Loading...")
                                    .padding()
                            }
                            
                            
                            // button for Talk with us
                            Button {
                                
                            } label: {
                                
                                ZStack{
                                    RoundedRectangle(
                                        cornerRadius: 8,
                                        style: .continuous
                                    )
                                    .stroke(.gray, lineWidth: 1)
                                    .frame(width: 350 , height: 50)
                                    
                                    HStack{
                                        
                                        Image("arrow")
                                        
                                        Text("Talk with us")
                                            .padding()
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                    }
                                }
                                
                                
                            }.frame(maxWidth:350)
                            
                            
                        }
                            
                        }.onAppear {
                            viewModel.fetch()
                        }
                }
                
                
            
            }
            
            
            
        }
        
        
        
    }
    
    func greetingLogic() -> String {
        let hour = Calendar.current.component(.hour, from: Date())
        
        let NEW_DAY = 0
        let NOON = 12
        let SUNSET = 18
        let MIDNIGHT = 24
        
        var greetingText = "Hello" // Default greeting text
        switch hour {
        case NEW_DAY..<NOON:
            greetingText = "Good Morning"
        case NOON..<SUNSET:
            greetingText = "Good Afternoon"
        case SUNSET..<MIDNIGHT:
            greetingText = "Good Evening"
        default:
            _ = "Hello"
        }
        
        return greetingText
    }
}

#if DEBUG
struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
#endif
