//
//  ContentView.swift
//  RemaindarApp
//
//  Created by الوليد خشيم on 16/01/1445 AH.
//

import SwiftUI
struct PlayerName: View {
    var ourNames: String = ""
    var ourAge: Int = 0
    var city : String = ""
    var body: some View {
        VStack{
            Text("Hello , I am \(ourNames)")
                .font(.largeTitle)
            Text(" I am \(ourAge)")
                .font(.largeTitle)
            Text("I am from \(city)")
                .font(.largeTitle)
            
        }
    }
}
struct People : Identifiable{
    var id = UUID()
    var name: String
    var age: Int
    var city: String
}

let one : People = People(name: "nasme1", age: 23, city: "city1")
let two: People = People(name: "name2", age: 92, city: "city2")
let three : People = People(name: "name3", age: 75, city: "city3")



var miarray: Array = [ "fwe","egeh","rgwr"]
struct HomePage: View {
    let arrayOfNames : [People] = [one,two,three]
    var body: some View {
        VStack {
            TextField("Serch", text: .constant(""))
            HStack{
            card(numCard: 0, imgIconsCard: "swift", nameCard: "Today")
            card(numCard: 1, imgIconsCard: "swift", nameCard: "ay")}
            HStack{
                card(numCard: 0, imgIconsCard: "swift", nameCard: "Today")
                card(numCard: 1, imgIconsCard: "swift", nameCard: "ay")}
            ZStack {
                VStack{
                    Form{
                        Section("one") {
                            List(arrayOfNames , id: \.id){ i in
                                NavigationLink{
                                    PlayerName(ourNames: i.name , ourAge: i.age , city: i.city)
                                } label: {
                                    Text(i.name)
                                }
                            }
                        }
                        Section("two") {
                            List(arrayOfNames , id: \.id){ i in
                                NavigationLink{
                                    PlayerName(ourNames: i.name , ourAge: i.age , city: i.city)
                                } label: {
                                    Text(i.name)
                                }
                            }
                        }

                    }
                }
            
            .navigationTitle("Main View")
            }
            
           
            
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{  Group{
            
            HomePage()
            
        }
        }.environment(\.colorScheme, .dark)
    }
    
}
