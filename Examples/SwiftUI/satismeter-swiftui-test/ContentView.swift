//
//  ContentView.swift
//  satismeter-swiftui-test
//
//  Created by Anthony Gorb on 09.12.2020.
//

import SwiftUI

func identifyUser() {
    let traitsDictionary = [
        "name" : "James Bond",
        "plan" : "Gold",
        "createdAt" : "2015-11-01T00:00:00.000Z"
    ]
    
    SatisMeter.sharedInstance().identifyUser(
        withUserId: "007",
        writeKey: "K7eMIPEXyPMlG7fu",
        andTraitsDictionary: traitsDictionary
    )
}

struct ContentView: View {
    var body: some View {
        Button(action: {
            identifyUser()
        }) {
            Text("Identify user")
        }//.onAppear(perform: identifyUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
