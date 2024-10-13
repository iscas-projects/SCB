(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2018 0)
(declare-sort var848 0)
(declare-sort var3310 0)
(declare-sort var298 0)
(declare-sort var3239 0)
(declare-sort var1767 0)
(declare-sort var1730 0)
(declare-sort var2232 0)
(declare-sort var3803 0)
(declare-sort var720 0)
(declare-sort var2747 0)
(declare-sort var1528 0)
(declare-sort var2571 0)
(declare-sort var2479 0)
(declare-sort var1784 0)
(declare-sort var2898 0)
(declare-sort var2430 0)
(declare-sort var1332 0)
(declare-sort var2488 0)
(declare-sort var3396 0)
(declare-sort var2094 0)
(declare-sort var3659 0)
(declare-sort var385 0)
(declare-sort var3444 0)
(declare-sort var1178 0)
(declare-sort var3383 0)
(declare-sort var31 0)
(declare-sort var486 0)
(declare-sort var616 0)
(declare-sort var261 0)
(declare-sort var2991 0)
(declare-sort var3580 0)
(declare-sort var3900 0)
(declare-sort var560 0)
(declare-sort var2538 0)
(declare-sort var726 0)
(declare-sort var3654 0)
(declare-sort var2188 0)
(declare-sort var3550 0)
(declare-sort var1169 0)
(declare-sort var1166 0)
(declare-sort var3732 0)
(declare-sort var702 0)
(declare-sort var3341 0)
(declare-sort var3097 0)
(declare-sort var2959 0)
(declare-sort var2432 0)
(declare-sort var3049 0)
(declare-sort var1838 0)
(declare-sort var1373 0)
(declare-sort var1413 0)
(declare-sort var3370 0)
(declare-sort var1833 0)
(declare-sort var3366 0)
(declare-sort var2694 0)
(declare-sort var2325 0)
(declare-sort var1785 0)
(declare-sort var597 0)
(declare-sort var2742 0)
(declare-sort var2524 0)
(declare-sort var1711 0)
(declare-sort var3719 0)
(declare-sort var1868 0)
(declare-sort var319 0)
(declare-sort var3887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2018!class ClassObject)
(declare-const var848!class ClassObject)
(declare-const var3310!class ClassObject)
(declare-const var298!class ClassObject)
(declare-const var3239!class ClassObject)
(declare-const var1767!class ClassObject)
(declare-const var1730!class ClassObject)
(declare-const var2232!class ClassObject)
(declare-const var3803!class ClassObject)
(declare-const var720!class ClassObject)
(declare-const var2747!class ClassObject)
(declare-const var1528!class ClassObject)
(declare-const var2571!class ClassObject)
(declare-const var2479!class ClassObject)
(declare-const var1784!class ClassObject)
(declare-const var2898!class ClassObject)
(declare-const var2430!class ClassObject)
(declare-const var1332!class ClassObject)
(declare-const var2488!class ClassObject)
(declare-const var3396!class ClassObject)
(declare-const var2094!class ClassObject)
(declare-const var3659!class ClassObject)
(declare-const var385!class ClassObject)
(declare-const var3444!class ClassObject)
(declare-const var1178!class ClassObject)
(declare-const var3383!class ClassObject)
(declare-const var31!class ClassObject)
(declare-const var486!class ClassObject)
(declare-const var616!class ClassObject)
(declare-const var261!class ClassObject)
(declare-const var2991!class ClassObject)
(declare-const var3580!class ClassObject)
(declare-const var3900!class ClassObject)
(declare-const var560!class ClassObject)
(declare-const var2538!class ClassObject)
(declare-const var726!class ClassObject)
(declare-const var3654!class ClassObject)
(declare-const var3550!class ClassObject)
(declare-const var702!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var3049!class ClassObject)
(declare-const var1838!class ClassObject)
(declare-const var1373!class ClassObject)
(declare-const var1413!class ClassObject)
(declare-const var3370!class ClassObject)
(declare-const var1833!class ClassObject)
(declare-const var3366!class ClassObject)
(declare-const var2694!class ClassObject)
(declare-const var2325!class ClassObject)
(declare-const var1785!class ClassObject)
(declare-const var597!class ClassObject)
(declare-const var2742!class ClassObject)
(declare-const var2524!class ClassObject)
(declare-const var1711!class ClassObject)
(declare-const var3719!class ClassObject)
(declare-const var1868!class ClassObject)
(declare-const var319!class ClassObject)
(declare-const __Array__Int__var3654__!class ClassObject)
(declare-const __Array__Int__var1784__!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1169-init () var1169)
(declare-fun <init>/-201242697 (var1169) void)
(declare-fun cast-from-var1169-to-var1166 (var1169) var1166)
(declare-fun var3732-init () var3732)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/1643362048 (var3732 String String (Array Int String)) void)
(declare-fun var1166_put/1464166817 (var1166 var3341 var3341) var3341)
(declare-fun cast-from-var3732-to-var3341 (var3732) var3341)
(declare-fun cast-from-__Array__Int__String__-to-var3341 ((Array Int String)) var3341)
(declare-fun cast-from-ClassObject-to-var3341 (ClassObject) var3341)
(declare-fun cast-from-String-to-var3341 (String) var3341)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var3887-init () var3887)
(declare-fun <init>/-974988547 (var3887) void)
(declare-const var2188-DESC_FIELD_WRITER String)
(declare-const var2188-DESC_FIELD_READER String)
(declare-const var2188-TYPE_JSON_READER String)
(declare-const var2188-TYPE_JSON_WRITER String)
(declare-const var2188-TYPE_OBJECT_READER String)
(declare-const var2188-TYPE_OBJECT_WRITER String)
(declare-const var2188-paramMapping var1166)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2188-descMapping var1166)
(declare-const Int-TYPE ClassObject)
(declare-const var3097-TYPE ClassObject)
(declare-const var2959-TYPE ClassObject)
(declare-const var2432-TYPE ClassObject)
(declare-const Float32-TYPE ClassObject)
(declare-const Float64-TYPE ClassObject)
(declare-const var2188-typeMapping var1166)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2188-DESC_JSON_WRITER String)
(declare-const var2188-DESC_OBJECT_WRITER String)
(declare-const var2188-DESC_FIELD_WRITER_ARRAY String)
(declare-const var2188-DESC_FIELD_READER_ARRAY String)
(define-const var5 ClassObject var2018!class) ; Statement: $r0 = class "Lcom/alibaba/fastjson2/util/JDKUtils;" 
(assert true)
(define-const var573 String (getName/-1958580599 var5)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1788 String (replace/1524665721 var573 46 47)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2605 String var1788) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_UNSAFE_UTILS> = $r2 
(define-const var792 ClassObject var848!class) ; Statement: $r3 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;" 
(assert true)
(define-const var69 String (getName/-1958580599 var792)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3804 String (replace/1524665721 var69 46 47)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var1291 String var3804) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> = $r5 
(define-const var2114 ClassObject var3310!class) ; Statement: $r6 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter1;" 
(assert true)
(define-const var2415 String (getName/-1958580599 var2114)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1337 String (replace/1524665721 var2415 46 47)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2794 String var1337) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> = $r8 
(define-const var3025 ClassObject var298!class) ; Statement: $r9 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter2;" 
(assert true)
(define-const var258 String (getName/-1958580599 var3025)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3427 String (replace/1524665721 var258 46 47)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2828 String var3427) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> = $r11 
(define-const var1482 ClassObject var3239!class) ; Statement: $r12 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter3;" 
(assert true)
(define-const var2164 String (getName/-1958580599 var1482)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1234 String (replace/1524665721 var2164 46 47)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var496 String var1234) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> = $r14 
(define-const var262 ClassObject var1767!class) ; Statement: $r15 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter4;" 
(assert true)
(define-const var3772 String (getName/-1958580599 var262)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var569 String (replace/1524665721 var3772 46 47)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3165 String var569) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> = $r17 
(define-const var3507 ClassObject var1730!class) ; Statement: $r18 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter5;" 
(assert true)
(define-const var1448 String (getName/-1958580599 var3507)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2590 String (replace/1524665721 var1448 46 47)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var531 String var2590) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> = $r20 
(define-const var142 ClassObject var2232!class) ; Statement: $r21 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter6;" 
(assert true)
(define-const var3257 String (getName/-1958580599 var142)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3765 String (replace/1524665721 var3257 46 47)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2865 String var3765) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6> = $r23 
(define-const var2821 ClassObject var3803!class) ; Statement: $r24 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter7;" 
(assert true)
(define-const var1487 String (getName/-1958580599 var2821)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1619 String (replace/1524665721 var1487 46 47)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var655 String var1619) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> = $r26 
(define-const var3447 ClassObject var720!class) ; Statement: $r27 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter8;" 
(assert true)
(define-const var975 String (getName/-1958580599 var3447)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var327 String (replace/1524665721 var975 46 47)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var77 String var327) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> = $r29 
(define-const var1370 ClassObject var2747!class) ; Statement: $r30 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter9;" 
(assert true)
(define-const var3504 String (getName/-1958580599 var1370)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1427 String (replace/1524665721 var3504 46 47)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var254 String var1427) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> = $r32 
(define-const var3210 ClassObject var1528!class) ; Statement: $r33 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter10;" 
(assert true)
(define-const var608 String (getName/-1958580599 var3210)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3582 String (replace/1524665721 var608 46 47)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var470 String var3582) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> = $r35 
(define-const var3360 ClassObject var2571!class) ; Statement: $r36 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter11;" 
(assert true)
(define-const var575 String (getName/-1958580599 var3360)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var519 String (replace/1524665721 var575 46 47)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var568 String var519) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> = $r38 
(define-const var3405 ClassObject var2479!class) ; Statement: $r39 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter12;" 
(assert true)
(define-const var3968 String (getName/-1958580599 var3405)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var74 String (replace/1524665721 var3968 46 47)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var1809 String var74) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> = $r41 
(define-const var605 ClassObject var1784!class) ; Statement: $r42 = class "Lcom/alibaba/fastjson2/reader/FieldReader;" 
(assert true)
(define-const var3387 String (getName/-1958580599 var605)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2952 String (replace/1524665721 var3387 46 47)) ; Statement: $r44 = virtualinvoke $r43.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var247 String var2952) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_READE> = $r44 
(define-const var3487 ClassObject var2898!class) ; Statement: $r45 = class "Lcom/alibaba/fastjson2/JSONReader;" 
(assert true)
(define-const var3219 String (getName/-1958580599 var3487)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1050 String (replace/1524665721 var3219 46 47)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var427 String var1050) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> = $r47 
(define-const var3212 ClassObject var2430!class) ; Statement: $r48 = class "Lcom/alibaba/fastjson2/reader/ObjectReader;" 
(assert true)
(define-const var2974 String (getName/-1958580599 var3212)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2978 String (replace/1524665721 var2974 46 47)) ; Statement: $r50 = virtualinvoke $r49.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3558 String var2978) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER> = $r50 
(define-const var1153 ClassObject var1332!class) ; Statement: $r51 = class "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;" 
(assert true)
(define-const var2789 String (getName/-1958580599 var1153)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3617 String (replace/1524665721 var2789 46 47)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var582 String var3617) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> = $r53 
(define-const var2431 ClassObject var2488!class) ; Statement: $r54 = class "Lcom/alibaba/fastjson2/reader/ObjectReader1;" 
(assert true)
(define-const var2253 String (getName/-1958580599 var2431)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2569 String (replace/1524665721 var2253 46 47)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2585 String var2569) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_1> = $r56 
(define-const var3351 ClassObject var3396!class) ; Statement: $r57 = class "Lcom/alibaba/fastjson2/reader/ObjectReader2;" 
(assert true)
(define-const var376 String (getName/-1958580599 var3351)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var716 String (replace/1524665721 var376 46 47)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var1897 String var716) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_2> = $r59 
(define-const var84 ClassObject var2094!class) ; Statement: $r60 = class "Lcom/alibaba/fastjson2/reader/ObjectReader3;" 
(assert true)
(define-const var357 String (getName/-1958580599 var84)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2617 String (replace/1524665721 var357 46 47)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var386 String var2617) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_3> = $r62 
(define-const var3357 ClassObject var3659!class) ; Statement: $r63 = class "Lcom/alibaba/fastjson2/reader/ObjectReader4;" 
(assert true)
(define-const var2772 String (getName/-1958580599 var3357)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1819 String (replace/1524665721 var2772 46 47)) ; Statement: $r65 = virtualinvoke $r64.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3208 String var1819) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_4> = $r65 
(define-const var2435 ClassObject var385!class) ; Statement: $r66 = class "Lcom/alibaba/fastjson2/reader/ObjectReader5;" 
(assert true)
(define-const var2633 String (getName/-1958580599 var2435)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var939 String (replace/1524665721 var2633 46 47)) ; Statement: $r68 = virtualinvoke $r67.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var266 String var939) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_5> = $r68 
(define-const var947 ClassObject var3444!class) ; Statement: $r69 = class "Lcom/alibaba/fastjson2/reader/ObjectReader6;" 
(assert true)
(define-const var1197 String (getName/-1958580599 var947)) ; Statement: $r70 = virtualinvoke $r69.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2743 String (replace/1524665721 var1197 46 47)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2678 String var2743) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_6> = $r71 
(define-const var3943 ClassObject var1178!class) ; Statement: $r72 = class "Lcom/alibaba/fastjson2/reader/ObjectReader7;" 
(assert true)
(define-const var2583 String (getName/-1958580599 var3943)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var750 String (replace/1524665721 var2583 46 47)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2157 String var750) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_7> = $r74 
(define-const var660 ClassObject var3383!class) ; Statement: $r75 = class "Lcom/alibaba/fastjson2/reader/ObjectReader8;" 
(assert true)
(define-const var3489 String (getName/-1958580599 var660)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2988 String (replace/1524665721 var3489 46 47)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2150 String var2988) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_8> = $r77 
(define-const var579 ClassObject var31!class) ; Statement: $r78 = class "Lcom/alibaba/fastjson2/reader/ObjectReader9;" 
(assert true)
(define-const var3864 String (getName/-1958580599 var579)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var610 String (replace/1524665721 var3864 46 47)) ; Statement: $r80 = virtualinvoke $r79.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3591 String var610) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_9> = $r80 
(define-const var497 ClassObject var486!class) ; Statement: $r81 = class "Lcom/alibaba/fastjson2/reader/ObjectReader10;" 
(assert true)
(define-const var3053 String (getName/-1958580599 var497)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2906 String (replace/1524665721 var3053 46 47)) ; Statement: $r83 = virtualinvoke $r82.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3965 String var2906) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_10> = $r83 
(define-const var732 ClassObject var616!class) ; Statement: $r84 = class "Lcom/alibaba/fastjson2/reader/ObjectReader11;" 
(assert true)
(define-const var368 String (getName/-1958580599 var732)) ; Statement: $r85 = virtualinvoke $r84.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2085 String (replace/1524665721 var368 46 47)) ; Statement: $r86 = virtualinvoke $r85.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var1085 String var2085) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_11> = $r86 
(define-const var917 ClassObject var261!class) ; Statement: $r87 = class "Lcom/alibaba/fastjson2/reader/ObjectReader12;" 
(assert true)
(define-const var134 String (getName/-1958580599 var917)) ; Statement: $r88 = virtualinvoke $r87.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1335 String (replace/1524665721 var134 46 47)) ; Statement: $r89 = virtualinvoke $r88.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var871 String var1335) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_12> = $r89 
(define-const var2847 ClassObject var2991!class) ; Statement: $r90 = class "Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;" 
(assert true)
(define-const var3754 String (getName/-1958580599 var2847)) ; Statement: $r91 = virtualinvoke $r90.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2183 String (replace/1524665721 var3754 46 47)) ; Statement: $r92 = virtualinvoke $r91.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3903 String var2183) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_BYTE_ARRAY_VALUE_CONSUMER> = $r92 
(define-const var815 ClassObject var3580!class) ; Statement: $r93 = class "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;" 
(assert true)
(define-const var1380 String (getName/-1958580599 var815)) ; Statement: $r94 = virtualinvoke $r93.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var483 String (replace/1524665721 var1380 46 47)) ; Statement: $r95 = virtualinvoke $r94.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var378 String var483) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_CHAR_ARRAY_VALUE_CONSUMER> = $r95 
(define-const var3063 ClassObject var3900!class) ; Statement: $r96 = class "Lcom/alibaba/fastjson2/util/TypeUtils;" 
(assert true)
(define-const var3640 String (getName/-1958580599 var3063)) ; Statement: $r97 = virtualinvoke $r96.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3327 String (replace/1524665721 var3640 46 47)) ; Statement: $r98 = virtualinvoke $r97.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2167 String var3327) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_TYPE_UTILS> = $r98 
(define-const var125 ClassObject var560!class) ; Statement: $r99 = class "Lcom/alibaba/fastjson2/util/DateUtils;" 
(assert true)
(define-const var3248 String (getName/-1958580599 var125)) ; Statement: $r100 = virtualinvoke $r99.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2103 String (replace/1524665721 var3248 46 47)) ; Statement: $r101 = virtualinvoke $r100.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var2892 String var2103) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_DATE_UTILS> = $r101 
(define-const var1188 ClassObject var2538!class) ; Statement: $r102 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter;" 
(assert true)
(define-const var1032 String (getName/-1958580599 var1188)) ; Statement: $r103 = virtualinvoke $r102.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2376 String (replace/1524665721 var1032 46 47)) ; Statement: $r104 = virtualinvoke $r103.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var1192 String var2376) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER> = $r104 
(define-const var2059 ClassObject var726!class) ; Statement: $r105 = class "Lcom/alibaba/fastjson2/JSONWriter;" 
(assert true)
(define-const var3753 String (getName/-1958580599 var2059)) ; Statement: $r106 = virtualinvoke $r105.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2089 String (replace/1524665721 var3753 46 47)) ; Statement: $r107 = virtualinvoke $r106.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var922 String var2089) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> = $r107 
(define-const var1592 ClassObject var3654!class) ; Statement: $r108 = class "Lcom/alibaba/fastjson2/writer/FieldWriter;" 
(assert true)
(define-const var1342 String (getName/-1958580599 var1592)) ; Statement: $r109 = virtualinvoke $r108.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1027 String (replace/1524665721 var1342 46 47)) ; Statement: $r110 = virtualinvoke $r109.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(define-const var3701 String var1027) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> = $r110 
(define-const var283 String String-init) ; Statement: $r111 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r111.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(assert true)
(define-const var1873 String (append/-1166366385 var283!1 76)) ; Statement: $r115 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var283!2 String)
(assert (str.prefixof var283!1 var283!2))
(define-const var2640 ClassObject var3654!class) ; Statement: $r112 = class "Lcom/alibaba/fastjson2/writer/FieldWriter;" 
(assert true)
(define-const var1720 String (getName/-1958580599 var2640)) ; Statement: $r113 = virtualinvoke $r112.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2393 String (replace/1524665721 var1720 46 47)) ; Statement: $r114 = virtualinvoke $r113.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3987 String (append/672562846 var1873 var2393)) ; Statement: $r116 = virtualinvoke $r115.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r114) 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 var2393)))
(assert true)
(define-const var3398 String (append/-1166366385 var3987 59)) ; Statement: $r117 = virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var3987!1 String)
(assert (str.prefixof var3987 var3987!1))
(assert true)
(define-const var3824 String (toString/-2075883882 var3398)) ; Statement: $r118 = virtualinvoke $r117.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var914 String var3824) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> = $r118 
(define-const var3490 String String-init) ; Statement: $r119 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3490)) ; Statement: specialinvoke $r119.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3490!1 String)
(assert (= var3490!1 ""))
(assert true)
(define-const var3041 String (append/672562846 var3490!1 "[")) ; Statement: $r121 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3490!2 String)
(assert (= var3490!2 (str.++ var3490!1 "[")))
(define-const var2099 String var2188-DESC_FIELD_WRITER) ; Statement: $r120 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> 
(assert true)
(define-const var18 String (append/672562846 var3041 var2099)) ; Statement: $r122 = virtualinvoke $r121.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r120) 
(declare-const var3041!1 String)
(assert (= var3041!1 (str.++ var3041 var2099)))
(assert true)
(define-const var2453 String (toString/-2075883882 var18)) ; Statement: $r123 = virtualinvoke $r122.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var945 String var2453) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY> = $r123 
(define-const var361 String String-init) ; Statement: $r124 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var361)) ; Statement: specialinvoke $r124.<java.lang.StringBuilder: void <init>()>() 
(declare-const var361!1 String)
(assert (= var361!1 ""))
(assert true)
(define-const var2032 String (append/-1166366385 var361!1 76)) ; Statement: $r128 = virtualinvoke $r124.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var361!2 String)
(assert (str.prefixof var361!1 var361!2))
(define-const var1183 ClassObject var1784!class) ; Statement: $r125 = class "Lcom/alibaba/fastjson2/reader/FieldReader;" 
(assert true)
(define-const var2573 String (getName/-1958580599 var1183)) ; Statement: $r126 = virtualinvoke $r125.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3259 String (replace/1524665721 var2573 46 47)) ; Statement: $r127 = virtualinvoke $r126.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var2520 String (append/672562846 var2032 var3259)) ; Statement: $r129 = virtualinvoke $r128.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r127) 
(declare-const var2032!1 String)
(assert (= var2032!1 (str.++ var2032 var3259)))
(assert true)
(define-const var2831 String (append/-1166366385 var2520 59)) ; Statement: $r130 = virtualinvoke $r129.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var2520!1 String)
(assert (str.prefixof var2520 var2520!1))
(assert true)
(define-const var489 String (toString/-2075883882 var2831)) ; Statement: $r131 = virtualinvoke $r130.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1341 String var489) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER> = $r131 
(define-const var2381 String String-init) ; Statement: $r132 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2381)) ; Statement: specialinvoke $r132.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2381!1 String)
(assert (= var2381!1 ""))
(assert true)
(define-const var3942 String (append/672562846 var2381!1 "[")) ; Statement: $r134 = virtualinvoke $r132.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2381!2 String)
(assert (= var2381!2 (str.++ var2381!1 "[")))
(define-const var1823 String var2188-DESC_FIELD_READER) ; Statement: $r133 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER> 
(assert true)
(define-const var2601 String (append/672562846 var3942 var1823)) ; Statement: $r135 = virtualinvoke $r134.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r133) 
(declare-const var3942!1 String)
(assert (= var3942!1 (str.++ var3942 var1823)))
(assert true)
(define-const var774 String (toString/-2075883882 var2601)) ; Statement: $r136 = virtualinvoke $r135.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3664 String var774) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY> = $r136 
(define-const var2082 String String-init) ; Statement: $r137 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2082)) ; Statement: specialinvoke $r137.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2082!1 String)
(assert (= var2082!1 ""))
(assert true)
(define-const var798 String (append/-1166366385 var2082!1 76)) ; Statement: $r139 = virtualinvoke $r137.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var2082!2 String)
(assert (str.prefixof var2082!1 var2082!2))
(define-const var252 String var2188-TYPE_JSON_READER) ; Statement: $r138 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> 
(assert true)
(define-const var533 String (append/672562846 var798 var252)) ; Statement: $r140 = virtualinvoke $r139.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r138) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var252)))
(assert true)
(define-const var2953 String (append/-1166366385 var533 59)) ; Statement: $r141 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var533!1 String)
(assert (str.prefixof var533 var533!1))
(assert true)
(define-const var3739 String (toString/-2075883882 var2953)) ; Statement: $r142 = virtualinvoke $r141.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2710 String var3739) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER> = $r142 
(define-const var1231 String String-init) ; Statement: $r143 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1231)) ; Statement: specialinvoke $r143.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1231!1 String)
(assert (= var1231!1 ""))
(assert true)
(define-const var2614 String (append/-1166366385 var1231!1 76)) ; Statement: $r145 = virtualinvoke $r143.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var1231!2 String)
(assert (str.prefixof var1231!1 var1231!2))
(define-const var1607 String var2188-TYPE_JSON_WRITER) ; Statement: $r144 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
(assert true)
(define-const var869 String (append/672562846 var2614 var1607)) ; Statement: $r146 = virtualinvoke $r145.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r144) 
(declare-const var2614!1 String)
(assert (= var2614!1 (str.++ var2614 var1607)))
(assert true)
(define-const var2065 String (append/-1166366385 var869 59)) ; Statement: $r147 = virtualinvoke $r146.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var869!1 String)
(assert (str.prefixof var869 var869!1))
(assert true)
(define-const var2981 String (toString/-2075883882 var2065)) ; Statement: $r148 = virtualinvoke $r147.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3592 String var2981) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER> = $r148 
(define-const var3695 String String-init) ; Statement: $r149 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3695)) ; Statement: specialinvoke $r149.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3695!1 String)
(assert (= var3695!1 ""))
(assert true)
(define-const var246 String (append/-1166366385 var3695!1 76)) ; Statement: $r151 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var3695!2 String)
(assert (str.prefixof var3695!1 var3695!2))
(define-const var2905 String var2188-TYPE_OBJECT_READER) ; Statement: $r150 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER> 
(assert true)
(define-const var1724 String (append/672562846 var246 var2905)) ; Statement: $r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r150) 
(declare-const var246!1 String)
(assert (= var246!1 (str.++ var246 var2905)))
(assert true)
(define-const var127 String (append/-1166366385 var1724 59)) ; Statement: $r153 = virtualinvoke $r152.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var1724!1 String)
(assert (str.prefixof var1724 var1724!1))
(assert true)
(define-const var2853 String (toString/-2075883882 var127)) ; Statement: $r154 = virtualinvoke $r153.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3391 String var2853) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_READER> = $r154 
(define-const var2568 String String-init) ; Statement: $r155 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2568)) ; Statement: specialinvoke $r155.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2568!1 String)
(assert (= var2568!1 ""))
(assert true)
(define-const var1113 String (append/-1166366385 var2568!1 76)) ; Statement: $r157 = virtualinvoke $r155.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var2568!2 String)
(assert (str.prefixof var2568!1 var2568!2))
(define-const var1850 String var2188-TYPE_OBJECT_WRITER) ; Statement: $r156 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER> 
(assert true)
(define-const var1744 String (append/672562846 var1113 var1850)) ; Statement: $r158 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r156) 
(declare-const var1113!1 String)
(assert (= var1113!1 (str.++ var1113 var1850)))
(assert true)
(define-const var2238 String (append/-1166366385 var1744 59)) ; Statement: $r159 = virtualinvoke $r158.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var1744!1 String)
(assert (str.prefixof var1744 var1744!1))
(assert true)
(define-const var209 String (toString/-2075883882 var2238)) ; Statement: $r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3734 String var209) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER> = $r160 
(define-const var894 String String-init) ; Statement: $r161 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var894)) ; Statement: specialinvoke $r161.<java.lang.StringBuilder: void <init>()>() 
(declare-const var894!1 String)
(assert (= var894!1 ""))
(assert true)
(define-const var413 String (append/-1166366385 var894!1 76)) ; Statement: $r165 = virtualinvoke $r161.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var894!2 String)
(assert (str.prefixof var894!1 var894!2))
(define-const var2679 ClassObject var3550!class) ; Statement: $r162 = class "Lcom/alibaba/fastjson2/schema/JSONSchema;" 
(assert true)
(define-const var993 String (getName/-1958580599 var2679)) ; Statement: $r163 = virtualinvoke $r162.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1368 String (replace/1524665721 var993 46 47)) ; Statement: $r164 = virtualinvoke $r163.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var1826 String (append/672562846 var413 var1368)) ; Statement: $r166 = virtualinvoke $r165.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r164) 
(declare-const var413!1 String)
(assert (= var413!1 (str.++ var413 var1368)))
(assert true)
(define-const var2564 String (append/-1166366385 var1826 59)) ; Statement: $r167 = virtualinvoke $r166.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var1826!1 String)
(assert (str.prefixof var1826 var1826!1))
(assert true)
(define-const var1151 String (toString/-2075883882 var2564)) ; Statement: $r168 = virtualinvoke $r167.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1928 String var1151) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSONSCHEMA> = $r168 
(define-const var1710 var1169 var1169-init) ; Statement: $r169 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1710)) ; Statement: specialinvoke $r169.<java.util.HashMap: void <init>()>() 

