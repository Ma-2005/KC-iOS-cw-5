//
//  ContentView.swift
//  myGrocery
//
//  Created by Mac on 10/08/2022.
//


//3. قم بإضافة ما تريد ان تشتريه مع الصورة مثل الشكل التالي، يجب أن تكون داخل مصفوفة.

//Hint✨: اسم الصورة المعروضة هو نفسه اسم المنتج

//4. استخدم list لعرض المنتجات بهذا الشكل.

//5. علامة الجمع ستضيف عنصر جديد من textField إلى المصفوفة.

//6. علامة الطرح ستزيل أول عنصر في المصفوفة.

//ملاحظة ✨: على الأقل يجب عرض ٥ عناصر.

//بونص✨: علامة الطرح ستزيل العنصر الذي يتم الضغط عليه ، بدلاً من أول عنصر.

import SwiftUI

struct ContentView: View {
    
    @State var GroceryItems = ["chocolate","guava","KitKat","Snickers","tomato"]
    @State var numb = 0
    @State var NewItem = ""
    
    var body: some View {
        VStack{
            List(GroceryItems, id: \.self){ m in
                HStack(spacing: 25){
                Image(m)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    
                    Text(m)
                        .font(.custom("Amiri-BoldItalic", size: 30))
                        
                }
                .onTapGesture {
                    if let selected = GroceryItems.firstIndex(of: m ) {
                        numb = selected
                    }
                }
            }
            HStack{
                Button {
                    GroceryItems.append(NewItem)
                }
                
                label: {
                    Image(systemName: "plus")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.black)
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                }
                TextField("NewItem", text: $NewItem )
                    .textFieldStyle(.roundedBorder)
            
                Button {
                    if GroceryItems.count == 0  {
                        
                    }
                    else
                    {
                        GroceryItems.remove(at: numb )
                    }
                }
                
                label: {
                    Image(systemName: "minus")
                        .font(.title)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.black)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
