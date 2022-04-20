//
//  EnvironmentObjectTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/13/22.
//

import SwiftUI


//The @EnvironmentObject is a super-useful property wrapper that lets us put an observable object into the environment of our SwiftUI application. By doing this, all of these views in the view hierarchy will then have access to this object. This is the perfect solution for any case where you have a class that needs to be accessed by multiple views, but you don't want to manually bind it from view to view to view with initializers.

//we throw the object to the environment ".environmentObject(viewModel)"
//we catch wherever we need it " @EnvironmentObject var viewModel: EnvironmentObjectTestViewModel"

//if we update it in the view we cought it from, it'll update all the future views that using the same object
class EnvironmentObjectTestViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
    
    
    
}


//MARK: FIRST VIEW
struct EnvironmentObjectTest: View {
    
    
    //@StateObject to persist if the view needs to rerender
    @StateObject var viewModel: EnvironmentObjectTestViewModel = EnvironmentObjectTestViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item),
                                   label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("iOS Devices")
        }
        // //we are adding it here to the whole environment to be available to all the hirearchy view without @ObservedObject for every single view
        //On Navigation view to send it to all subviews the derive from this navigation view will have access to it, any number of screens. I'm sending the "viewModel" object to be at the environment, so any view can have access to it
        
        //don't get more than one or two objects throwing to the environment, so you don't get confuse and don't slow down the app.
        //If you really don't need it for many views, just use @ObservedObject or @StateObject 
        .environmentObject(viewModel)
        //now we threw the viewModel to the environment, so we don't need to pass it from screen to screen. If we want to pull it from the environement, we'll say @EnvirnomentObject at the view that we need it there
    }
}


//MARK: SECOND VIEW

struct DetailView: View {
    
    let selectedItem: String
   
    //we'll delete the following line after setting up the environment (we don't even need it for this screen, it was just passing to the third view)
  // @ObservedObject var viewModel: EnvironmentObjectTestViewModel
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            
            NavigationLink(
                destination: FinalView(),
                label: {
            Text(selectedItem)
                .font(.headline)
                .foregroundColor(.orange)
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(30)
                })
        }
    }
}


//MARK: THIRD VIEW

struct FinalView: View {
    //this is a way to cakk viewModel, but calling it from Environment is way better and less code
    //We'll delete the following @ObservedObject after adding ".environmentObject(viewModel)" to the first view, and instead we'll do @EnvironmentObject because it's everywhere now in the whole environment
   // @ObservedObject var viewModel: EnvironmentObjectTestViewModel
    
    
    
    
    
    //here I'm  pulling the viewModel from the environement
    
    @EnvironmentObject var viewModel: EnvironmentObjectTestViewModel
    
    
    //now if I update (adding/deleting data) the viewModel here, it'll be updated to all the future view who are using the same viewModel
    var body: some View {
        ZStack {
            //background
            LinearGradient(colors: [.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}
struct EnvironmentObjectTest_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectTest()
        //DetailView(selectedItem: "iPhone")
        //FinalView()
    }
}