(declare-const var1710!1 var1169)
(define-const var3399 var1166 (cast-from-var1169-to-var1166 var1710!1)) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> = $r169 
(define-const var181 var1169 var1169-init) ; Statement: $r170 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var181)) ; Statement: specialinvoke $r170.<java.util.HashMap: void <init>()>() 

(declare-const var181!1 var1169)
(define-const var3345 var1166 (cast-from-var1169-to-var1166 var181!1)) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> = $r170 
(define-const var3247 var1169 var1169-init) ; Statement: $r171 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3247)) ; Statement: specialinvoke $r171.<java.util.HashMap: void <init>()>() 

(declare-const var3247!1 var1169)
(define-const var3973 var1166 (cast-from-var1169-to-var1166 var3247!1)) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> = $r171 
(define-const var2962 var1166 var2188-paramMapping) ; Statement: $r174 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> 
(define-const var1059 var3732 var3732-init) ; Statement: $r172 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo 
(define-const var951 ClassObject var702!class) ; Statement: $r173 = class "Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;" 
(assert true)
(define-const var2611 String (getName/-1958580599 var951)) ; Statement: $r176 = virtualinvoke $r173.<java.lang.Class: java.lang.String getName()>() 
(define-const var2668 (Array Int String) arr-String-init) ; Statement: $r175 = newarray (java.lang.String)[3] 
(declare-const var2668!1 (Array Int String))
(assert (not (= var2668!1 null-__Array__Int__String__)))
(assert (= (select var2668!1 0) "[Ljava.lang.reflect.Type;")) ; Statement: $r175[0] = "[Ljava.lang.reflect.Type;" 
(declare-const var2668!2 (Array Int String))
(assert (not (= var2668!2 null-__Array__Int__String__)))
(assert (= (select var2668!2 1) "java.lang.reflect.Type")) ; Statement: $r175[1] = "java.lang.reflect.Type" 
(declare-const var2668!3 (Array Int String))
(assert (not (= var2668!3 null-__Array__Int__String__)))
(assert (= (select var2668!3 2) "java.lang.reflect.Type")) ; Statement: $r175[2] = "java.lang.reflect.Type" 
(assert true)
;(assert (<init>/1643362048 var1059 var2611 "<init>" var2668!3)) ; Statement: specialinvoke $r172.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>($r176, "<init>", $r175) 

