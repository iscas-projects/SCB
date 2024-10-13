(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3887 0)
(declare-sort var553 0)
(declare-sort var1395 0)
(declare-sort var290 0)
(declare-sort var2659 0)
(declare-sort var3592 0)
(declare-sort var3165 0)
(declare-sort var3282 0)
(declare-sort var3982 0)
(declare-sort var3005 0)
(declare-sort var395 0)
(declare-sort var619 0)
(declare-sort var2968 0)
(declare-sort var3508 0)
(declare-sort var3518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3887!class ClassObject)
(declare-fun var2659-init () var2659)
(declare-fun <init>/1561585841 (var2659 var3592) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3282) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var290_size/-959786421 (var290) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3982)
(declare-fun visit/1245821975 (var2659 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3887 var290 var2659 String) void)
(declare-fun genMethodInit/736566045 (var3887 var290 var2659 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3887 var553 ClassObject var290 var2659 String Int) void)
(declare-fun mask/-2077367092 (var395) Int)
(declare-fun genMethodWrite/551741206 (var3887 var553 ClassObject var290 var2659 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3887 var553 ClassObject Int var290 var2659 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3887 var553 String ClassObject Int var290 var2659 String) void)
(declare-fun toByteArray/1561254549 (var2659) (Array Int Int))
(declare-fun classLoader/1229018461 (var3887) var619)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var619 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3508-init () var3508)
(declare-fun append/-1031950772 (String var3518) String)
(declare-fun cast-from-ClassObject-to-var3518 (ClassObject) var3518)
(declare-fun <init>/-743866570 (var3508 String var2968) void)
(declare-const null-var3887 var3887)
(declare-const null-ClassObject ClassObject)
(declare-const null-var553 var553)
(declare-const null-var1395 var1395)
(declare-const null-var290 var290)
(declare-const null-Int Int)
(declare-const null-NullType var3165)
(declare-const null-var3592 var3592)
(declare-const var3887-seed var3282)
(declare-const null-var3982 var3982)
(declare-const var3005-TYPE_OBJECT_WRITER_3 String)
(declare-const var3887-INTERFACES (Array Int String))
(declare-const var395-BeanToArray var395)
(declare-const null-var2968 var2968)
(declare-const var1236 var3887) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1236 null-var3887)))
(declare-const var2277 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2277 null-ClassObject)))
(declare-const var2553 var553) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2553 null-var553)))
(declare-const var3978 var1395) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3978 null-var1395)))
(declare-const var3617 var290) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3617 null-var290)))
(declare-const var96 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var96 null-Int)))
(define-const var1308 var2659 var2659-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1308 null-var3592)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1308!1 var2659)
(declare-const var3064 var3165)
(define-const var69 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var69)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var69!1 String)
(assert (= var69!1 ""))
(assert true)
(define-const var3030 String (append/672562846 var69!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var69!2 String)
(assert (= var69!2 (str.++ var69!1 "OWG_")))
(define-const var1864 var3282 var3887-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3782 Int (incrementAndGet/636047358 var1864)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1707 String (append/-901862667 var3030 var3782)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3030!1 String)
(assert (str.prefixof var3030 var3030!1))
(assert true)
(define-const var2772 String (append/672562846 var1707 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1707!1 String)
(assert (= var1707!1 (str.++ var1707 "_")))
(define-const var3820 Int (var290_size/-959786421 var3617)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3714 String (append/-1001720160 var2772 var3820)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2772!1 String)
(assert (str.prefixof var2772 var2772!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var2277 null-ClassObject))) ; Cond: r7 != null 
(define-const var1846 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1846)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1846!1 String)
(assert (= var1846!1 ""))
(assert true)
(define-const var2350 String (append/672562846 var1846!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1846!2 String)
(assert (= var1846!2 (str.++ var1846!1 "_")))
(assert true)
(define-const var1267 String (getSimpleName/-390194377 var2277)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3365 String (append/672562846 var2350 var1267)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2350!1 String)
(assert (= var2350!1 (str.++ var2350 var1267)))
(assert true)
(define-const var2290 String (toString/-2075883882 var3365)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3201 String (append/672562846 var3714 var2290)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3714!1 String)
(assert (= var3714!1 (str.++ var3714 var2290)))
(assert true)
(define-const var1479 String (toString/-2075883882 var3201)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2512 ClassObject var3887!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var743 var3982 (getPackage/-1841711535 var2512)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var743 null-var3982)) ; Cond: $r34 == null 
(define-const var186 String var1479) ; Statement: r45 = $r33 
(define-const var3836 String var1479) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2711 Int (var290_size/-959786421 var3617)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2711 3) (and (not (= var2711 2)) (and (not (= var2711 1)) true)))) ; Intersect: Cond: $i2 == 3  and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional   
(define-const var853 String var3005-TYPE_OBJECT_WRITER_3) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3650 (Array Int String) var3887-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1308!1 52 49 var186 var853 var3650)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1308!2 var2659)
(declare-const var2812 Int)
(declare-const var613 Int)
(declare-const var186!1 String)
(declare-const var853!1 String)
(declare-const var3650!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1236 var3617 var1308!2 var853!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1236!1 var3887)
(declare-const var3617!1 var290)
(declare-const var1308!3 var2659)
(declare-const var853!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1236!1 var3617!1 var1308!3 var186!1 var853!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1236!2 var3887)
(declare-const var3617!2 var290)
(declare-const var1308!4 var2659)
(declare-const var186!2 String)
(declare-const var853!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1236!2 var2553 var2277 var3617!2 var1308!4 var186!2 var96)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1236!3 var3887)
(declare-const var2553!1 var553)
(declare-const var2277!1 ClassObject)
(declare-const var3617!3 var290)
(declare-const var1308!5 var2659)
(declare-const var186!3 String)
(declare-const var96!1 Int)
(define-const var195 var395 var395-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1342 Int (mask/-2077367092 var195)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1509 Int (bv2nat (bvand ((_ int2bv 64) var96!1) ((_ int2bv 64) var1342)))) ; Statement: $l15 = l3 & $l14 
(define-const var2354 Int (ite (> var1509 0) 1 (ite (< var1509 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var2354 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var1236!3 var2553!1 var2277!1 var3617!3 var1308!5 var186!3 var96!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1236!4 var3887)
(declare-const var2553!2 var553)
(declare-const var2277!2 ClassObject)
(declare-const var3617!4 var290)
(declare-const var1308!6 var2659)
(declare-const var186!4 String)
(declare-const var96!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1236!4 var2553!2 var2277!2 var96!2 var3617!4 var1308!6 var186!4 var96!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1236!5 var3887)
(declare-const var2553!3 var553)
(declare-const var2277!3 ClassObject)
(declare-const var96!3 Int)
(declare-const var3617!5 var290)
(declare-const var1308!7 var2659)
(declare-const var186!5 String)
(declare-const var96!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1236!5 var2553!3 "writeArrayMapping" var2277!3 var96!4 var3617!5 var1308!7 var186!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1236!6 var3887)
(declare-const var2553!4 var553)
(declare-const var2029 String)
(declare-const var2277!4 ClassObject)
(declare-const var96!5 Int)
(declare-const var3617!6 var290)
(declare-const var1308!8 var2659)
(declare-const var186!6 String)
(assert true)
(define-const var2253 (Array Int Int) (toByteArray/1561254549 var1308!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3053 var619 (classLoader/1229018461 var1236!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1239 Int (getLength-Arr-Int-1 var2253)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var145 ClassObject (defineClassPublic/-885393557 var3053 var3836 var2253 0 var1239)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var938 var2968) ; Statement: $r35 := @caughtexception 
(assert (not (= var938 null-var2968)))
(define-const var3437 var3508 var3508-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2115 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2115)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2115!1 String)
(assert (= var2115!1 ""))
(assert true)
(define-const var82 String (append/672562846 var2115!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2115!2 String)
(assert (= var2115!2 (str.++ var2115!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3119 String (append/-1031950772 var82 (cast-from-ClassObject-to-var3518 var2277!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var82!1 String)
(assert (str.prefixof var82 var82!1))
(assert true)
(define-const var2270 String (toString/-2075883882 var3119)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3437 var2270 var938)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3437!1 var3508)
(declare-const var2270!1 String)
(declare-const var938!1 var2968)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2659-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var290_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3508-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3518=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3887=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1236=r15, var2277=r7, var553=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2553=r16, var1395=com.alibaba.fastjson2.codec.BeanInfo, var3978=r21, var290=java.util.List, var3617=r5, var96=l3, var2659=com.alibaba.fastjson2.internal.asm.ClassWriter, var1308=$r49, var3592=java.util.function.Function, var3064=null, var3165=null_type, var69=$r50, var3030=$r3, var3282=java.util.concurrent.atomic.AtomicLong, var1864=$r2, var3782=$l0, var1707=$r4, var2772=$r6, var3820=$i1, var3714=$r12, var1846=$r51, var2350=$r10, var1267=$r9, var3365=$r11, var2290=$r41, var3201=$r13, var1479=$r33, var2512=$r14, var3982=java.lang.Package, var743=$r34, var186=r45, var3836=r44, var2711=$i2, var3005=com.alibaba.fastjson2.internal.asm.ASMUtils, var853=r46, var3650=$r47, var2812=52, var613=49, var395=com.alibaba.fastjson2.JSONWriter$Feature, var195=$r48, var1342=$l14, var1509=$l15, var2354=$b16, var2029="writeArrayMapping", var2253=$r27, var619=com.alibaba.fastjson2.util.DynamicClassLoader, var3053=$r17, var1239=$i4, var145=$r28, var2968=java.lang.Throwable, var938=$r35, var3508=com.alibaba.fastjson2.JSONException, var3437=$r55, var2115=$r54, var82=$r38, var3518=java.lang.Object, var3119=$r39, var2270=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3887, r15=var1236, r7=var2277, com.alibaba.fastjson2.writer.ObjectWriterProvider=var553, r16=var2553, com.alibaba.fastjson2.codec.BeanInfo=var1395, r21=var3978, java.util.List=var290, r5=var3617, l3=var96, com.alibaba.fastjson2.internal.asm.ClassWriter=var2659, $r49=var1308, java.util.function.Function=var3592, null=var3064, null_type=var3165, $r50=var69, $r3=var3030, java.util.concurrent.atomic.AtomicLong=var3282, $r2=var1864, $l0=var3782, $r4=var1707, $r6=var2772, $i1=var3820, $r12=var3714, $r51=var1846, $r10=var2350, $r9=var1267, $r11=var3365, $r41=var2290, $r13=var3201, $r33=var1479, $r14=var2512, java.lang.Package=var3982, $r34=var743, r45=var186, r44=var3836, $i2=var2711, com.alibaba.fastjson2.internal.asm.ASMUtils=var3005, r46=var853, $r47=var3650, 52=var2812, 49=var613, com.alibaba.fastjson2.JSONWriter$Feature=var395, $r48=var195, $l14=var1342, $l15=var1509, $b16=var2354, "writeArrayMapping"=var2029, $r27=var2253, com.alibaba.fastjson2.util.DynamicClassLoader=var619, $r17=var3053, $i4=var1239, $r28=var145, java.lang.Throwable=var2968, $r35=var938, com.alibaba.fastjson2.JSONException=var3508, $r55=var3437, $r54=var2115, $r38=var82, java.lang.Object=var3518, $r39=var3119, $r40=var2270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10