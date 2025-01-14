//
//  EmojiFacts.swift
//  EmojiFinder
//
//  Created by adam alief priyadi on 09/02/24.
//

import SwiftUI

struct EmojiFacts: View {
    let emojiFacts: [String] = [
        "Emoji pertama kali muncul pada tahun 1999 di Jepang.",
        "Ada lebih dari 3000 emoji yang resmi diakui.",
        "Emoji 'wajah tersenyum dengan mata tertawa' adalah salah satu yang paling populer.",
        "Banyak emoji memiliki variasi warna kulit.",
        "Emoji bisa berbeda tampilannya di berbagai platform dan perangkat.",
        "Ada hari Emoji Sedunia yang dirayakan setiap tanggal 17 Juli.",
        "Beberapa emoji dihapus karena kontroversi atau jarang digunakan.",
        "Emoji terus berkembang dengan menambahkan simbol-simbol baru setiap tahunnya."
    ]
    var body: some View {
        GroupBox {
            DisclosureGroup ("Fakta menarik tentang Emoji!") {
            Divider()
                .padding(.vertical)
            
                ForEach(emojiFacts, id: \.self) { fact in
                    HStack(spacing: 8) {
                        Image(systemName: "info.circle")
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text(fact)
                        }
                        .frame(maxWidth: 640, alignment: .leading)
                    }
                    Divider()
                }
            }
        }
    }
}

#Preview {
    EmojiFacts()
}