(declare-const var1059!1 var3732)
(declare-const var2611!1 String)
(declare-const var3642 String)
(declare-const var2668!4 (Array Int String))
(define-const var1889 (Array Int String) arr-String-init) ; Statement: $r177 = newarray (java.lang.String)[3] 
(declare-const var1889!1 (Array Int String))
(assert (not (= var1889!1 null-__Array__Int__String__)))
(assert (= (select var1889!1 0) "actualTypeArguments")) ; Statement: $r177[0] = "actualTypeArguments" 
(declare-const var1889!2 (Array Int String))
(assert (not (= var1889!2 null-__Array__Int__String__)))
(assert (= (select var1889!2 1) "ownerType")) ; Statement: $r177[1] = "ownerType" 
(declare-const var1889!3 (Array Int String))
(assert (not (= var1889!3 null-__Array__Int__String__)))
(assert (= (select var1889!3 2) "rawType")) ; Statement: $r177[2] = "rawType" 
;(assert (var1166_put/1464166817 var2962 (cast-from-var3732-to-var3341 var1059!1) (cast-from-__Array__Int__String__-to-var3341 var1889!3))) ; Statement: interfaceinvoke $r174.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r172, $r177) 

(declare-const var2962!1 var1166)
(declare-const var1059!2 var3732)
(declare-const var1889!4 (Array Int String))
(define-const var1295 var1166 var2188-paramMapping) ; Statement: $r180 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> 
(define-const var1352 var3732 var3732-init) ; Statement: $r178 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo 
(define-const var3077 (Array Int String) arr-String-init) ; Statement: $r179 = newarray (java.lang.String)[3] 
(declare-const var3077!1 (Array Int String))
(assert (not (= var3077!1 null-__Array__Int__String__)))
(assert (= (select var3077!1 0) "java.lang.Object")) ; Statement: $r179[0] = "java.lang.Object" 
(declare-const var3077!2 (Array Int String))
(assert (not (= var3077!2 null-__Array__Int__String__)))
(assert (= (select var3077!2 1) "java.lang.Object")) ; Statement: $r179[1] = "java.lang.Object" 
(declare-const var3077!3 (Array Int String))
(assert (not (= var3077!3 null-__Array__Int__String__)))
(assert (= (select var3077!3 2) "java.lang.Object")) ; Statement: $r179[2] = "java.lang.Object" 
(assert true)
;(assert (<init>/1643362048 var1352 "org.apache.commons.lang3.tuple.Triple" "of" var3077!3)) ; Statement: specialinvoke $r178.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.apache.commons.lang3.tuple.Triple", "of", $r179) 

(declare-const var1352!1 var3732)
(declare-const var3603 String)
(declare-const var1399 String)
(declare-const var3077!4 (Array Int String))
(define-const var1500 (Array Int String) arr-String-init) ; Statement: $r181 = newarray (java.lang.String)[3] 
(declare-const var1500!1 (Array Int String))
(assert (not (= var1500!1 null-__Array__Int__String__)))
(assert (= (select var1500!1 0) "left")) ; Statement: $r181[0] = "left" 
(declare-const var1500!2 (Array Int String))
(assert (not (= var1500!2 null-__Array__Int__String__)))
(assert (= (select var1500!2 1) "middle")) ; Statement: $r181[1] = "middle" 
(declare-const var1500!3 (Array Int String))
(assert (not (= var1500!3 null-__Array__Int__String__)))
(assert (= (select var1500!3 2) "right")) ; Statement: $r181[2] = "right" 
;(assert (var1166_put/1464166817 var1295 (cast-from-var3732-to-var3341 var1352!1) (cast-from-__Array__Int__String__-to-var3341 var1500!3))) ; Statement: interfaceinvoke $r180.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r178, $r181) 

(declare-const var1295!1 var1166)
(declare-const var1352!2 var3732)
(declare-const var1500!4 (Array Int String))
(define-const var1110 var1166 var2188-paramMapping) ; Statement: $r184 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> 
(define-const var3826 var3732 var3732-init) ; Statement: $r182 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo 
(define-const var3417 (Array Int String) arr-String-init) ; Statement: $r183 = newarray (java.lang.String)[3] 
(declare-const var3417!1 (Array Int String))
(assert (not (= var3417!1 null-__Array__Int__String__)))
(assert (= (select var3417!1 0) "java.lang.Object")) ; Statement: $r183[0] = "java.lang.Object" 
(declare-const var3417!2 (Array Int String))
(assert (not (= var3417!2 null-__Array__Int__String__)))
(assert (= (select var3417!2 1) "java.lang.Object")) ; Statement: $r183[1] = "java.lang.Object" 
(declare-const var3417!3 (Array Int String))
(assert (not (= var3417!3 null-__Array__Int__String__)))
(assert (= (select var3417!3 2) "java.lang.Object")) ; Statement: $r183[2] = "java.lang.Object" 
(assert true)
;(assert (<init>/1643362048 var3826 "org.apache.commons.lang3.tuple.MutableTriple" "<init>" var3417!3)) ; Statement: specialinvoke $r182.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.apache.commons.lang3.tuple.MutableTriple", "<init>", $r183) 

(declare-const var3826!1 var3732)
(declare-const var2048 String)
(declare-const var3642!1 String)
(declare-const var3417!4 (Array Int String))
(define-const var3710 (Array Int String) arr-String-init) ; Statement: $r185 = newarray (java.lang.String)[3] 
(declare-const var3710!1 (Array Int String))
(assert (not (= var3710!1 null-__Array__Int__String__)))
(assert (= (select var3710!1 0) "left")) ; Statement: $r185[0] = "left" 
(declare-const var3710!2 (Array Int String))
(assert (not (= var3710!2 null-__Array__Int__String__)))
(assert (= (select var3710!2 1) "middle")) ; Statement: $r185[1] = "middle" 
(declare-const var3710!3 (Array Int String))
(assert (not (= var3710!3 null-__Array__Int__String__)))
(assert (= (select var3710!3 2) "right")) ; Statement: $r185[2] = "right" 
;(assert (var1166_put/1464166817 var1110 (cast-from-var3732-to-var3341 var3826!1) (cast-from-__Array__Int__String__-to-var3341 var3710!3))) ; Statement: interfaceinvoke $r184.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r182, $r185) 

(declare-const var1110!1 var1166)
(declare-const var3826!2 var3732)
(declare-const var3710!4 (Array Int String))
(define-const var980 var1166 var2188-paramMapping) ; Statement: $r188 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> 
(define-const var3293 var3732 var3732-init) ; Statement: $r186 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo 
(define-const var203 (Array Int String) arr-String-init) ; Statement: $r187 = newarray (java.lang.String)[3] 
(declare-const var203!1 (Array Int String))
(assert (not (= var203!1 null-__Array__Int__String__)))
(assert (= (select var203!1 0) "java.math.BigDecimal")) ; Statement: $r187[0] = "java.math.BigDecimal" 
(declare-const var203!2 (Array Int String))
(assert (not (= var203!2 null-__Array__Int__String__)))
(assert (= (select var203!2 1) "javax.money.CurrencyUnit")) ; Statement: $r187[1] = "javax.money.CurrencyUnit" 
(declare-const var203!3 (Array Int String))
(assert (not (= var203!3 null-__Array__Int__String__)))
(assert (= (select var203!3 2) "javax.money.MonetaryContext")) ; Statement: $r187[2] = "javax.money.MonetaryContext" 
(assert true)
;(assert (<init>/1643362048 var3293 "org.javamoney.moneta.Money" "<init>" var203!3)) ; Statement: specialinvoke $r186.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.javamoney.moneta.Money", "<init>", $r187) 

(declare-const var3293!1 var3732)
(declare-const var2897 String)
(declare-const var3642!2 String)
(declare-const var203!4 (Array Int String))
(define-const var3912 (Array Int String) arr-String-init) ; Statement: $r189 = newarray (java.lang.String)[3] 
(declare-const var3912!1 (Array Int String))
(assert (not (= var3912!1 null-__Array__Int__String__)))
(assert (= (select var3912!1 0) "number")) ; Statement: $r189[0] = "number" 
(declare-const var3912!2 (Array Int String))
(assert (not (= var3912!2 null-__Array__Int__String__)))
(assert (= (select var3912!2 1) "currency")) ; Statement: $r189[1] = "currency" 
(declare-const var3912!3 (Array Int String))
(assert (not (= var3912!3 null-__Array__Int__String__)))
(assert (= (select var3912!3 2) "monetaryContext")) ; Statement: $r189[2] = "monetaryContext" 
;(assert (var1166_put/1464166817 var980 (cast-from-var3732-to-var3341 var3293!1) (cast-from-__Array__Int__String__-to-var3341 var3912!3))) ; Statement: interfaceinvoke $r188.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r186, $r189) 

(declare-const var980!1 var1166)
(declare-const var3293!2 var3732)
(declare-const var3912!4 (Array Int String))
(define-const var2187 var1166 var2188-paramMapping) ; Statement: $r192 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> 
(define-const var1518 var3732 var3732-init) ; Statement: $r190 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo 
(define-const var13 (Array Int String) arr-String-init) ; Statement: $r191 = newarray (java.lang.String)[2] 
(declare-const var13!1 (Array Int String))
(assert (not (= var13!1 null-__Array__Int__String__)))
(assert (= (select var13!1 0) "java.math.BigDecimal")) ; Statement: $r191[0] = "java.math.BigDecimal" 
(declare-const var13!2 (Array Int String))
(assert (not (= var13!2 null-__Array__Int__String__)))
(assert (= (select var13!2 1) "javax.money.CurrencyUnit")) ; Statement: $r191[1] = "javax.money.CurrencyUnit" 
(assert true)
;(assert (<init>/1643362048 var1518 "org.javamoney.moneta.Money" "<init>" var13!2)) ; Statement: specialinvoke $r190.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.javamoney.moneta.Money", "<init>", $r191) 

(declare-const var1518!1 var3732)
(declare-const var2897!1 String)
(declare-const var3642!3 String)
(declare-const var13!3 (Array Int String))
(define-const var3917 (Array Int String) arr-String-init) ; Statement: $r193 = newarray (java.lang.String)[2] 
(declare-const var3917!1 (Array Int String))
(assert (not (= var3917!1 null-__Array__Int__String__)))
(assert (= (select var3917!1 0) "number")) ; Statement: $r193[0] = "number" 
(declare-const var3917!2 (Array Int String))
(assert (not (= var3917!2 null-__Array__Int__String__)))
(assert (= (select var3917!2 1) "currency")) ; Statement: $r193[1] = "currency" 
;(assert (var1166_put/1464166817 var2187 (cast-from-var3732-to-var3341 var1518!1) (cast-from-__Array__Int__String__-to-var3341 var3917!2))) ; Statement: interfaceinvoke $r192.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r190, $r193) 

