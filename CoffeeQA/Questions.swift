//
//  Questions.swift
//  CoffeeQA
//
//  Created by 7 on 2021/3/27.
//

import Foundation

struct Questions {
    var question: String
    var option0: String
    var option1: String
    var option2: String?
    var option3: String?
    var option4: String?
    var answer: String
}


var questionsArray = [q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11]

let q0 = Questions(question: "咖啡豆採用哪種烘焙法較有助養生？", option0: "美式烘焙（中焙～中淺焙）", option1: "法式烘焙（深焙）", option2: nil, option3: nil, option4: nil, answer: a0)

let q1 = Questions(question: "早上喝咖啡可能有的效果，不包括以下哪項？", option0: "提神", option1: "減肥", option2: "幫助排便", option3: "消水腫", option4: "提高免疫力", answer: a1)

let q2 = Questions(question: "早餐前還是早餐後喝咖啡可以幫助減肥？", option0: "早餐前", option1: "早餐後", option2: nil, option3: nil, option4: nil, answer: a2)

let q3 = Questions(question: "喝咖啡提神，哪種效果較好？", option0: "義式濃縮咖啡", option1: "美式咖啡", option2: "冰滴咖啡", option3: nil, option4: nil, answer: a3)

let q4 = Questions(question: "幾歲可開始喝咖啡？", option0: "1歲", option1: "5歲", option2: "12歲", option3: "18歲", option4: nil, answer: a4)

let q5 = Questions(question: "選喝拿鐵可以保鈣，真的嗎？", option0: "是", option1: "不是", option2: nil , option3: nil, option4: nil, answer: a5)


let q6 = Questions(question: "哪項不是喝咖啡的好處？", option0: "預防心血管疾病", option1: "預防失智", option2: "緩解類風濕性關節炎", option3: "保護肝臟", option4: nil,answer: a6)

let q7 = Questions(question: "喝咖啡時出現噁心想吐、喉嚨酸澀等不適症狀，可能是因為哪項因素？", option0: "咖啡因含量高", option1: "咖啡豆品質差", option2: "咖啡豆烘焙時間太長", option3: "喝的是黑咖啡沒有加奶與糖造成的", option4: nil, answer: a7)

let q8 = Questions(question: "如何研磨咖啡，能獲得較多抗氧化物？", option0: "粗顆粒", option1: "細顆粒", option2: nil, option3: nil, option4: nil, answer: a8)

let q9 = Questions(question: "有些人喝咖啡會覺得胃部不舒服，該如何避免？", option0: "加點鮮奶", option1: "加點果糖", option2: "換喝淺焙咖啡", option3: "改變喝咖啡時間，用餐後再喝", option4: "以上皆對", answer: a9)

let q10 = Questions(question: "喝哪種咖啡較可降低糖尿病風險？", option0: "一般咖啡因咖啡", option1: "低咖啡因咖啡", option2: nil, option3: nil, option4: nil, answer: a10)

let q11 = Questions(question: "咖啡可能讓人膽固醇升高，怎麼做才能減少風險？", option0: "加低脂牛奶", option1: "使用本土咖啡豆", option2: "喝濾泡式咖啡", option3: nil, option4: nil, answer: a11)



