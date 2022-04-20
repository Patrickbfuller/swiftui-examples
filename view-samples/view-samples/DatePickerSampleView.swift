//
//  DatePickerSampleView.swift
//  view-samples
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct DatePickerSampleView: View {
    
    @State var selectedDate = Date()
    
    var body: some View {
        DatePicker("Select date", selection: $selectedDate)
    }
}

struct DatePickerSampleView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSampleView()
    }
}
