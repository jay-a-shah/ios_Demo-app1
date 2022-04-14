//
//  DatePickerView.swift
//  Demo app
//
//  Created by Jay Shah on 09/03/22.
//

import UIKit

class DatePickerView: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var textViewSelectDate: UITextField!
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewSelectDate.delegate = self
    }
}

//MARK: - UITextFieldDelegate
extension DatePickerView: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.openDatePicker()
    }
}

//MARK: OpenDatePicker
extension DatePickerView{
    
    func openDatePicker(){
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        textViewSelectDate.inputView = datePicker
        let toolBar = UIToolbar(frame: CGRect(x: Constants.ZERO, y: Constants.ZERO, width: Int(self.view.frame.width), height: Constants.THIRTY))
        let btnCancel = UIBarButtonItem(title: Constants.cancelBarButton, style: .plain , target: self, action: #selector(self.onClickCancelBtn))
        let btnDone = UIBarButtonItem(title: Constants.doneBarButton, style: .plain , target: self, action: #selector(self.onClickDoneBtn))
        toolBar.setItems([btnCancel,btnDone], animated: true)
        textViewSelectDate.inputAccessoryView = toolBar
    }
    
    @objc func onClickCancelBtn(){
        textViewSelectDate.resignFirstResponder()
    }
    
    @objc func onClickDoneBtn(){
        if let datePicker = textViewSelectDate.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            textViewSelectDate.text = dateFormatter.string(from: datePicker.date)
        }
        textViewSelectDate.resignFirstResponder()
    }
}
