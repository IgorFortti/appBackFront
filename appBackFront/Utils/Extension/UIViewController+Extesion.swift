//
//  UIViewController+Extesion.swift
//  appBackFront
//
//  Created by Igor Fortti on 20/02/23.
//

import Foundation
import UIKit

extension UIViewController {
//    Método para terminar a edicao do TextField e recolher o teclado quando tocado fora da tela.
    func dismissKeyBoard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
