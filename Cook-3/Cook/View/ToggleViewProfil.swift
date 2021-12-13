//
//  ToggleViewProfil.swift
//  Cook
//
//  Created by Adison on 15/05/2020.
//  Copyright © 2020 Adison. All rights reserved.
//

import SwiftUI

struct ToggleViewProfil: View {
    var pref : UserPref
    @State var banActiv : Bool
    @Environment(\.managedObjectContext) var MOC
    var body: some View {
        VStack{
            Toggle(isOn: self.$banActiv){
                Text(pref.name)
            }.onTapGesture {
                self.pref.ban = self.banActiv
                do {
                    try self.MOC.save()
                } catch {
                    print(error)
                }
            }
//            Button(action: {
//                self.pref.ban.toggle()
//                do {
//                    try self.MOC.save()
//                } catch {
//                    print(error)
//                }
//            }, label: {
//                pref.ban ? Text("Retirer") : Text("Ajouter")
//            })
        }
    }
}

//struct ToggleViewProfil_Previews: PreviewProvider {
//    static var previews: some View {
//        ToggleViewProfil()
//    }
//}