(declare-const var2187!1 var1166)
(declare-const var1518!2 var3732)
(declare-const var3917!3 (Array Int String))
(define-const var1991 var1166 var2188-descMapping) ; Statement: $r195 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var2686 ClassObject Int-TYPE) ; Statement: $r194 = <java.lang.Integer: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var1991 (cast-from-ClassObject-to-var3341 var2686) (cast-from-String-to-var3341 "I"))) ; Statement: interfaceinvoke $r195.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r194, "I") 

(declare-const var1991!1 var1166)
(declare-const var2686!1 ClassObject)
(declare-const var3220 String)
(define-const var2358 var1166 var2188-descMapping) ; Statement: $r197 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var2015 ClassObject var3097-TYPE) ; Statement: $r196 = <java.lang.Void: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2358 (cast-from-ClassObject-to-var3341 var2015) (cast-from-String-to-var3341 "V"))) ; Statement: interfaceinvoke $r197.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r196, "V") 

(declare-const var2358!1 var1166)
(declare-const var2015!1 ClassObject)
(declare-const var691 String)
(define-const var2176 var1166 var2188-descMapping) ; Statement: $r199 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var3708 ClassObject var2959-TYPE) ; Statement: $r198 = <java.lang.Boolean: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2176 (cast-from-ClassObject-to-var3341 var3708) (cast-from-String-to-var3341 "Z"))) ; Statement: interfaceinvoke $r199.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r198, "Z") 

(declare-const var2176!1 var1166)
(declare-const var3708!1 ClassObject)
(declare-const var2587 String)
(define-const var2778 var1166 var2188-descMapping) ; Statement: $r201 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var3976 ClassObject var2432-TYPE) ; Statement: $r200 = <java.lang.Character: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2778 (cast-from-ClassObject-to-var3341 var3976) (cast-from-String-to-var3341 "C"))) ; Statement: interfaceinvoke $r201.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r200, "C") 

(declare-const var2778!1 var1166)
(declare-const var3976!1 ClassObject)
(declare-const var2539 String)
(define-const var1422 var1166 var2188-descMapping) ; Statement: $r203 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var2387 ClassObject Int-TYPE) ; Statement: $r202 = <java.lang.Byte: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var1422 (cast-from-ClassObject-to-var3341 var2387) (cast-from-String-to-var3341 "B"))) ; Statement: interfaceinvoke $r203.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r202, "B") 

(declare-const var1422!1 var1166)
(declare-const var2387!1 ClassObject)
(declare-const var728 String)
(define-const var1524 var1166 var2188-descMapping) ; Statement: $r205 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var2057 ClassObject Int-TYPE) ; Statement: $r204 = <java.lang.Short: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var1524 (cast-from-ClassObject-to-var3341 var2057) (cast-from-String-to-var3341 "S"))) ; Statement: interfaceinvoke $r205.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r204, "S") 

(declare-const var1524!1 var1166)
(declare-const var2057!1 ClassObject)
(declare-const var943 String)
(define-const var3680 var1166 var2188-descMapping) ; Statement: $r207 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var3684 ClassObject Float32-TYPE) ; Statement: $r206 = <java.lang.Float: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var3680 (cast-from-ClassObject-to-var3341 var3684) (cast-from-String-to-var3341 "F"))) ; Statement: interfaceinvoke $r207.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r206, "F") 

(declare-const var3680!1 var1166)
(declare-const var3684!1 ClassObject)
(declare-const var3922 String)
(define-const var3009 var1166 var2188-descMapping) ; Statement: $r209 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var1996 ClassObject Int-TYPE) ; Statement: $r208 = <java.lang.Long: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var3009 (cast-from-ClassObject-to-var3341 var1996) (cast-from-String-to-var3341 "J"))) ; Statement: interfaceinvoke $r209.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r208, "J") 

(declare-const var3009!1 var1166)
(declare-const var1996!1 ClassObject)
(declare-const var783 String)
(define-const var883 var1166 var2188-descMapping) ; Statement: $r211 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var625 ClassObject Float64-TYPE) ; Statement: $r210 = <java.lang.Double: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var883 (cast-from-ClassObject-to-var3341 var625) (cast-from-String-to-var3341 "D"))) ; Statement: interfaceinvoke $r211.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r210, "D") 

(declare-const var883!1 var1166)
(declare-const var625!1 ClassObject)
(declare-const var3746 String)
(define-const var3151 var1166 var2188-typeMapping) ; Statement: $r213 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var424 ClassObject Int-TYPE) ; Statement: $r212 = <java.lang.Integer: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var3151 (cast-from-ClassObject-to-var3341 var424) (cast-from-String-to-var3341 "I"))) ; Statement: interfaceinvoke $r213.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r212, "I") 

(declare-const var3151!1 var1166)
(declare-const var424!1 ClassObject)
(declare-const var3220!1 String)
(define-const var2237 var1166 var2188-typeMapping) ; Statement: $r215 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3371 ClassObject var3097-TYPE) ; Statement: $r214 = <java.lang.Void: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2237 (cast-from-ClassObject-to-var3341 var3371) (cast-from-String-to-var3341 "V"))) ; Statement: interfaceinvoke $r215.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r214, "V") 

(declare-const var2237!1 var1166)
(declare-const var3371!1 ClassObject)
(declare-const var691!1 String)
(define-const var2022 var1166 var2188-typeMapping) ; Statement: $r217 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3807 ClassObject var2959-TYPE) ; Statement: $r216 = <java.lang.Boolean: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2022 (cast-from-ClassObject-to-var3341 var3807) (cast-from-String-to-var3341 "Z"))) ; Statement: interfaceinvoke $r217.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r216, "Z") 

(declare-const var2022!1 var1166)
(declare-const var3807!1 ClassObject)
(declare-const var2587!1 String)
(define-const var37 var1166 var2188-typeMapping) ; Statement: $r219 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3999 ClassObject var2432-TYPE) ; Statement: $r218 = <java.lang.Character: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var37 (cast-from-ClassObject-to-var3341 var3999) (cast-from-String-to-var3341 "C"))) ; Statement: interfaceinvoke $r219.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r218, "C") 

(declare-const var37!1 var1166)
(declare-const var3999!1 ClassObject)
(declare-const var2539!1 String)
(define-const var1959 var1166 var2188-typeMapping) ; Statement: $r221 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var177 ClassObject Int-TYPE) ; Statement: $r220 = <java.lang.Byte: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var1959 (cast-from-ClassObject-to-var3341 var177) (cast-from-String-to-var3341 "B"))) ; Statement: interfaceinvoke $r221.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r220, "B") 

(declare-const var1959!1 var1166)
(declare-const var177!1 ClassObject)
(declare-const var728!1 String)
(define-const var2574 var1166 var2188-typeMapping) ; Statement: $r223 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3763 ClassObject Int-TYPE) ; Statement: $r222 = <java.lang.Short: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2574 (cast-from-ClassObject-to-var3341 var3763) (cast-from-String-to-var3341 "S"))) ; Statement: interfaceinvoke $r223.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r222, "S") 

(declare-const var2574!1 var1166)
(declare-const var3763!1 ClassObject)
(declare-const var943!1 String)
(define-const var3297 var1166 var2188-typeMapping) ; Statement: $r225 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var2885 ClassObject Float32-TYPE) ; Statement: $r224 = <java.lang.Float: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var3297 (cast-from-ClassObject-to-var3341 var2885) (cast-from-String-to-var3341 "F"))) ; Statement: interfaceinvoke $r225.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r224, "F") 

(declare-const var3297!1 var1166)
(declare-const var2885!1 ClassObject)
(declare-const var3922!1 String)
(define-const var2477 var1166 var2188-typeMapping) ; Statement: $r227 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var2837 ClassObject Int-TYPE) ; Statement: $r226 = <java.lang.Long: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var2477 (cast-from-ClassObject-to-var3341 var2837) (cast-from-String-to-var3341 "J"))) ; Statement: interfaceinvoke $r227.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r226, "J") 

(declare-const var2477!1 var1166)
(declare-const var2837!1 ClassObject)
(declare-const var783!1 String)
(define-const var3821 var1166 var2188-typeMapping) ; Statement: $r229 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3762 ClassObject Float64-TYPE) ; Statement: $r228 = <java.lang.Double: java.lang.Class TYPE> 
;(assert (var1166_put/1464166817 var3821 (cast-from-ClassObject-to-var3341 var3762) (cast-from-String-to-var3341 "D"))) ; Statement: interfaceinvoke $r229.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r228, "D") 

