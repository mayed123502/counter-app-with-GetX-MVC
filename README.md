# 2 - Route management
## عمل الروت بيحتاج مني فقط اكون مستبدل ال MaterialApp ب GetMaterialApp
                Get.off(()=>const PageOne()) 
                Get.to(() => const PageTow()) 
                Get.back 
                
                return GetMaterialApp(
                    getPages: [
                        GetPage(name: name, page: page),
                        GetPage(name: "pageone", page: () => PageOne()),
                    ],
                 );
    

# ___________________________________________________________________________
