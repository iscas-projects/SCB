(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1289 0)
(declare-sort var12 0)
(declare-sort var701 0)
(declare-sort var3760 0)
(declare-sort var2433 0)
(declare-sort var3550 0)
(declare-sort var3305 0)
(declare-sort var2263 0)
(declare-sort var280 0)
(declare-sort var2283 0)
(declare-sort var1561 0)
(declare-sort var1033 0)
(declare-sort var1716 0)
(declare-sort var387 0)
(declare-sort var1787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1289!class ClassObject)
(declare-fun var2433-init () var2433)
(declare-fun <init>/1561585841 (var2433 var3550) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2263) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3760_size/-959786421 (var3760) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var280)
(declare-fun visit/1245821975 (var2433 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1289 var3760 var2433 String) void)
(declare-fun genMethodInit/736566045 (var1289 var3760 var2433 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1289 var12 ClassObject var3760 var2433 String Int) void)
(declare-fun mask/-2077367092 (var1561) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1289 var12 String ClassObject Int var3760 var2433 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1289 var12 ClassObject Int var3760 var2433 String Int) void)
(declare-fun toByteArray/1561254549 (var2433) (Array Int Int))
(declare-fun classLoader/1229018461 (var1289) var1033)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1033 String (Array Int Int) Int Int) ClassObject)
(declare-fun var387-init () var387)
(declare-fun append/-1031950772 (String var1787) String)
(declare-fun cast-from-ClassObject-to-var1787 (ClassObject) var1787)
(declare-fun <init>/-743866570 (var387 String var1716) void)
(declare-const null-var1289 var1289)
(declare-const null-ClassObject ClassObject)
(declare-const null-var12 var12)
(declare-const null-var701 var701)
(declare-const null-var3760 var3760)
(declare-const null-Int Int)
(declare-const null-NullType var3305)
(declare-const null-var3550 var3550)
(declare-const var1289-seed var2263)
(declare-const null-var280 var280)
(declare-const var2283-TYPE_OBJECT_WRITER_2 String)
(declare-const var1289-INTERFACES (Array Int String))
(declare-const var1561-BeanToArray var1561)
(declare-const null-var1716 var1716)
(declare-const var3133 var1289) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3133 null-var1289)))
(declare-const var3770 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3770 null-ClassObject)))
(declare-const var3117 var12) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3117 null-var12)))
(declare-const var52 var701) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var52 null-var701)))
(declare-const var2611 var3760) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2611 null-var3760)))
(declare-const var2568 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2568 null-Int)))
(define-const var2408 var2433 var2433-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2408 null-var3550)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2408!1 var2433)
(declare-const var836 var3305)
(define-const var264 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var264)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var264!1 String)
(assert (= var264!1 ""))
(assert true)
(define-const var1530 String (append/672562846 var264!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var264!2 String)
(assert (= var264!2 (str.++ var264!1 "OWG_")))
(define-const var3500 var2263 var1289-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3176 Int (incrementAndGet/636047358 var3500)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var226 String (append/-901862667 var1530 var3176)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1530!1 String)
(assert (str.prefixof var1530 var1530!1))
(assert true)
(define-const var3744 String (append/672562846 var226 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var226!1 String)
(assert (= var226!1 (str.++ var226 "_")))
(define-const var3570 Int (var3760_size/-959786421 var2611)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3484 String (append/-1001720160 var3744 var3570)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3744!1 String)
(assert (str.prefixof var3744 var3744!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3770 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var370 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1738 String (append/672562846 var3484 var370)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3484!1 String)
(assert (= var3484!1 (str.++ var3484 var370)))
(assert true)
(define-const var1968 String (toString/-2075883882 var1738)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1950 ClassObject var1289!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var891 var280 (getPackage/-1841711535 var1950)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var891 null-var280)) ; Cond: $r34 == null 
(define-const var2476 String var1968) ; Statement: r45 = $r33 
(define-const var1985 String var1968) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var897 Int (var3760_size/-959786421 var2611)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var897 2) (and (not (= var897 1)) true))) ; Intersect: Cond: $i2 == 2  and Intersect: Negate: Cond: $i2 == 1   and Non Conditional  
(define-const var3145 String var2283-TYPE_OBJECT_WRITER_2) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var901 (Array Int String) var1289-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2408!1 52 49 var2476 var3145 var901)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2408!2 var2433)
(declare-const var1529 Int)
(declare-const var3268 Int)
(declare-const var2476!1 String)
(declare-const var3145!1 String)
(declare-const var901!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3133 var2611 var2408!2 var3145!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3133!1 var1289)
(declare-const var2611!1 var3760)
(declare-const var2408!3 var2433)
(declare-const var3145!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3133!1 var2611!1 var2408!3 var2476!1 var3145!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3133!2 var1289)
(declare-const var2611!2 var3760)
(declare-const var2408!4 var2433)
(declare-const var2476!2 String)
(declare-const var3145!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3133!2 var3117 var3770 var2611!2 var2408!4 var2476!2 var2568)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3133!3 var1289)
(declare-const var3117!1 var12)
(declare-const var3770!1 ClassObject)
(declare-const var2611!3 var3760)
(declare-const var2408!5 var2433)
(declare-const var2476!3 String)
(declare-const var2568!1 Int)
(define-const var2807 var1561 var1561-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3174 Int (mask/-2077367092 var2807)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3969 Int (bv2nat (bvand ((_ int2bv 64) var2568!1) ((_ int2bv 64) var3174)))) ; Statement: $l15 = l3 & $l14 
(define-const var3263 Int (ite (> var3969 0) 1 (ite (< var3969 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var3263 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3133!3 var3117!1 "write" var3770!1 var2568!1 var2611!3 var2408!5 var2476!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3133!4 var1289)
(declare-const var3117!2 var12)
(declare-const var666 String)
(declare-const var3770!2 ClassObject)
(declare-const var2568!2 Int)
(declare-const var2611!4 var3760)
(declare-const var2408!6 var2433)
(declare-const var2476!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3133!4 var3117!2 var3770!2 var2568!2 var2611!4 var2408!6 var2476!4 var2568!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3133!5 var1289)
(declare-const var3117!3 var12)
(declare-const var3770!3 ClassObject)
(declare-const var2568!3 Int)
(declare-const var2611!5 var3760)
(declare-const var2408!7 var2433)
(declare-const var2476!5 String)
(declare-const var2568!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3133!5 var3117!3 "writeArrayMapping" var3770!3 var2568!4 var2611!5 var2408!7 var2476!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3133!6 var1289)
(declare-const var3117!4 var12)
(declare-const var1451 String)
(declare-const var3770!4 ClassObject)
(declare-const var2568!5 Int)
(declare-const var2611!6 var3760)
(declare-const var2408!8 var2433)
(declare-const var2476!6 String)
(assert true)
(define-const var3622 (Array Int Int) (toByteArray/1561254549 var2408!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var539 var1033 (classLoader/1229018461 var3133!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3632 Int (getLength-Arr-Int-1 var3622)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1976 ClassObject (defineClassPublic/-885393557 var539 var1985 var3622 0 var3632)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1822 var1716) ; Statement: $r35 := @caughtexception 
(assert (not (= var1822 null-var1716)))
(define-const var3120 var387 var387-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3947 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3947)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3947!1 String)
(assert (= var3947!1 ""))
(assert true)
(define-const var2046 String (append/672562846 var3947!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3947!2 String)
(assert (= var3947!2 (str.++ var3947!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2472 String (append/-1031950772 var2046 (cast-from-ClassObject-to-var1787 var3770!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2046!1 String)
(assert (str.prefixof var2046 var2046!1))
(assert true)
(define-const var3227 String (toString/-2075883882 var2472)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3120 var3227 var1822)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3120!1 var387)
(declare-const var3227!1 String)
(declare-const var1822!1 var1716)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2433-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3760_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var387-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1787=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1289=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3133=r15, var3770=r7, var12=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3117=r16, var701=com.alibaba.fastjson2.codec.BeanInfo, var52=r21, var3760=java.util.List, var2611=r5, var2568=l3, var2433=com.alibaba.fastjson2.internal.asm.ClassWriter, var2408=$r49, var3550=java.util.function.Function, var836=null, var3305=null_type, var264=$r50, var1530=$r3, var2263=java.util.concurrent.atomic.AtomicLong, var3500=$r2, var3176=$l0, var226=$r4, var3744=$r6, var3570=$i1, var3484=$r12, var370=$r41, var1738=$r13, var1968=$r33, var1950=$r14, var280=java.lang.Package, var891=$r34, var2476=r45, var1985=r44, var897=$i2, var2283=com.alibaba.fastjson2.internal.asm.ASMUtils, var3145=r46, var901=$r47, var1529=52, var3268=49, var1561=com.alibaba.fastjson2.JSONWriter$Feature, var2807=$r48, var3174=$l14, var3969=$l15, var3263=$b16, var666="write", var1451="writeArrayMapping", var3622=$r27, var1033=com.alibaba.fastjson2.util.DynamicClassLoader, var539=$r17, var3632=$i4, var1976=$r28, var1716=java.lang.Throwable, var1822=$r35, var387=com.alibaba.fastjson2.JSONException, var3120=$r55, var3947=$r54, var2046=$r38, var1787=java.lang.Object, var2472=$r39, var3227=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1289, r15=var3133, r7=var3770, com.alibaba.fastjson2.writer.ObjectWriterProvider=var12, r16=var3117, com.alibaba.fastjson2.codec.BeanInfo=var701, r21=var52, java.util.List=var3760, r5=var2611, l3=var2568, com.alibaba.fastjson2.internal.asm.ClassWriter=var2433, $r49=var2408, java.util.function.Function=var3550, null=var836, null_type=var3305, $r50=var264, $r3=var1530, java.util.concurrent.atomic.AtomicLong=var2263, $r2=var3500, $l0=var3176, $r4=var226, $r6=var3744, $i1=var3570, $r12=var3484, $r41=var370, $r13=var1738, $r33=var1968, $r14=var1950, java.lang.Package=var280, $r34=var891, r45=var2476, r44=var1985, $i2=var897, com.alibaba.fastjson2.internal.asm.ASMUtils=var2283, r46=var3145, $r47=var901, 52=var1529, 49=var3268, com.alibaba.fastjson2.JSONWriter$Feature=var1561, $r48=var2807, $l14=var3174, $l15=var3969, $b16=var3263, "write"=var666, "writeArrayMapping"=var1451, $r27=var3622, com.alibaba.fastjson2.util.DynamicClassLoader=var1033, $r17=var539, $i4=var3632, $r28=var1976, java.lang.Throwable=var1716, $r35=var1822, com.alibaba.fastjson2.JSONException=var387, $r55=var3120, $r54=var3947, $r38=var2046, java.lang.Object=var1787, $r39=var2472, $r40=var3227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10