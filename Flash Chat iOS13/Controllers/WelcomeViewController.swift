/* WelcomeViewController.swift --> Flash Chat iOS13. Created by Angela Yu on 21/10/2019. */

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "" // Dejamos en blanco la etiqueta del título de la app
        var count = 0.0 // Agregamos el punto decimal para que sea de tipo Double
        let titleText = "⚡️FlashChat" // Usamos Control+Command+Espacio para el teclado de emojis
        for letter in titleText { // Para todos los elementos (letras) que se encuentren en la variable titleText (cadena)...
            /*  Abrimos el timer correcto con la opción que tiene el "Timer" solito, después escribimos un punto y buscamos "scheduledTimer" y elegimos el que tiene "withTimeInterval"
                Necesitamos multiplicar el intervalo por la variable incrementable "count", porque aunque esté dentro de un lop, el tiempo se calcula para todos los ciclos, desde el
                instante en que se inicia la estructura FOR, entonces si no los diferenciamos con esta multiplicación, todas las letras se imprimirían 0.1 segundos después de iniciar
                el ciclo for */
            Timer.scheduledTimer(withTimeInterval: 0.1 * count, repeats: false) { timer in
                self.titleLabel.text?.append(letter) // Usamos el método .append() para ir agregando las letras al atributo "text" de nuestra variable titleLabel.
            }
            count += 1 // Modificamos el contador para que cada letra se imprima en un tiempo distinto e incrementable, desde el inicio del ciclo for.
        }
    }
    
    
    
}
 




/* El siguiente código iba dentro de la función viewDidLoad() y hacía la animación de texto:
 
 titleLabel.text = "" // Dejamos en blanco la etiqueta del título de la app
 var count = 0.0 // Agregamos el punto decimal para que sea de tipo Double
 let titleText = "⚡️FlashChat" // Usamos Control+Command+Espacio para el teclado de emojis
 for letter in titleText { // Para todos los elementos (letras) que se encuentren en la variable titleText (cadena)...
     /*  Abrimos el timer correcto con la opción que tiene el "Timer" solito, después escribimos un punto y buscamos "scheduledTimer" y elegimos el que tiene "withTimeInterval"
         Necesitamos multiplicar el intervalo por la variable incrementable "count", porque aunque esté dentro de un lop, el tiempo se calcula para todos los ciclos, desde el
         instante en que se inicia la estructura FOR, entonces si no los diferenciamos con esta multiplicación, todas las letras se imprimirían 0.1 segundos después de iniciar
         el ciclo for */
     Timer.scheduledTimer(withTimeInterval: 0.1 * count, repeats: false) { timer in
         self.titleLabel.text?.append(letter) // Usamos el método .append() para ir agregando las letras al atributo "text" de nuestra variable titleLabel.
     }
     count += 1 // Modificamos el contador para que cada letra se imprima en un tiempo distinto e incrementable, desde el inicio del ciclo for.
 }
 
 */


/* Este código (completo) era suficiente para crear la animación de texto usando una librería externa con Cocoapods:
 
 import UIKit
 // Debemos importar el módulo (o framework) que estamos utilizando con cocoapods.
 import CLTypingLabel

 class WelcomeViewController: UIViewController {
     
     @IBOutlet weak var titleLabel: CLTypingLabel!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         titleLabel.text = "⚡️FlashChat"
     }
     
 }
 
 */
