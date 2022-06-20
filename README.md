# 2 - Route management
## عمل الروت بيحتاج مني فقط اكون مستبدل ال MaterialApp ب GetMaterialApp
                Get.off(()=>const PageOne()) 
                Get.to(() => const PageTow()) 
                Get.back 
                
                return GetMaterialApp(
                    getPages: [
                        GetPage(name: name, page: page),
                        GetPage(name: "/pageone", page: () => PageOne()),
                    ],
                 );
                 
                 
                 Get.toNamed("/pageone");
                 Get.offNamed("/pageone");


    

# __________________________________________________________________

# 4 - State management ( Getx - GetBuilder - Obx )


            CounterController _controller = Get.put(CounterController(), permanent: true);
            
            Dependency Injection Controller
            
## هان احنا وفرنا كونترولر بنستخدمه داخل ال onPressed لانه عند الضغط على الزر ما راح يتم اعادة بناء ال Widget 
## بينما في النص الذي سوف يظهر قيمة ال count بنحتاج تحديث للنص وبالتالي اعادة بناء لل Widget 
             _controller.increment();
             _controller.decrement();
                                                                                                             

            GetBuilder<CounterController>(
                builder: (controller) => Text("${controller.count}")),
                
                
            GetX<CounterController>(
                builder: (controller) => Text("${controller.count}")),
                
 ## الفرق بين ال GetBuilder وال GetX انه ال GetX بتتعامل مع ال stream (تدفق البيانات )




            RxInt count = 0.obs;

 ## ال obs يعني حيلاحظ التغييرات الي راح تحصل لما نزيد العداد
 
           RxInt count = 0.obs;

           increment() {
             count++;
            }

          decrement() {
            count--;
           }
           
           
## بدون الحاجة للميثود update

## ال Obx برضو عشان ال stream بختلف كتير عن ال GetX و GetBuilder بحيث انه ما فيه كنترولر

            Obx(() => Text("${_controller.count}")),




# __________________________________________________________________

# 5 - GetBuilder And GetX in Deep

## الفكرة من الدرس انه عند استخدام GetBuilder سوف يتم اعادة بناء ال Widget مرة أخرى عملية Rebuild + عند الخروج من الصفحات الموجود فيها بيانات ومستخدم 
## داخلها GetX يتم عمل "deleted from memory" أي يتم حذف قيمة المتغييرات الموجودة



## في حالة كان عندي صفحة فيها أكثر من GetBuilder أنا مش محتاج داخل كل كنترولر أعمل 
    init: CounterController
## فقط بعمل لمرة واحدة 


## اما اذا كان كل GetBuilder متصل ب Controller مختلف فهاي الحالة بحتاج اعمل لكل GetBuilder متغيير init للكنترولر الخاص فيه 

## في حال كان عندي صفحة فيها 3 GetBuilder  مثلا بيعرضوا 3 نصوص على سبيل المثال وكان عندي 3 بوتن لتغيير النص الموجود بالنصوص 
## في حال ضغطت على اي زر من ال 3 راح يعمل Rebuild ل 3 نصوص 

# ليش ؟ 

## لانه راح يتم استدعاء الميثود update الي راح تروح لكل GetBuilder بتستمع لنفس ال Controller  وتعمل اله Rebuild 

## في حال كان عندي أكثر من  GetX راح يتم عمل Rebuild  ل GetX واحد فقط


# __________________________________________________________________


# 6 - Dependency Injection ( Get put - Get find - Get lazyPut )

## ال Dependency Injection باختصار عملية حقن  instance من أحد ال Classes داخل Class أخر

           Get.put(CounterController());
           
           CounterController _controller = Get.put(CounterController(), permanent: true);
           
## ال permanent بلغي قصة ال "deleted from memory" وبحفظ القيم في حالة الخروج من الصفحة 
           
           

            Get.lazyPut(() => null);
            
            
## ال lazyPut بتفرق عن ال put انه ما بتم عمل انشاء الها الا وقت الحاجة عكس ال put الي بتم عمل انشاء وتهيئة لها بمجرد فتح الصفحة


           
