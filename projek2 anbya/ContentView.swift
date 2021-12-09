//
//  ContentView.swift
//  projek2 anbya
//
//  Created by Mufti Ramdhani on 08/06/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView{
      Form{
        //Section foto profil
        Section(){
          NavigationLink(destination: About()){
            HStack{
              Image("profile")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
              
              //Nama dan Status
              VStack(alignment:.leading){
                Text("Anbya Adzka").font(.headline)
                Text("Code Enthusiast").font(.caption)
              }
            }
            .padding(.top,10)
            .padding(.bottom,10)
          }
        }
        
        //section pengaturan umum
        Section(header: Text("pengaturan umum")){
          NavigationLink(destination: About()){
            HStack(spacing:20){
              Image(systemName: "star.fill")
                .frame(width: 35, height: 35)
                .background(Color.orange)
                .cornerRadius(10)
                .foregroundColor(Color.white)
              Text("pesan berbintang")
            }
          }
          
          NavigationLink(destination: About()){
            HStack(spacing:20){
              Image(systemName: "tv")
                .frame(width: 35, height: 35)
                .background(Color.green)
                .cornerRadius(10)
                .foregroundColor(Color.white)
              Text("WhatsApp Web/Desktop")
            }
          }
          
          
          //section pengaturan umum
          
        }
        Section(header: Text("pengaturan Akun")){
          NavigationLink(destination: About()){
            HStack(spacing:20){
              Image(systemName: "person")
                .frame(width: 35, height: 35)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(Color.white)
              Text("Akun")
            }
            
            
          }
          
          HStack(spacing:20){
            NavigationLink(destination: About()){
              Image(systemName: "phone.circle")
                .frame(width: 35, height: 35)
                .background(Color.green)
                .cornerRadius(10)
                .foregroundColor(Color.white)
              Text("Chat")
            }
          }
        }
      }.navigationBarTitle("Setting")
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


struct About : View{
  var body: some View{
    Text("Halaman About")
  }
}