(declare-const var3821!1 var1166)
(declare-const var3762!1 ClassObject)
(declare-const var3746!1 String)
(define-const var358 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r230 = newarray (java.lang.Class)[50] 
(declare-const var358!1 (Array Int ClassObject))
(assert (not (= var358!1 null-__Array__Int__ClassObject__)))
(assert (= (select var358!1 0) String!class)) ; Statement: $r230[0] = class "Ljava/lang/String;" 
(declare-const var358!2 (Array Int ClassObject))
(assert (not (= var358!2 null-__Array__Int__ClassObject__)))
(assert (= (select var358!2 1) var3049!class)) ; Statement: $r230[1] = class "Ljava/util/List;" 
(declare-const var358!3 (Array Int ClassObject))
(assert (not (= var358!3 null-__Array__Int__ClassObject__)))
(assert (= (select var358!3 2) var1838!class)) ; Statement: $r230[2] = class "Ljava/util/Collection;" 
(declare-const var358!4 (Array Int ClassObject))
(assert (not (= var358!4 null-__Array__Int__ClassObject__)))
(assert (= (select var358!4 3) var2430!class)) ; Statement: $r230[3] = class "Lcom/alibaba/fastjson2/reader/ObjectReader;" 
(declare-const var358!5 (Array Int ClassObject))
(assert (not (= var358!5 null-__Array__Int__ClassObject__)))
(assert (= (select var358!5 4) var2488!class)) ; Statement: $r230[4] = class "Lcom/alibaba/fastjson2/reader/ObjectReader1;" 
(declare-const var358!6 (Array Int ClassObject))
(assert (not (= var358!6 null-__Array__Int__ClassObject__)))
(assert (= (select var358!6 5) var3396!class)) ; Statement: $r230[5] = class "Lcom/alibaba/fastjson2/reader/ObjectReader2;" 
(declare-const var358!7 (Array Int ClassObject))
(assert (not (= var358!7 null-__Array__Int__ClassObject__)))
(assert (= (select var358!7 6) var2094!class)) ; Statement: $r230[6] = class "Lcom/alibaba/fastjson2/reader/ObjectReader3;" 
(declare-const var358!8 (Array Int ClassObject))
(assert (not (= var358!8 null-__Array__Int__ClassObject__)))
(assert (= (select var358!8 7) var3659!class)) ; Statement: $r230[7] = class "Lcom/alibaba/fastjson2/reader/ObjectReader4;" 
(declare-const var358!9 (Array Int ClassObject))
(assert (not (= var358!9 null-__Array__Int__ClassObject__)))
(assert (= (select var358!9 8) var385!class)) ; Statement: $r230[8] = class "Lcom/alibaba/fastjson2/reader/ObjectReader5;" 
(declare-const var358!10 (Array Int ClassObject))
(assert (not (= var358!10 null-__Array__Int__ClassObject__)))
(assert (= (select var358!10 9) var3444!class)) ; Statement: $r230[9] = class "Lcom/alibaba/fastjson2/reader/ObjectReader6;" 
(declare-const var358!11 (Array Int ClassObject))
(assert (not (= var358!11 null-__Array__Int__ClassObject__)))
(assert (= (select var358!11 10) var1178!class)) ; Statement: $r230[10] = class "Lcom/alibaba/fastjson2/reader/ObjectReader7;" 
(declare-const var358!12 (Array Int ClassObject))
(assert (not (= var358!12 null-__Array__Int__ClassObject__)))
(assert (= (select var358!12 11) var3383!class)) ; Statement: $r230[11] = class "Lcom/alibaba/fastjson2/reader/ObjectReader8;" 
(declare-const var358!13 (Array Int ClassObject))
(assert (not (= var358!13 null-__Array__Int__ClassObject__)))
(assert (= (select var358!13 12) var31!class)) ; Statement: $r230[12] = class "Lcom/alibaba/fastjson2/reader/ObjectReader9;" 
(declare-const var358!14 (Array Int ClassObject))
(assert (not (= var358!14 null-__Array__Int__ClassObject__)))
(assert (= (select var358!14 13) var486!class)) ; Statement: $r230[13] = class "Lcom/alibaba/fastjson2/reader/ObjectReader10;" 
(declare-const var358!15 (Array Int ClassObject))
(assert (not (= var358!15 null-__Array__Int__ClassObject__)))
(assert (= (select var358!15 14) var616!class)) ; Statement: $r230[14] = class "Lcom/alibaba/fastjson2/reader/ObjectReader11;" 
(declare-const var358!16 (Array Int ClassObject))
(assert (not (= var358!16 null-__Array__Int__ClassObject__)))
(assert (= (select var358!16 15) var261!class)) ; Statement: $r230[15] = class "Lcom/alibaba/fastjson2/reader/ObjectReader12;" 
(declare-const var358!17 (Array Int ClassObject))
(assert (not (= var358!17 null-__Array__Int__ClassObject__)))
(assert (= (select var358!17 16) var1332!class)) ; Statement: $r230[16] = class "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;" 
(declare-const var358!18 (Array Int ClassObject))
(assert (not (= var358!18 null-__Array__Int__ClassObject__)))
(assert (= (select var358!18 17) var1784!class)) ; Statement: $r230[17] = class "Lcom/alibaba/fastjson2/reader/FieldReader;" 
(declare-const var358!19 (Array Int ClassObject))
(assert (not (= var358!19 null-__Array__Int__ClassObject__)))
(assert (= (select var358!19 18) var2898!class)) ; Statement: $r230[18] = class "Lcom/alibaba/fastjson2/JSONReader;" 
(declare-const var358!20 (Array Int ClassObject))
(assert (not (= var358!20 null-__Array__Int__ClassObject__)))
(assert (= (select var358!20 19) var1373!class)) ; Statement: $r230[19] = class "Lcom/alibaba/fastjson2/function/ObjBoolConsumer;" 
(declare-const var358!21 (Array Int ClassObject))
(assert (not (= var358!21 null-__Array__Int__ClassObject__)))
(assert (= (select var358!21 20) var1413!class)) ; Statement: $r230[20] = class "Lcom/alibaba/fastjson2/function/ObjCharConsumer;" 
(declare-const var358!22 (Array Int ClassObject))
(assert (not (= var358!22 null-__Array__Int__ClassObject__)))
(assert (= (select var358!22 21) var3370!class)) ; Statement: $r230[21] = class "Lcom/alibaba/fastjson2/function/ObjByteConsumer;" 
(declare-const var358!23 (Array Int ClassObject))
(assert (not (= var358!23 null-__Array__Int__ClassObject__)))
(assert (= (select var358!23 22) var1833!class)) ; Statement: $r230[22] = class "Lcom/alibaba/fastjson2/function/ObjShortConsumer;" 
(declare-const var358!24 (Array Int ClassObject))
(assert (not (= var358!24 null-__Array__Int__ClassObject__)))
(assert (= (select var358!24 23) var3366!class)) ; Statement: $r230[23] = class "Ljava/util/function/ObjIntConsumer;" 
(declare-const var358!25 (Array Int ClassObject))
(assert (not (= var358!25 null-__Array__Int__ClassObject__)))
(assert (= (select var358!25 24) var2694!class)) ; Statement: $r230[24] = class "Ljava/util/function/ObjLongConsumer;" 
(declare-const var358!26 (Array Int ClassObject))
(assert (not (= var358!26 null-__Array__Int__ClassObject__)))
(assert (= (select var358!26 25) var2325!class)) ; Statement: $r230[25] = class "Lcom/alibaba/fastjson2/function/ObjFloatConsumer;" 
(declare-const var358!27 (Array Int ClassObject))
(assert (not (= var358!27 null-__Array__Int__ClassObject__)))
(assert (= (select var358!27 26) var1785!class)) ; Statement: $r230[26] = class "Ljava/util/function/ObjDoubleConsumer;" 
(declare-const var358!28 (Array Int ClassObject))
(assert (not (= var358!28 null-__Array__Int__ClassObject__)))
(assert (= (select var358!28 27) var597!class)) ; Statement: $r230[27] = class "Ljava/util/function/BiConsumer;" 
(declare-const var358!29 (Array Int ClassObject))
(assert (not (= var358!29 null-__Array__Int__ClassObject__)))
(assert (= (select var358!29 28) var2018!class)) ; Statement: $r230[28] = class "Lcom/alibaba/fastjson2/util/JDKUtils;" 
(declare-const var358!30 (Array Int ClassObject))
(assert (not (= var358!30 null-__Array__Int__ClassObject__)))
(assert (= (select var358!30 29) var848!class)) ; Statement: $r230[29] = class "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;" 
(declare-const var358!31 (Array Int ClassObject))
(assert (not (= var358!31 null-__Array__Int__ClassObject__)))
(assert (= (select var358!31 30) var3310!class)) ; Statement: $r230[30] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter1;" 
(declare-const var358!32 (Array Int ClassObject))
(assert (not (= var358!32 null-__Array__Int__ClassObject__)))
(assert (= (select var358!32 31) var298!class)) ; Statement: $r230[31] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter2;" 
(declare-const var358!33 (Array Int ClassObject))
(assert (not (= var358!33 null-__Array__Int__ClassObject__)))
(assert (= (select var358!33 32) var3239!class)) ; Statement: $r230[32] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter3;" 
(declare-const var358!34 (Array Int ClassObject))
(assert (not (= var358!34 null-__Array__Int__ClassObject__)))
(assert (= (select var358!34 33) var1767!class)) ; Statement: $r230[33] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter4;" 
(declare-const var358!35 (Array Int ClassObject))
(assert (not (= var358!35 null-__Array__Int__ClassObject__)))
(assert (= (select var358!35 34) var1730!class)) ; Statement: $r230[34] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter5;" 
(declare-const var358!36 (Array Int ClassObject))
(assert (not (= var358!36 null-__Array__Int__ClassObject__)))
(assert (= (select var358!36 35) var2232!class)) ; Statement: $r230[35] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter6;" 
(declare-const var358!37 (Array Int ClassObject))
(assert (not (= var358!37 null-__Array__Int__ClassObject__)))
(assert (= (select var358!37 36) var3803!class)) ; Statement: $r230[36] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter7;" 
(declare-const var358!38 (Array Int ClassObject))
(assert (not (= var358!38 null-__Array__Int__ClassObject__)))
(assert (= (select var358!38 37) var720!class)) ; Statement: $r230[37] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter8;" 
(declare-const var358!39 (Array Int ClassObject))
(assert (not (= var358!39 null-__Array__Int__ClassObject__)))
(assert (= (select var358!39 38) var2747!class)) ; Statement: $r230[38] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter9;" 
(declare-const var358!40 (Array Int ClassObject))
(assert (not (= var358!40 null-__Array__Int__ClassObject__)))
(assert (= (select var358!40 39) var1528!class)) ; Statement: $r230[39] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter10;" 
(declare-const var358!41 (Array Int ClassObject))
(assert (not (= var358!41 null-__Array__Int__ClassObject__)))
(assert (= (select var358!41 40) var2571!class)) ; Statement: $r230[40] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter11;" 
(declare-const var358!42 (Array Int ClassObject))
(assert (not (= var358!42 null-__Array__Int__ClassObject__)))
(assert (= (select var358!42 41) var2479!class)) ; Statement: $r230[41] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter12;" 
(declare-const var358!43 (Array Int ClassObject))
(assert (not (= var358!43 null-__Array__Int__ClassObject__)))
(assert (= (select var358!43 42) var3654!class)) ; Statement: $r230[42] = class "Lcom/alibaba/fastjson2/writer/FieldWriter;" 
(declare-const var358!44 (Array Int ClassObject))
(assert (not (= var358!44 null-__Array__Int__ClassObject__)))
(assert (= (select var358!44 43) var2742!class)) ; Statement: $r230[43] = class "Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;" 
(declare-const var358!45 (Array Int ClassObject))
(assert (not (= var358!45 null-__Array__Int__ClassObject__)))
(assert (= (select var358!45 44) var2524!class)) ; Statement: $r230[44] = class "Lcom/alibaba/fastjson2/JSONWriter$Context;" 
(declare-const var358!46 (Array Int ClassObject))
(assert (not (= var358!46 null-__Array__Int__ClassObject__)))
(assert (= (select var358!46 45) var1711!class)) ; Statement: $r230[45] = class "Lcom/alibaba/fastjson2/JSONB;" 
(declare-const var358!47 (Array Int ClassObject))
(assert (not (= var358!47 null-__Array__Int__ClassObject__)))
(assert (= (select var358!47 46) var3550!class)) ; Statement: $r230[46] = class "Lcom/alibaba/fastjson2/schema/JSONSchema;" 
(declare-const var358!48 (Array Int ClassObject))
(assert (not (= var358!48 null-__Array__Int__ClassObject__)))
(assert (= (select var358!48 47) var3719!class)) ; Statement: $r230[47] = class "Lcom/alibaba/fastjson2/annotation/JSONType;" 
(declare-const var358!49 (Array Int ClassObject))
(assert (not (= var358!49 null-__Array__Int__ClassObject__)))
(assert (= (select var358!49 48) var1868!class)) ; Statement: $r230[48] = class "Ljava/util/Date;" 
(declare-const var358!50 (Array Int ClassObject))
(assert (not (= var358!50 null-__Array__Int__ClassObject__)))
(assert (= (select var358!50 49) var319!class)) ; Statement: $r230[49] = class "Ljava/util/function/Supplier;" 
(define-const var1854 Int (getLength-Arr-ClassObject-1 var358!50)) ; Statement: i0 = lengthof $r230 
(define-const var1082 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r232 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(assert (>= var1082 var1854)) ; Cond: i1 >= i0 
(define-const var2961 var1166 var2188-typeMapping) ; Statement: $r232 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var1799 String var2188-TYPE_JSON_WRITER) ; Statement: $r231 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> 
;(assert (var1166_put/1464166817 var2961 (cast-from-ClassObject-to-var3341 var726!class) (cast-from-String-to-var3341 var1799))) ; Statement: interfaceinvoke $r232.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONWriter;", $r231) 

(declare-const var2961!1 var1166)
(declare-const var1586 ClassObject)
(declare-const var1799!1 String)
(define-const var423 var1166 var2188-descMapping) ; Statement: $r234 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var2228 String var2188-DESC_JSON_WRITER) ; Statement: $r233 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER> 
;(assert (var1166_put/1464166817 var423 (cast-from-ClassObject-to-var3341 var726!class) (cast-from-String-to-var3341 var2228))) ; Statement: interfaceinvoke $r234.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONWriter;", $r233) 

(declare-const var423!1 var1166)
(declare-const var1586!1 ClassObject)
(declare-const var2228!1 String)
(define-const var1966 var1166 var2188-typeMapping) ; Statement: $r236 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> 
(define-const var3812 String var2188-TYPE_OBJECT_WRITER) ; Statement: $r235 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER> 
;(assert (var1166_put/1464166817 var1966 (cast-from-ClassObject-to-var3341 var2538!class) (cast-from-String-to-var3341 var3812))) ; Statement: interfaceinvoke $r236.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;", $r235) 

(declare-const var1966!1 var1166)
(declare-const var1028 ClassObject)
(declare-const var3812!1 String)
(define-const var2163 var1166 var2188-descMapping) ; Statement: $r238 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var526 String var2188-DESC_OBJECT_WRITER) ; Statement: $r237 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER> 
;(assert (var1166_put/1464166817 var2163 (cast-from-ClassObject-to-var3341 var2538!class) (cast-from-String-to-var3341 var526))) ; Statement: interfaceinvoke $r238.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;", $r237) 

(declare-const var2163!1 var1166)
(declare-const var1028!1 ClassObject)
(declare-const var526!1 String)
(define-const var215 var1166 var2188-descMapping) ; Statement: $r240 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var1265 String var2188-DESC_FIELD_WRITER_ARRAY) ; Statement: $r239 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY> 
;(assert (var1166_put/1464166817 var215 (cast-from-ClassObject-to-var3341 __Array__Int__var3654__!class) (cast-from-String-to-var3341 var1265))) ; Statement: interfaceinvoke $r240.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "[Lcom/alibaba/fastjson2/writer/FieldWriter;", $r239) 

(declare-const var215!1 var1166)
(declare-const var1488 ClassObject)
(declare-const var1265!1 String)
(define-const var1457 var1166 var2188-descMapping) ; Statement: $r242 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> 
(define-const var1393 String var2188-DESC_FIELD_READER_ARRAY) ; Statement: $r241 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY> 
;(assert (var1166_put/1464166817 var1457 (cast-from-ClassObject-to-var3341 __Array__Int__var1784__!class) (cast-from-String-to-var3341 var1393))) ; Statement: interfaceinvoke $r242.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "[Lcom/alibaba/fastjson2/reader/FieldReader;", $r241) 

(declare-const var1457!1 var1166)
(declare-const var3296 ClassObject)
(declare-const var1393!1 String)
(define-const var2665 var3887 var3887-init) ; Statement: $r243 = new java.util.concurrent.atomic.AtomicReference 
(assert true)
;(assert (<init>/-974988547 var2665)) ; Statement: specialinvoke $r243.<java.util.concurrent.atomic.AtomicReference: void <init>()>() 

