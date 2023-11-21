//
//  ContentView.swift
//  ListApp
//
//  Created by Victoria on 2023-11-18.
//

import SwiftUI

struct ContentView: View {
    
    @State var word = ""
    //@FocusState private var emailFieldIsFocused: Bool = false
    
    @State var words = [ "ko", "sol", "hö", "is", "sax", "lax", "tax" ]
    
    var body: some View {
        VStack {
                        
            Text("\n\n Ordlistan")
            
            
            HStack {
                Text("")
                TextField(
                        "Lägg till ett ord",
                        text: $word
                    )
                    .padding(.horizontal)
                Button ( action: {
                    words.append(word)
                    word = ""
                }) {
                    Text("Lägg till")
                    .padding(.trailing)
                }
            
            
            }
            
            List(words, id: \.self) { word in
                Text(word)
            
            }
            
            if (words != []){
                Button ( action: {
                    words = []
                }) {
                    Text("Nollställ")
                    .padding(.top)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
