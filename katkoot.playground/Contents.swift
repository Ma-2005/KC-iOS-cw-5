import UIKit

let family = ["Mahdi","Adnan","Hussain","Jamal","Yaqoub"]

// قم بطباعة عدد العناصر بالمصفوفة

print(family.count)

//2. قم بتعريف مصفوفة متغيرة باسم evenNumbers، قم بإضافة الأرقام الزوجية من ٢ إلى ١٢ :

var evenNumbers = [2,4,6,8,10,12]

//- قم بمسح ثاني عنصر من مصفوفة evenNumber.

evenNumbers.remove(at: 1)

//- قم باستعمال أمر الإضافة =+ لإضافة مصفوفة أخرى على مصفوفة evenNumbers وهي [16,18,20,22].

evenNumbers += [16,18,20,22]

//- قم بطباعة عنصر عشوائي من عناصر مصفوفة evenNumber.

print(evenNumbers.randomElement())

//- قم بمسح مصفوفة evenNumber بأكملها .

evenNumbers.removeAll()

//3. قم بتعريف مصفوفة متغيرة بإسم Numbers مكونة من الأعداد ١ إلى ٥

var Numbers = [1,2,3,4,5]

//- قم بطباعتها باستخدام For .

for m in Numbers {
    print(m)
}

//- ثم قم بإضافة الأعداد من ٦ إلى ١٠ إلى هذه المصفوفة باستخدام أمر append.

Numbers.append(6)
Numbers.append(7)
Numbers.append(8)
Numbers.append(9)
Numbers.append(10)

//- وأخيراً قم بإعادة طباعتها مرة أخرى باستخدام For .

for h in Numbers {
    print(h)
}

//- بونص ✨ : استخدم if لمعرفة إن كان العدد زوجي وقم بطباعة كل عدد زوجي في جملة. "مساعدة : لمعرفة العدد اذا كان زوجي او فردي فيجب استخدام if وعمل "باقي القسمة على ٢ " واذا كان الناتج = صفر فهو زوجي ، اما اذا كان الناتج = واحد فهو فردي".

for i in Numbers{
    if i  % 2 == 0 {
    print(i)
    }
}

