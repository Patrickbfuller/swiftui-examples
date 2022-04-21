//
//  DatePickerTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/8/22.
//

import SwiftUI

struct DatePickerTest: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from:
            DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    
    var dateFormatter: DateFormatter {
     let formatter = DateFormatter()
    formatter.dateStyle = .short
        formatter.timeStyle = .long
    return formatter
    }
    
    var body: some View {
        //  DatePicker("Select a Date", selection: $selectedDate)
        //      .padding()
        //     .accentColor(Color.red)
        //       .datePickerStyle(
        ///       CompactDatePickerStyle()
        // GraphicalDatePickerStyle()
        //   WheelDatePickerStyle()
        
        //       )
        
        
        
        
        //        DatePicker("Select a date", selection: $selectedDate,
    //displayedComponents: [.date, .hourAndMinute])
        
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker("Select a date",
                       selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
        }
    }
}

struct DatePickerTest_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerTest()
    }
}
