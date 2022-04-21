//
//  StateObjectObservableTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/13/22.
//

import SwiftUI

//As a SwiftUI developer, you are probably well aware of the @State property wrapper. We use this to tell the View that it will need to update if a @State variable changes. This is create for basic data types, but unfortunately, does not work for other classes in our application. Thankfully, the SwiftUI framework includes the @ObservableObject and @StateObject property wrappers for this purpose. In this video we will create "view model" which is a custom class that will manage the data for our View and then implement both of these new property wrappers into our iOS application.

//@Published is telling the CLASS that something might change, then @Observable tells the CLASS that some views are observing for changes. @ObservedObject in STRUCT is observing the changes


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//ObservableObject is telling the class it's observable by other structs. Other views in the app are observing what's happening

//viewModel has all the logic (Functions)
class FruitViewModel: ObservableObject {
    
    
    //@Publihsed is the same like @State, except it's for a class
//The @Published attribute is class constrained. Use it with properties of classes, not with non-class types like structures.
    @Published var fruitArray:  [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Green Apples", count: 50)
        let fruit2 = FruitModel(name: "Bananas", count: 8)
        let fruit3 = FruitModel(name: "Orangess", count: 34)
        let fruit4 = FruitModel(name: "Strawberries", count: 98)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            //self is telling the xcode is this fruitArray in this class that we're inside
            [self] in
            
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
            fruitArray.append(fruit4)
            isLoading = false
            
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

struct StateObjectObservableTest: View {
    // @State var fruitArray: [FruitModel] = []
    
    //@ObservedObject is telling the view observe this object (fruitViewModel) and if chnage update the view (StateObjectObservableTest)
    
    
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    
    //If it's first time you're using it (fruitViewModel) in your app, use stateObject. If it's the second time you're passing it, use observable opject
    
    // Nick- @StateObject -> USE THIS ON CREATION / INIT
    // Nick -  @ObservedObject -> USE THIS FOR SUBVIEWS
    /* the problem with @observedObject is if this view refreshed for any reason, everything will reload so everything will be doubled. We want to persist the data even if it gets reloaded */
    //@StateObject is the same like @observableObject, but it persists if the view got refreshed or reload
    
    // var (lowercase): (type of Upper case) = (upper case)
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView{
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    //   ForEach(fruitArray) { fruit in
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    //   .onDelete(perform: deleteFruit)
//deleteFruit function is in fruitViewModel
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
               NavigationLink(
                destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                        })
                                )
//                                        .onAppear {
//                                            //  getFruits()
//                                            fruitViewModel.getFruits()
//                                        }
                                }
                                
                            }
                    }
                                
 struct RandomScreen: View {
     
   @Environment(\.presentationMode) var presentationMode
     @ObservedObject var fruitViewModel: FruitViewModel
                var body: some View {
                    ZStack {
                        Color.green.ignoresSafeArea()
                        
                        VStack{
                            ForEach(fruitViewModel.fruitArray) { fruit in
                                Text(fruit.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                        }
                        
//                        Button(action: {
//                            presentationMode.wrappedValue.dismiss()
//                            
//                        }, label: {
//                            Text("GO BACK")
//                                .foregroundColor(.white)
//                                .font(.largeTitle)
//                                .fontWeight(.semibold)
//                        })
                        
                        
                    }
                }
            }
                                struct StateObjectObservableTest_Previews: PreviewProvider {
                static var previews: some View {
                    StateObjectObservableTest()
                    //  RandomScreen()
                }
            }