(declare-const var2665!1 var3887)
(define-const var1347 var3887 var2665!1) ; Statement: <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.concurrent.atomic.AtomicReference descCacheRef> = $r243 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1169-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1169-to-var1166=([java.util.HashMap], java.util.Map), var3732-init=([], com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo), arr-String-init=([], java.lang.String[]), <init>/1643362048=([com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo, java.lang.String, java.lang.String, java.lang.String[]], void), var1166_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3732-to-var3341=([com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo], java.lang.Object), cast-from-__Array__Int__String__-to-var3341=([java.lang.String[]], java.lang.Object), cast-from-ClassObject-to-var3341=([java.lang.Class], java.lang.Object), cast-from-String-to-var3341=([java.lang.String], java.lang.Object), arr-ClassObject-init=([], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var3887-init=([], java.util.concurrent.atomic.AtomicReference), <init>/-974988547=([java.util.concurrent.atomic.AtomicReference], void)}
; {var2018=com.alibaba.fastjson2.util.JDKUtils, var5=$r0, var573=$r1, var1788=$r2, var2605=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_UNSAFE_UTILS>, var848=com.alibaba.fastjson2.writer.ObjectWriterAdapter, var792=$r3, var69=$r4, var3804=$r5, var1291=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>, var3310=com.alibaba.fastjson2.writer.ObjectWriter1, var2114=$r6, var2415=$r7, var1337=$r8, var2794=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>, var298=com.alibaba.fastjson2.writer.ObjectWriter2, var3025=$r9, var258=$r10, var3427=$r11, var2828=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>, var3239=com.alibaba.fastjson2.writer.ObjectWriter3, var1482=$r12, var2164=$r13, var1234=$r14, var496=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>, var1767=com.alibaba.fastjson2.writer.ObjectWriter4, var262=$r15, var3772=$r16, var569=$r17, var3165=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>, var1730=com.alibaba.fastjson2.writer.ObjectWriter5, var3507=$r18, var1448=$r19, var2590=$r20, var531=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>, var2232=com.alibaba.fastjson2.writer.ObjectWriter6, var142=$r21, var3257=$r22, var3765=$r23, var2865=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>, var3803=com.alibaba.fastjson2.writer.ObjectWriter7, var2821=$r24, var1487=$r25, var1619=$r26, var655=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>, var720=com.alibaba.fastjson2.writer.ObjectWriter8, var3447=$r27, var975=$r28, var327=$r29, var77=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>, var2747=com.alibaba.fastjson2.writer.ObjectWriter9, var1370=$r30, var3504=$r31, var1427=$r32, var254=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>, var1528=com.alibaba.fastjson2.writer.ObjectWriter10, var3210=$r33, var608=$r34, var3582=$r35, var470=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>, var2571=com.alibaba.fastjson2.writer.ObjectWriter11, var3360=$r36, var575=$r37, var519=$r38, var568=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>, var2479=com.alibaba.fastjson2.writer.ObjectWriter12, var3405=$r39, var3968=$r40, var74=$r41, var1809=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>, var1784=com.alibaba.fastjson2.reader.FieldReader, var605=$r42, var3387=$r43, var2952=$r44, var247=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_READE>, var2898=com.alibaba.fastjson2.JSONReader, var3487=$r45, var3219=$r46, var1050=$r47, var427=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>, var2430=com.alibaba.fastjson2.reader.ObjectReader, var3212=$r48, var2974=$r49, var2978=$r50, var3558=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER>, var1332=com.alibaba.fastjson2.reader.ObjectReaderAdapter, var1153=$r51, var2789=$r52, var3617=$r53, var582=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>, var2488=com.alibaba.fastjson2.reader.ObjectReader1, var2431=$r54, var2253=$r55, var2569=$r56, var2585=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_1>, var3396=com.alibaba.fastjson2.reader.ObjectReader2, var3351=$r57, var376=$r58, var716=$r59, var1897=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_2>, var2094=com.alibaba.fastjson2.reader.ObjectReader3, var84=$r60, var357=$r61, var2617=$r62, var386=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_3>, var3659=com.alibaba.fastjson2.reader.ObjectReader4, var3357=$r63, var2772=$r64, var1819=$r65, var3208=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_4>, var385=com.alibaba.fastjson2.reader.ObjectReader5, var2435=$r66, var2633=$r67, var939=$r68, var266=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_5>, var3444=com.alibaba.fastjson2.reader.ObjectReader6, var947=$r69, var1197=$r70, var2743=$r71, var2678=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_6>, var1178=com.alibaba.fastjson2.reader.ObjectReader7, var3943=$r72, var2583=$r73, var750=$r74, var2157=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_7>, var3383=com.alibaba.fastjson2.reader.ObjectReader8, var660=$r75, var3489=$r76, var2988=$r77, var2150=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_8>, var31=com.alibaba.fastjson2.reader.ObjectReader9, var579=$r78, var3864=$r79, var610=$r80, var3591=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_9>, var486=com.alibaba.fastjson2.reader.ObjectReader10, var497=$r81, var3053=$r82, var2906=$r83, var3965=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_10>, var616=com.alibaba.fastjson2.reader.ObjectReader11, var732=$r84, var368=$r85, var2085=$r86, var1085=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_11>, var261=com.alibaba.fastjson2.reader.ObjectReader12, var917=$r87, var134=$r88, var1335=$r89, var871=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_12>, var2991=com.alibaba.fastjson2.reader.ByteArrayValueConsumer, var2847=$r90, var3754=$r91, var2183=$r92, var3903=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_BYTE_ARRAY_VALUE_CONSUMER>, var3580=com.alibaba.fastjson2.reader.CharArrayValueConsumer, var815=$r93, var1380=$r94, var483=$r95, var378=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_CHAR_ARRAY_VALUE_CONSUMER>, var3900=com.alibaba.fastjson2.util.TypeUtils, var3063=$r96, var3640=$r97, var3327=$r98, var2167=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_TYPE_UTILS>, var560=com.alibaba.fastjson2.util.DateUtils, var125=$r99, var3248=$r100, var2103=$r101, var2892=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_DATE_UTILS>, var2538=com.alibaba.fastjson2.writer.ObjectWriter, var1188=$r102, var1032=$r103, var2376=$r104, var1192=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER>, var726=com.alibaba.fastjson2.JSONWriter, var2059=$r105, var3753=$r106, var2089=$r107, var922=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>, var3654=com.alibaba.fastjson2.writer.FieldWriter, var1592=$r108, var1342=$r109, var1027=$r110, var3701=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>, var283=$r111, var1873=$r115, var2640=$r112, var1720=$r113, var2393=$r114, var3987=$r116, var3398=$r117, var3824=$r118, var914=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>, var3490=$r119, var3041=$r121, var2188=com.alibaba.fastjson2.internal.asm.ASMUtils, var2099=$r120, var18=$r122, var2453=$r123, var945=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY>, var361=$r124, var2032=$r128, var1183=$r125, var2573=$r126, var3259=$r127, var2520=$r129, var2831=$r130, var489=$r131, var1341=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER>, var2381=$r132, var3942=$r134, var1823=$r133, var2601=$r135, var774=$r136, var3664=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY>, var2082=$r137, var798=$r139, var252=$r138, var533=$r140, var2953=$r141, var3739=$r142, var2710=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER>, var1231=$r143, var2614=$r145, var1607=$r144, var869=$r146, var2065=$r147, var2981=$r148, var3592=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER>, var3695=$r149, var246=$r151, var2905=$r150, var1724=$r152, var127=$r153, var2853=$r154, var3391=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_READER>, var2568=$r155, var1113=$r157, var1850=$r156, var1744=$r158, var2238=$r159, var209=$r160, var3734=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER>, var894=$r161, var413=$r165, var3550=com.alibaba.fastjson2.schema.JSONSchema, var2679=$r162, var993=$r163, var1368=$r164, var1826=$r166, var2564=$r167, var1151=$r168, var1928=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSONSCHEMA>, var1169=java.util.HashMap, var1710=$r169, var1166=java.util.Map, var3399=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>, var181=$r170, var3345=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>, var3247=$r171, var3973=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>, var2962=$r174, var3732=com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo, var1059=$r172, var702=com.alibaba.fastjson2.util.ParameterizedTypeImpl, var951=$r173, var2611=$r176, var2668=$r175, var3642="<init>", var1889=$r177, var3341=java.lang.Object, var1295=$r180, var1352=$r178, var3077=$r179, var3603="org.apache.commons.lang3.tuple.Triple", var1399="of", var1500=$r181, var1110=$r184, var3826=$r182, var3417=$r183, var2048="org.apache.commons.lang3.tuple.MutableTriple", var3710=$r185, var980=$r188, var3293=$r186, var203=$r187, var2897="org.javamoney.moneta.Money", var3912=$r189, var2187=$r192, var1518=$r190, var13=$r191, var3917=$r193, var1991=$r195, var2686=$r194, var3220="I", var2358=$r197, var3097=java.lang.Void, var2015=$r196, var691="V", var2176=$r199, var2959=java.lang.Boolean, var3708=$r198, var2587="Z", var2778=$r201, var2432=java.lang.Character, var3976=$r200, var2539="C", var1422=$r203, var2387=$r202, var728="B", var1524=$r205, var2057=$r204, var943="S", var3680=$r207, var3684=$r206, var3922="F", var3009=$r209, var1996=$r208, var783="J", var883=$r211, var625=$r210, var3746="D", var3151=$r213, var424=$r212, var2237=$r215, var3371=$r214, var2022=$r217, var3807=$r216, var37=$r219, var3999=$r218, var1959=$r221, var177=$r220, var2574=$r223, var3763=$r222, var3297=$r225, var2885=$r224, var2477=$r227, var2837=$r226, var3821=$r229, var3762=$r228, var358=$r230, var3049=java.util.List, var1838=java.util.Collection, var1373=com.alibaba.fastjson2.function.ObjBoolConsumer, var1413=com.alibaba.fastjson2.function.ObjCharConsumer, var3370=com.alibaba.fastjson2.function.ObjByteConsumer, var1833=com.alibaba.fastjson2.function.ObjShortConsumer, var3366=java.util.function.ObjIntConsumer, var2694=java.util.function.ObjLongConsumer, var2325=com.alibaba.fastjson2.function.ObjFloatConsumer, var1785=java.util.function.ObjDoubleConsumer, var597=java.util.function.BiConsumer, var2742=com.alibaba.fastjson2.JSONPathCompilerReflect$SingleNamePathTyped, var2524=com.alibaba.fastjson2.JSONWriter$Context, var1711=com.alibaba.fastjson2.JSONB, var3719=com.alibaba.fastjson2.annotation.JSONType, var1868=java.util.Date, var319=java.util.function.Supplier, var1854=i0, var1082=i1, var2961=$r232, var1799=$r231, var1586=class "Lcom/alibaba/fastjson2/JSONWriter;", var423=$r234, var2228=$r233, var1966=$r236, var3812=$r235, var1028=class "Lcom/alibaba/fastjson2/writer/ObjectWriter;", var2163=$r238, var526=$r237, var215=$r240, var1265=$r239, var1488=class "[Lcom/alibaba/fastjson2/writer/FieldWriter;", var1457=$r242, var1393=$r241, var3296=class "[Lcom/alibaba/fastjson2/reader/FieldReader;", var3887=java.util.concurrent.atomic.AtomicReference, var2665=$r243, var1347=<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.concurrent.atomic.AtomicReference descCacheRef>}
; {com.alibaba.fastjson2.util.JDKUtils=var2018, $r0=var5, $r1=var573, $r2=var1788, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_UNSAFE_UTILS>=var2605, com.alibaba.fastjson2.writer.ObjectWriterAdapter=var848, $r3=var792, $r4=var69, $r5=var3804, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>=var1291, com.alibaba.fastjson2.writer.ObjectWriter1=var3310, $r6=var2114, $r7=var2415, $r8=var1337, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>=var2794, com.alibaba.fastjson2.writer.ObjectWriter2=var298, $r9=var3025, $r10=var258, $r11=var3427, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>=var2828, com.alibaba.fastjson2.writer.ObjectWriter3=var3239, $r12=var1482, $r13=var2164, $r14=var1234, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>=var496, com.alibaba.fastjson2.writer.ObjectWriter4=var1767, $r15=var262, $r16=var3772, $r17=var569, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>=var3165, com.alibaba.fastjson2.writer.ObjectWriter5=var1730, $r18=var3507, $r19=var1448, $r20=var2590, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>=var531, com.alibaba.fastjson2.writer.ObjectWriter6=var2232, $r21=var142, $r22=var3257, $r23=var3765, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>=var2865, com.alibaba.fastjson2.writer.ObjectWriter7=var3803, $r24=var2821, $r25=var1487, $r26=var1619, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>=var655, com.alibaba.fastjson2.writer.ObjectWriter8=var720, $r27=var3447, $r28=var975, $r29=var327, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>=var77, com.alibaba.fastjson2.writer.ObjectWriter9=var2747, $r30=var1370, $r31=var3504, $r32=var1427, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>=var254, com.alibaba.fastjson2.writer.ObjectWriter10=var1528, $r33=var3210, $r34=var608, $r35=var3582, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>=var470, com.alibaba.fastjson2.writer.ObjectWriter11=var2571, $r36=var3360, $r37=var575, $r38=var519, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>=var568, com.alibaba.fastjson2.writer.ObjectWriter12=var2479, $r39=var3405, $r40=var3968, $r41=var74, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>=var1809, com.alibaba.fastjson2.reader.FieldReader=var1784, $r42=var605, $r43=var3387, $r44=var2952, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_READE>=var247, com.alibaba.fastjson2.JSONReader=var2898, $r45=var3487, $r46=var3219, $r47=var1050, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>=var427, com.alibaba.fastjson2.reader.ObjectReader=var2430, $r48=var3212, $r49=var2974, $r50=var2978, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER>=var3558, com.alibaba.fastjson2.reader.ObjectReaderAdapter=var1332, $r51=var1153, $r52=var2789, $r53=var3617, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER>=var582, com.alibaba.fastjson2.reader.ObjectReader1=var2488, $r54=var2431, $r55=var2253, $r56=var2569, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_1>=var2585, com.alibaba.fastjson2.reader.ObjectReader2=var3396, $r57=var3351, $r58=var376, $r59=var716, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_2>=var1897, com.alibaba.fastjson2.reader.ObjectReader3=var2094, $r60=var84, $r61=var357, $r62=var2617, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_3>=var386, com.alibaba.fastjson2.reader.ObjectReader4=var3659, $r63=var3357, $r64=var2772, $r65=var1819, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_4>=var3208, com.alibaba.fastjson2.reader.ObjectReader5=var385, $r66=var2435, $r67=var2633, $r68=var939, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_5>=var266, com.alibaba.fastjson2.reader.ObjectReader6=var3444, $r69=var947, $r70=var1197, $r71=var2743, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_6>=var2678, com.alibaba.fastjson2.reader.ObjectReader7=var1178, $r72=var3943, $r73=var2583, $r74=var750, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_7>=var2157, com.alibaba.fastjson2.reader.ObjectReader8=var3383, $r75=var660, $r76=var3489, $r77=var2988, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_8>=var2150, com.alibaba.fastjson2.reader.ObjectReader9=var31, $r78=var579, $r79=var3864, $r80=var610, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_9>=var3591, com.alibaba.fastjson2.reader.ObjectReader10=var486, $r81=var497, $r82=var3053, $r83=var2906, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_10>=var3965, com.alibaba.fastjson2.reader.ObjectReader11=var616, $r84=var732, $r85=var368, $r86=var2085, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_11>=var1085, com.alibaba.fastjson2.reader.ObjectReader12=var261, $r87=var917, $r88=var134, $r89=var1335, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_12>=var871, com.alibaba.fastjson2.reader.ByteArrayValueConsumer=var2991, $r90=var2847, $r91=var3754, $r92=var2183, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_BYTE_ARRAY_VALUE_CONSUMER>=var3903, com.alibaba.fastjson2.reader.CharArrayValueConsumer=var3580, $r93=var815, $r94=var1380, $r95=var483, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_CHAR_ARRAY_VALUE_CONSUMER>=var378, com.alibaba.fastjson2.util.TypeUtils=var3900, $r96=var3063, $r97=var3640, $r98=var3327, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_TYPE_UTILS>=var2167, com.alibaba.fastjson2.util.DateUtils=var560, $r99=var125, $r100=var3248, $r101=var2103, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_DATE_UTILS>=var2892, com.alibaba.fastjson2.writer.ObjectWriter=var2538, $r102=var1188, $r103=var1032, $r104=var2376, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER>=var1192, com.alibaba.fastjson2.JSONWriter=var726, $r105=var2059, $r106=var3753, $r107=var2089, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>=var922, com.alibaba.fastjson2.writer.FieldWriter=var3654, $r108=var1592, $r109=var1342, $r110=var1027, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER>=var3701, $r111=var283, $r115=var1873, $r112=var2640, $r113=var1720, $r114=var2393, $r116=var3987, $r117=var3398, $r118=var3824, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>=var914, $r119=var3490, $r121=var3041, com.alibaba.fastjson2.internal.asm.ASMUtils=var2188, $r120=var2099, $r122=var18, $r123=var2453, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY>=var945, $r124=var361, $r128=var2032, $r125=var1183, $r126=var2573, $r127=var3259, $r129=var2520, $r130=var2831, $r131=var489, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER>=var1341, $r132=var2381, $r134=var3942, $r133=var1823, $r135=var2601, $r136=var774, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY>=var3664, $r137=var2082, $r139=var798, $r138=var252, $r140=var533, $r141=var2953, $r142=var3739, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER>=var2710, $r143=var1231, $r145=var2614, $r144=var1607, $r146=var869, $r147=var2065, $r148=var2981, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER>=var3592, $r149=var3695, $r151=var246, $r150=var2905, $r152=var1724, $r153=var127, $r154=var2853, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_READER>=var3391, $r155=var2568, $r157=var1113, $r156=var1850, $r158=var1744, $r159=var2238, $r160=var209, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER>=var3734, $r161=var894, $r165=var413, com.alibaba.fastjson2.schema.JSONSchema=var3550, $r162=var2679, $r163=var993, $r164=var1368, $r166=var1826, $r167=var2564, $r168=var1151, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSONSCHEMA>=var1928, java.util.HashMap=var1169, $r169=var1710, java.util.Map=var1166, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>=var3399, $r170=var181, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>=var3345, $r171=var3247, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>=var3973, $r174=var2962, com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo=var3732, $r172=var1059, com.alibaba.fastjson2.util.ParameterizedTypeImpl=var702, $r173=var951, $r176=var2611, $r175=var2668, "<init>"=var3642, $r177=var1889, java.lang.Object=var3341, $r180=var1295, $r178=var1352, $r179=var3077, "org.apache.commons.lang3.tuple.Triple"=var3603, "of"=var1399, $r181=var1500, $r184=var1110, $r182=var3826, $r183=var3417, "org.apache.commons.lang3.tuple.MutableTriple"=var2048, $r185=var3710, $r188=var980, $r186=var3293, $r187=var203, "org.javamoney.moneta.Money"=var2897, $r189=var3912, $r192=var2187, $r190=var1518, $r191=var13, $r193=var3917, $r195=var1991, $r194=var2686, "I"=var3220, $r197=var2358, java.lang.Void=var3097, $r196=var2015, "V"=var691, $r199=var2176, java.lang.Boolean=var2959, $r198=var3708, "Z"=var2587, $r201=var2778, java.lang.Character=var2432, $r200=var3976, "C"=var2539, $r203=var1422, $r202=var2387, "B"=var728, $r205=var1524, $r204=var2057, "S"=var943, $r207=var3680, $r206=var3684, "F"=var3922, $r209=var3009, $r208=var1996, "J"=var783, $r211=var883, $r210=var625, "D"=var3746, $r213=var3151, $r212=var424, $r215=var2237, $r214=var3371, $r217=var2022, $r216=var3807, $r219=var37, $r218=var3999, $r221=var1959, $r220=var177, $r223=var2574, $r222=var3763, $r225=var3297, $r224=var2885, $r227=var2477, $r226=var2837, $r229=var3821, $r228=var3762, $r230=var358, java.util.List=var3049, java.util.Collection=var1838, com.alibaba.fastjson2.function.ObjBoolConsumer=var1373, com.alibaba.fastjson2.function.ObjCharConsumer=var1413, com.alibaba.fastjson2.function.ObjByteConsumer=var3370, com.alibaba.fastjson2.function.ObjShortConsumer=var1833, java.util.function.ObjIntConsumer=var3366, java.util.function.ObjLongConsumer=var2694, com.alibaba.fastjson2.function.ObjFloatConsumer=var2325, java.util.function.ObjDoubleConsumer=var1785, java.util.function.BiConsumer=var597, com.alibaba.fastjson2.JSONPathCompilerReflect$SingleNamePathTyped=var2742, com.alibaba.fastjson2.JSONWriter$Context=var2524, com.alibaba.fastjson2.JSONB=var1711, com.alibaba.fastjson2.annotation.JSONType=var3719, java.util.Date=var1868, java.util.function.Supplier=var319, i0=var1854, i1=var1082, $r232=var2961, $r231=var1799, class "Lcom/alibaba/fastjson2/JSONWriter;"=var1586, $r234=var423, $r233=var2228, $r236=var1966, $r235=var3812, class "Lcom/alibaba/fastjson2/writer/ObjectWriter;"=var1028, $r238=var2163, $r237=var526, $r240=var215, $r239=var1265, class "[Lcom/alibaba/fastjson2/writer/FieldWriter;"=var1488, $r242=var1457, $r241=var1393, class "[Lcom/alibaba/fastjson2/reader/FieldReader;"=var3296, java.util.concurrent.atomic.AtomicReference=var3887, $r243=var2665, <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.concurrent.atomic.AtomicReference descCacheRef>=var1347}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 40,"<java.lang.StringBuilder: void <init>()>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 14,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.StringBuilder: java.lang.String toString()>": 9}
;stmts $r0 = class "Lcom/alibaba/fastjson2/util/JDKUtils;";	$r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_UNSAFE_UTILS> = $r2;	$r3 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;";	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> = $r5;	$r6 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter1;";	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> = $r8;	$r9 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter2;";	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> = $r11;	$r12 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter3;";	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> = $r14;	$r15 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter4;";	$r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> = $r17;	$r18 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter5;";	$r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> = $r20;	$r21 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter6;";	$r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6> = $r23;	$r24 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter7;";	$r25 = virtualinvoke $r24.<java.lang.Class: java.lang.String getName()>();	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> = $r26;	$r27 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter8;";	$r28 = virtualinvoke $r27.<java.lang.Class: java.lang.String getName()>();	$r29 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> = $r29;	$r30 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter9;";	$r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>();	$r32 = virtualinvoke $r31.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> = $r32;	$r33 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter10;";	$r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getName()>();	$r35 = virtualinvoke $r34.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> = $r35;	$r36 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter11;";	$r37 = virtualinvoke $r36.<java.lang.Class: java.lang.String getName()>();	$r38 = virtualinvoke $r37.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> = $r38;	$r39 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter12;";	$r40 = virtualinvoke $r39.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> = $r41;	$r42 = class "Lcom/alibaba/fastjson2/reader/FieldReader;";	$r43 = virtualinvoke $r42.<java.lang.Class: java.lang.String getName()>();	$r44 = virtualinvoke $r43.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_READE> = $r44;	$r45 = class "Lcom/alibaba/fastjson2/JSONReader;";	$r46 = virtualinvoke $r45.<java.lang.Class: java.lang.String getName()>();	$r47 = virtualinvoke $r46.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER> = $r47;	$r48 = class "Lcom/alibaba/fastjson2/reader/ObjectReader;";	$r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>();	$r50 = virtualinvoke $r49.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER> = $r50;	$r51 = class "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;";	$r52 = virtualinvoke $r51.<java.lang.Class: java.lang.String getName()>();	$r53 = virtualinvoke $r52.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_ADAPTER> = $r53;	$r54 = class "Lcom/alibaba/fastjson2/reader/ObjectReader1;";	$r55 = virtualinvoke $r54.<java.lang.Class: java.lang.String getName()>();	$r56 = virtualinvoke $r55.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_1> = $r56;	$r57 = class "Lcom/alibaba/fastjson2/reader/ObjectReader2;";	$r58 = virtualinvoke $r57.<java.lang.Class: java.lang.String getName()>();	$r59 = virtualinvoke $r58.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_2> = $r59;	$r60 = class "Lcom/alibaba/fastjson2/reader/ObjectReader3;";	$r61 = virtualinvoke $r60.<java.lang.Class: java.lang.String getName()>();	$r62 = virtualinvoke $r61.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_3> = $r62;	$r63 = class "Lcom/alibaba/fastjson2/reader/ObjectReader4;";	$r64 = virtualinvoke $r63.<java.lang.Class: java.lang.String getName()>();	$r65 = virtualinvoke $r64.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_4> = $r65;	$r66 = class "Lcom/alibaba/fastjson2/reader/ObjectReader5;";	$r67 = virtualinvoke $r66.<java.lang.Class: java.lang.String getName()>();	$r68 = virtualinvoke $r67.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_5> = $r68;	$r69 = class "Lcom/alibaba/fastjson2/reader/ObjectReader6;";	$r70 = virtualinvoke $r69.<java.lang.Class: java.lang.String getName()>();	$r71 = virtualinvoke $r70.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_6> = $r71;	$r72 = class "Lcom/alibaba/fastjson2/reader/ObjectReader7;";	$r73 = virtualinvoke $r72.<java.lang.Class: java.lang.String getName()>();	$r74 = virtualinvoke $r73.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_7> = $r74;	$r75 = class "Lcom/alibaba/fastjson2/reader/ObjectReader8;";	$r76 = virtualinvoke $r75.<java.lang.Class: java.lang.String getName()>();	$r77 = virtualinvoke $r76.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_8> = $r77;	$r78 = class "Lcom/alibaba/fastjson2/reader/ObjectReader9;";	$r79 = virtualinvoke $r78.<java.lang.Class: java.lang.String getName()>();	$r80 = virtualinvoke $r79.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_9> = $r80;	$r81 = class "Lcom/alibaba/fastjson2/reader/ObjectReader10;";	$r82 = virtualinvoke $r81.<java.lang.Class: java.lang.String getName()>();	$r83 = virtualinvoke $r82.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_10> = $r83;	$r84 = class "Lcom/alibaba/fastjson2/reader/ObjectReader11;";	$r85 = virtualinvoke $r84.<java.lang.Class: java.lang.String getName()>();	$r86 = virtualinvoke $r85.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_11> = $r86;	$r87 = class "Lcom/alibaba/fastjson2/reader/ObjectReader12;";	$r88 = virtualinvoke $r87.<java.lang.Class: java.lang.String getName()>();	$r89 = virtualinvoke $r88.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER_12> = $r89;	$r90 = class "Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;";	$r91 = virtualinvoke $r90.<java.lang.Class: java.lang.String getName()>();	$r92 = virtualinvoke $r91.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_BYTE_ARRAY_VALUE_CONSUMER> = $r92;	$r93 = class "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;";	$r94 = virtualinvoke $r93.<java.lang.Class: java.lang.String getName()>();	$r95 = virtualinvoke $r94.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_CHAR_ARRAY_VALUE_CONSUMER> = $r95;	$r96 = class "Lcom/alibaba/fastjson2/util/TypeUtils;";	$r97 = virtualinvoke $r96.<java.lang.Class: java.lang.String getName()>();	$r98 = virtualinvoke $r97.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_TYPE_UTILS> = $r98;	$r99 = class "Lcom/alibaba/fastjson2/util/DateUtils;";	$r100 = virtualinvoke $r99.<java.lang.Class: java.lang.String getName()>();	$r101 = virtualinvoke $r100.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_DATE_UTILS> = $r101;	$r102 = class "Lcom/alibaba/fastjson2/writer/ObjectWriter;";	$r103 = virtualinvoke $r102.<java.lang.Class: java.lang.String getName()>();	$r104 = virtualinvoke $r103.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER> = $r104;	$r105 = class "Lcom/alibaba/fastjson2/JSONWriter;";	$r106 = virtualinvoke $r105.<java.lang.Class: java.lang.String getName()>();	$r107 = virtualinvoke $r106.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER> = $r107;	$r108 = class "Lcom/alibaba/fastjson2/writer/FieldWriter;";	$r109 = virtualinvoke $r108.<java.lang.Class: java.lang.String getName()>();	$r110 = virtualinvoke $r109.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_FIELD_WRITER> = $r110;	$r111 = new java.lang.StringBuilder;	specialinvoke $r111.<java.lang.StringBuilder: void <init>()>();	$r115 = virtualinvoke $r111.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r112 = class "Lcom/alibaba/fastjson2/writer/FieldWriter;";	$r113 = virtualinvoke $r112.<java.lang.Class: java.lang.String getName()>();	$r114 = virtualinvoke $r113.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r116 = virtualinvoke $r115.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r114);	$r117 = virtualinvoke $r116.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r118 = virtualinvoke $r117.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER> = $r118;	$r119 = new java.lang.StringBuilder;	specialinvoke $r119.<java.lang.StringBuilder: void <init>()>();	$r121 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r120 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER>;	$r122 = virtualinvoke $r121.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r120);	$r123 = virtualinvoke $r122.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY> = $r123;	$r124 = new java.lang.StringBuilder;	specialinvoke $r124.<java.lang.StringBuilder: void <init>()>();	$r128 = virtualinvoke $r124.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r125 = class "Lcom/alibaba/fastjson2/reader/FieldReader;";	$r126 = virtualinvoke $r125.<java.lang.Class: java.lang.String getName()>();	$r127 = virtualinvoke $r126.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r129 = virtualinvoke $r128.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r127);	$r130 = virtualinvoke $r129.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r131 = virtualinvoke $r130.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER> = $r131;	$r132 = new java.lang.StringBuilder;	specialinvoke $r132.<java.lang.StringBuilder: void <init>()>();	$r134 = virtualinvoke $r132.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r133 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER>;	$r135 = virtualinvoke $r134.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r133);	$r136 = virtualinvoke $r135.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY> = $r136;	$r137 = new java.lang.StringBuilder;	specialinvoke $r137.<java.lang.StringBuilder: void <init>()>();	$r139 = virtualinvoke $r137.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r138 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_READER>;	$r140 = virtualinvoke $r139.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r138);	$r141 = virtualinvoke $r140.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r142 = virtualinvoke $r141.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_READER> = $r142;	$r143 = new java.lang.StringBuilder;	specialinvoke $r143.<java.lang.StringBuilder: void <init>()>();	$r145 = virtualinvoke $r143.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r144 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	$r146 = virtualinvoke $r145.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r144);	$r147 = virtualinvoke $r146.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r148 = virtualinvoke $r147.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER> = $r148;	$r149 = new java.lang.StringBuilder;	specialinvoke $r149.<java.lang.StringBuilder: void <init>()>();	$r151 = virtualinvoke $r149.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r150 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_READER>;	$r152 = virtualinvoke $r151.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r150);	$r153 = virtualinvoke $r152.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r154 = virtualinvoke $r153.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_READER> = $r154;	$r155 = new java.lang.StringBuilder;	specialinvoke $r155.<java.lang.StringBuilder: void <init>()>();	$r157 = virtualinvoke $r155.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r156 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER>;	$r158 = virtualinvoke $r157.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r156);	$r159 = virtualinvoke $r158.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r160 = virtualinvoke $r159.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER> = $r160;	$r161 = new java.lang.StringBuilder;	specialinvoke $r161.<java.lang.StringBuilder: void <init>()>();	$r165 = virtualinvoke $r161.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	$r162 = class "Lcom/alibaba/fastjson2/schema/JSONSchema;";	$r163 = virtualinvoke $r162.<java.lang.Class: java.lang.String getName()>();	$r164 = virtualinvoke $r163.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r166 = virtualinvoke $r165.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r164);	$r167 = virtualinvoke $r166.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	$r168 = virtualinvoke $r167.<java.lang.StringBuilder: java.lang.String toString()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSONSCHEMA> = $r168;	$r169 = new java.util.HashMap;	specialinvoke $r169.<java.util.HashMap: void <init>()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping> = $r169;	$r170 = new java.util.HashMap;	specialinvoke $r170.<java.util.HashMap: void <init>()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping> = $r170;	$r171 = new java.util.HashMap;	specialinvoke $r171.<java.util.HashMap: void <init>()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping> = $r171;	$r174 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>;	$r172 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo;	$r173 = class "Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;";	$r176 = virtualinvoke $r173.<java.lang.Class: java.lang.String getName()>();	$r175 = newarray (java.lang.String)[3];	$r175[0] = "[Ljava.lang.reflect.Type;";	$r175[1] = "java.lang.reflect.Type";	$r175[2] = "java.lang.reflect.Type";	specialinvoke $r172.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>($r176, "<init>", $r175);	$r177 = newarray (java.lang.String)[3];	$r177[0] = "actualTypeArguments";	$r177[1] = "ownerType";	$r177[2] = "rawType";	interfaceinvoke $r174.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r172, $r177);	$r180 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>;	$r178 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo;	$r179 = newarray (java.lang.String)[3];	$r179[0] = "java.lang.Object";	$r179[1] = "java.lang.Object";	$r179[2] = "java.lang.Object";	specialinvoke $r178.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.apache.commons.lang3.tuple.Triple", "of", $r179);	$r181 = newarray (java.lang.String)[3];	$r181[0] = "left";	$r181[1] = "middle";	$r181[2] = "right";	interfaceinvoke $r180.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r178, $r181);	$r184 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>;	$r182 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo;	$r183 = newarray (java.lang.String)[3];	$r183[0] = "java.lang.Object";	$r183[1] = "java.lang.Object";	$r183[2] = "java.lang.Object";	specialinvoke $r182.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.apache.commons.lang3.tuple.MutableTriple", "<init>", $r183);	$r185 = newarray (java.lang.String)[3];	$r185[0] = "left";	$r185[1] = "middle";	$r185[2] = "right";	interfaceinvoke $r184.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r182, $r185);	$r188 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>;	$r186 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo;	$r187 = newarray (java.lang.String)[3];	$r187[0] = "java.math.BigDecimal";	$r187[1] = "javax.money.CurrencyUnit";	$r187[2] = "javax.money.MonetaryContext";	specialinvoke $r186.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.javamoney.moneta.Money", "<init>", $r187);	$r189 = newarray (java.lang.String)[3];	$r189[0] = "number";	$r189[1] = "currency";	$r189[2] = "monetaryContext";	interfaceinvoke $r188.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r186, $r189);	$r192 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map paramMapping>;	$r190 = new com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo;	$r191 = newarray (java.lang.String)[2];	$r191[0] = "java.math.BigDecimal";	$r191[1] = "javax.money.CurrencyUnit";	specialinvoke $r190.<com.alibaba.fastjson2.internal.asm.ASMUtils$MethodInfo: void <init>(java.lang.String,java.lang.String,java.lang.String[])>("org.javamoney.moneta.Money", "<init>", $r191);	$r193 = newarray (java.lang.String)[2];	$r193[0] = "number";	$r193[1] = "currency";	interfaceinvoke $r192.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r190, $r193);	$r195 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r194 = <java.lang.Integer: java.lang.Class TYPE>;	interfaceinvoke $r195.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r194, "I");	$r197 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r196 = <java.lang.Void: java.lang.Class TYPE>;	interfaceinvoke $r197.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r196, "V");	$r199 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r198 = <java.lang.Boolean: java.lang.Class TYPE>;	interfaceinvoke $r199.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r198, "Z");	$r201 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r200 = <java.lang.Character: java.lang.Class TYPE>;	interfaceinvoke $r201.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r200, "C");	$r203 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r202 = <java.lang.Byte: java.lang.Class TYPE>;	interfaceinvoke $r203.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r202, "B");	$r205 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r204 = <java.lang.Short: java.lang.Class TYPE>;	interfaceinvoke $r205.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r204, "S");	$r207 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r206 = <java.lang.Float: java.lang.Class TYPE>;	interfaceinvoke $r207.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r206, "F");	$r209 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r208 = <java.lang.Long: java.lang.Class TYPE>;	interfaceinvoke $r209.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r208, "J");	$r211 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r210 = <java.lang.Double: java.lang.Class TYPE>;	interfaceinvoke $r211.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r210, "D");	$r213 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r212 = <java.lang.Integer: java.lang.Class TYPE>;	interfaceinvoke $r213.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r212, "I");	$r215 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r214 = <java.lang.Void: java.lang.Class TYPE>;	interfaceinvoke $r215.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r214, "V");	$r217 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r216 = <java.lang.Boolean: java.lang.Class TYPE>;	interfaceinvoke $r217.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r216, "Z");	$r219 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r218 = <java.lang.Character: java.lang.Class TYPE>;	interfaceinvoke $r219.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r218, "C");	$r221 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r220 = <java.lang.Byte: java.lang.Class TYPE>;	interfaceinvoke $r221.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r220, "B");	$r223 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r222 = <java.lang.Short: java.lang.Class TYPE>;	interfaceinvoke $r223.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r222, "S");	$r225 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r224 = <java.lang.Float: java.lang.Class TYPE>;	interfaceinvoke $r225.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r224, "F");	$r227 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r226 = <java.lang.Long: java.lang.Class TYPE>;	interfaceinvoke $r227.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r226, "J");	$r229 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r228 = <java.lang.Double: java.lang.Class TYPE>;	interfaceinvoke $r229.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r228, "D");	$r230 = newarray (java.lang.Class)[50];	$r230[0] = class "Ljava/lang/String;";	$r230[1] = class "Ljava/util/List;";	$r230[2] = class "Ljava/util/Collection;";	$r230[3] = class "Lcom/alibaba/fastjson2/reader/ObjectReader;";	$r230[4] = class "Lcom/alibaba/fastjson2/reader/ObjectReader1;";	$r230[5] = class "Lcom/alibaba/fastjson2/reader/ObjectReader2;";	$r230[6] = class "Lcom/alibaba/fastjson2/reader/ObjectReader3;";	$r230[7] = class "Lcom/alibaba/fastjson2/reader/ObjectReader4;";	$r230[8] = class "Lcom/alibaba/fastjson2/reader/ObjectReader5;";	$r230[9] = class "Lcom/alibaba/fastjson2/reader/ObjectReader6;";	$r230[10] = class "Lcom/alibaba/fastjson2/reader/ObjectReader7;";	$r230[11] = class "Lcom/alibaba/fastjson2/reader/ObjectReader8;";	$r230[12] = class "Lcom/alibaba/fastjson2/reader/ObjectReader9;";	$r230[13] = class "Lcom/alibaba/fastjson2/reader/ObjectReader10;";	$r230[14] = class "Lcom/alibaba/fastjson2/reader/ObjectReader11;";	$r230[15] = class "Lcom/alibaba/fastjson2/reader/ObjectReader12;";	$r230[16] = class "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;";	$r230[17] = class "Lcom/alibaba/fastjson2/reader/FieldReader;";	$r230[18] = class "Lcom/alibaba/fastjson2/JSONReader;";	$r230[19] = class "Lcom/alibaba/fastjson2/function/ObjBoolConsumer;";	$r230[20] = class "Lcom/alibaba/fastjson2/function/ObjCharConsumer;";	$r230[21] = class "Lcom/alibaba/fastjson2/function/ObjByteConsumer;";	$r230[22] = class "Lcom/alibaba/fastjson2/function/ObjShortConsumer;";	$r230[23] = class "Ljava/util/function/ObjIntConsumer;";	$r230[24] = class "Ljava/util/function/ObjLongConsumer;";	$r230[25] = class "Lcom/alibaba/fastjson2/function/ObjFloatConsumer;";	$r230[26] = class "Ljava/util/function/ObjDoubleConsumer;";	$r230[27] = class "Ljava/util/function/BiConsumer;";	$r230[28] = class "Lcom/alibaba/fastjson2/util/JDKUtils;";	$r230[29] = class "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;";	$r230[30] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter1;";	$r230[31] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter2;";	$r230[32] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter3;";	$r230[33] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter4;";	$r230[34] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter5;";	$r230[35] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter6;";	$r230[36] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter7;";	$r230[37] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter8;";	$r230[38] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter9;";	$r230[39] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter10;";	$r230[40] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter11;";	$r230[41] = class "Lcom/alibaba/fastjson2/writer/ObjectWriter12;";	$r230[42] = class "Lcom/alibaba/fastjson2/writer/FieldWriter;";	$r230[43] = class "Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;";	$r230[44] = class "Lcom/alibaba/fastjson2/JSONWriter$Context;";	$r230[45] = class "Lcom/alibaba/fastjson2/JSONB;";	$r230[46] = class "Lcom/alibaba/fastjson2/schema/JSONSchema;";	$r230[47] = class "Lcom/alibaba/fastjson2/annotation/JSONType;";	$r230[48] = class "Ljava/util/Date;";	$r230[49] = class "Ljava/util/function/Supplier;";	i0 = lengthof $r230;	i1 = 0;	if i1 >= i0 goto $r232 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r232 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r231 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_JSON_WRITER>;	interfaceinvoke $r232.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONWriter;", $r231);	$r234 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r233 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_JSON_WRITER>;	interfaceinvoke $r234.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/JSONWriter;", $r233);	$r236 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map typeMapping>;	$r235 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER>;	interfaceinvoke $r236.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;", $r235);	$r238 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r237 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_OBJECT_WRITER>;	interfaceinvoke $r238.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "Lcom/alibaba/fastjson2/writer/ObjectWriter;", $r237);	$r240 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r239 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_WRITER_ARRAY>;	interfaceinvoke $r240.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "[Lcom/alibaba/fastjson2/writer/FieldWriter;", $r239);	$r242 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.Map descMapping>;	$r241 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String DESC_FIELD_READER_ARRAY>;	interfaceinvoke $r242.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(class "[Lcom/alibaba/fastjson2/reader/FieldReader;", $r241);	$r243 = new java.util.concurrent.atomic.AtomicReference;	specialinvoke $r243.<java.util.concurrent.atomic.AtomicReference: void <init>()>();	<com.alibaba.fastjson2.internal.asm.ASMUtils: java.util.concurrent.atomic.AtomicReference descCacheRef> = $r243;	return
;block_num 3