/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

/// Delegate method for the morse keyboard view that will allow it to perform
/// actions on whatever text entry you want to use it with. It does not assume
/// any type e.g. UITextField vs UITextView.
protocol MorseKeyboardViewDelegate: class {
    func insertCharacter(_ newCharacter: String)
    func deleteCharacterBeforeCursor()
}

/// Contains all of the logic for handling button taps and translating that into
/// specific actions on the text entry associated with it
class MorseKeyboardView: UIView {
    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var spaceButtonToParentConstraint: NSLayoutConstraint!
    @IBOutlet var spaceButtonToNextKeyboardConstraint: NSLayoutConstraint!
    
    weak var delegate: MorseKeyboardViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setNextKeyboardVisible(false)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setNextKeyboardVisible(false)
    }
    
    func setNextKeyboardVisible(_ visible: Bool) {
        spaceButtonToNextKeyboardConstraint.isActive = visible
        spaceButtonToParentConstraint.isActive = !visible
        nextKeyboardButton.isHidden = !visible
    }
}

// MARK: - Actions
extension MorseKeyboardView {
    
    @IBAction func aPressed(){
        delegate?.insertCharacter("a")
    }
    
    @IBAction func bPressed(){
        delegate?.insertCharacter("b")
    }
    
    @IBAction func cPressed(){
        delegate?.insertCharacter("c")
    }
    
    @IBAction func dPressed(){
        delegate?.insertCharacter("d")
    }
    
    @IBAction func ePressed(){
        delegate?.insertCharacter("e")
    }
    
    @IBAction func fPressed(){
        delegate?.insertCharacter("f")
    }
    
    @IBAction func gPressed(){
        delegate?.insertCharacter("g")
    }
    
    @IBAction func hPressed(){
        delegate?.insertCharacter("h")
    }
    
    @IBAction func iPressed(){
        delegate?.insertCharacter("i")
    }
    
    @IBAction func jPressed(){
        delegate?.insertCharacter("j")
    }
    
    @IBAction func kPressed(){
        delegate?.insertCharacter("k")
    }
    
    @IBAction func lPressed(){
        delegate?.insertCharacter("l")
    }
    
    @IBAction func mPressed(){
        delegate?.insertCharacter("m")
    }
    
    @IBAction func nPressed(){
        delegate?.insertCharacter("n")
    }
    
    @IBAction func oPressed(){
        delegate?.insertCharacter("o")
    }
    
    @IBAction func pPressed(){
        delegate?.insertCharacter("p")
    }
    
    @IBAction func rPressed(){
        delegate?.insertCharacter("r")
    }
    
    @IBAction func sPressed(){
        delegate?.insertCharacter("s")
    }
    
    @IBAction func tPressed(){
        delegate?.insertCharacter("t")
    }
    
    @IBAction func uPressed(){
        delegate?.insertCharacter("u")
    }
    
    @IBAction func wPressed(){
        delegate?.insertCharacter("w")
    }
    
    @IBAction func yPressed(){
        delegate?.insertCharacter("y")
    }
    
    @IBAction func zPressed(){
        delegate?.insertCharacter("z")
    }
    
    
    @IBAction func deletePressed() {
        delegate?.deleteCharacterBeforeCursor()
    }
    
    @IBAction func spacePressed() {
        delegate?.insertCharacter(" ")
    }
}
