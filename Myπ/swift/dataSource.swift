//
//  dataSource.swift
//  Myπ
//
//  Created by 123 on 2019/02/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

let p = "1415926535 8979323846 2643383279 5028841971 6939937510 5820974944 5923078164 0628620899 8628034825 34211706798214808651 3282306647 0938446095 5058223172 5359408128 4811174502 8410270193 8521105559 6446229489 54930381964428810975 6659334461 2847564823 3786783165 2712019091 4564856692 3460348610 4543266482 1339360726 02491412737245870066 0631558817 4881520920 9628292540 9171536436 7892590360 0113305305 4882046652 1384146951 94151160943305727036 5759591953 0921861173 8193261179 3105118548 0744623799 6274956735 1885752724 8912279381 83011949129833673362 4406566430 8602139494 6395224737 1907021798 6094370277 0539217176 2931767523 8467481846 76694051320005681271 4526356082 7785771342 7577896091 7363717872 1468440901 2249534301 4654958537 1050792279 68925892354201995611 2129021960 8640344181 5981362977 4771309960 5187072113 4999999837 2978049951 0597317328 16096318595024459455 3469083026 4252230825 3344685035 2619311881 7101000313 7838752886 5875332083 8142061717 76691473035982534904 2875546873 1159562863 8823537875 9375195778 1857780532 1712268066 1300192787 6611195909 2164201989"
let pie = p.replacingOccurrences(of: " ", with: "")

var PieArray = [String]()
let color1 = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
let color2 = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
let color3 = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
let color4 = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
let color5 = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
let color6 = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
let color7 = #colorLiteral(red: 0.9568627477, green: 0.9272491255, blue: 0.2413042167, alpha: 1)
let color8 = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
let color9 = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
let color10 = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
let color11 = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
let color12 = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
let color13 = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
let color14 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
let colors = [color1,color2,color3,color4,color5,color6,color7,color8,color9,color10,color11,color12,color13,color14]
var colorSet = [String:Int]()
var sameColorIndex = 0
var isDifferentColor = true
var skipcount = 0
let redLife = UIImage(named: "redLife")
let greenLife = UIImage(named: "greenLife")
let blueLife = UIImage(named: "blueLife")

var cellHeight:CGFloat = 0
var cellWidth:CGFloat = 0

let uds = UserDefaults.standard

//enum KEY:String {
//    case isDifferentColor = "KEY_isDifferentColor"
//    case colorSet = KEY.colorSet
//    case highScore = "KEY_highScore"
//    case sameColorIndex = "KEY_sameColorIndex"
//}

struct KEY {
    static let skipcount = "KEY_skipcount"
    static let isDifferentColor = "KEY_isDifferentColor"
    static let colorSet = "KEY_colorSet"
    static let highScore = "KEY_highScore"
    static let sameColorIndex = "KEY_sameColorIndex"
}
