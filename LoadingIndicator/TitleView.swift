//
//  TitleView.swift
//  LoadingIndicator
//
//  Created by Orlando Schäfer on 03.12.22.
//

import Foundation
import SwiftUI

struct TitleView: View {
    
    var body: some View {
        VStack {
            Spacer()
            ProgressView()
                .scaleEffect(8)
                .font(.system(size: 8))
            Spacer()
            HStack {
                Spacer()
            }
            
        }.background(.white)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
