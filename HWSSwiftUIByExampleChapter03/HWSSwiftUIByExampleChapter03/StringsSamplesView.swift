//
//  TesteView.swift
//  HWSSwiftUIByExample
//
//  Created by Ygor Nascimento on 13/08/23.
//

import SwiftUI

struct StringsSamplesView: View {
    
    var message: AttributedString {
        var result = AttributedString("Hello")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        
        return result
    }
    
    var message2: AttributedString {
        var result = AttributedString("World!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        
        return result
    }
    
    var message3: AttributedString {
        var result = AttributedString("Testing 1 2 3!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: .white)
        
        return result
    }
    
    var message4: AttributedString {
        let string = "The letters go up and down"
        var result = AttributedString()
        
        for (index, letter) in string.enumerated() {
            var letterString = AttributedString(String(letter))
            letterString.baselineOffset = sin(Double(index)) * 5
            result += letterString
        }
        
        result.font = .largeTitle
        
        return result
    }
    
    var message5: AttributedString {
        var result = AttributedString("Learn Swift here")
        result.font = .largeTitle
        result.link = URL(string: "https://www.hackingwithswift.com")
        
        return result
    }
    
    var message6: AttributedString {
        var password = AttributedString("abCayer-muQai")
        password.accessibilitySpeechSpellsOutCharacters = true
        
        return "Your password is:" + password
    }
    
    var message7: AttributedString {
        var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
        result.foregroundColor = .secondary
        
        let weekday = AttributeContainer.dateField(.weekday)
        let weekdayStyling = AttributeContainer.foregroundColor(.primary)
        result.replaceAttributes(weekday, with: weekdayStyling)
        
        return result
    }
    
    var message8: AttributedString {
        var components = PersonNameComponents()
        components.givenName = "Ygor"
        components.familyName = "Nascimento"
        
        var result = components.formatted(.name(style: .long).attributed)
        
        let familyNameStyling = AttributeContainer.font(.headline)
        let familyName = AttributeContainer.personNameComponent(.familyName)
        
        result.replaceAttributes(familyName, with: familyNameStyling)
        
        return result
    }
    
    var message9: AttributedString {
        var amount = Measurement(value: 200, unit: UnitLength.kilometers)
        var result = amount.formatted(.measurement(width: .wide).attributed)
        
        let distanceStyling = AttributeContainer.font(.title)
        let distance = AttributeContainer.measurement(.value)
        result.replaceAttributes(distance, with: distanceStyling)
        
        return result
    }
    
    var body: some View {
        Text("This is some longer text that is limited to a specific range of lines, so anything more than six lines will cause the text to clip.")
            .lineLimit(2, reservesSpace: true)
            .truncationMode(.middle)
            .font(.largeTitle)
            .frame(width: 200)
            .foregroundColor(.red)
            .foregroundStyle(.blue.gradient)
        
        Text("The best laid plans")
            .padding()
            .background(.yellow)
            .foregroundColor(.white)
            .font(.headline)
        
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping.")
            .font(.largeTitle)
            .lineSpacing(50)
            .frame(width: 300)
        
        Text("Hello, world!")
            .fontDesign(.serif)
            .fontWidth(.condensed)
        
        Text(message + message2)
        
        Text(message3)
        
        Text(message4)
        
        Text(message5)
        
        Text(message6)
        
//        Text(message7)
        
//        Text(message8)
        
        Text(message9)
    }
    

}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        StringsSamplesView()
    }
}
