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









