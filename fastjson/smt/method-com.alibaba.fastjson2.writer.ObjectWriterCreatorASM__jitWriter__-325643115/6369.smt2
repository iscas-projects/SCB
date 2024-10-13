(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3836 0)
(declare-sort var3629 0)
(declare-sort var2395 0)
(declare-sort var2842 0)
(declare-sort var3304 0)
(declare-sort var3039 0)
(declare-sort var1802 0)
(declare-sort var2858 0)
(declare-sort var2480 0)
(declare-sort var2103 0)
(declare-sort var3563 0)
(declare-sort var2646 0)
(declare-sort var2124 0)
(declare-sort var3970 0)
(declare-sort var3382 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3836!class ClassObject)
(declare-fun var3304-init () var3304)
(declare-fun <init>/1561585841 (var3304 var3039) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2858) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2842_size/-959786421 (var2842) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2480)
(declare-fun visit/1245821975 (var3304 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3836 var2842 var3304 String) void)
(declare-fun genMethodInit/736566045 (var3836 var2842 var3304 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3836 var3629 ClassObject var2842 var3304 String Int) void)
(declare-fun mask/-2077367092 (var3563) Int)
(declare-fun genMethodWrite/551741206 (var3836 var3629 ClassObject var2842 var3304 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3836 var3629 ClassObject Int var2842 var3304 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3836 var3629 String ClassObject Int var2842 var3304 String) void)
(declare-fun toByteArray/1561254549 (var3304) (Array Int Int))
(declare-fun classLoader/1229018461 (var3836) var2646)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2646 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3970-init () var3970)
(declare-fun append/-1031950772 (String var3382) String)
(declare-fun cast-from-ClassObject-to-var3382 (ClassObject) var3382)
(declare-fun <init>/-743866570 (var3970 String var2124) void)
(declare-const null-var3836 var3836)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3629 var3629)
(declare-const null-var2395 var2395)
(declare-const null-var2842 var2842)
(declare-const null-Int Int)
(declare-const null-NullType var1802)
(declare-const null-var3039 var3039)
(declare-const var3836-seed var2858)
(declare-const null-var2480 var2480)
(declare-const var2103-TYPE_OBJECT_WRITER_9 String)
(declare-const var3836-INTERFACES (Array Int String))
(declare-const var3563-BeanToArray var3563)
(declare-const null-var2124 var2124)
(declare-const var1469 var3836) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1469 null-var3836)))
(declare-const var3265 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3265 null-ClassObject)))
(declare-const var2623 var3629) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2623 null-var3629)))
(declare-const var2119 var2395) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2119 null-var2395)))
(declare-const var2084 var2842) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2084 null-var2842)))
(declare-const var3872 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3872 null-Int)))
(define-const var1453 var3304 var3304-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1453 null-var3039)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1453!1 var3304)
(declare-const var2729 var1802)
(define-const var710 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var710)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var710!1 String)
(assert (= var710!1 ""))
(assert true)
(define-const var460 String (append/672562846 var710!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var710!2 String)
(assert (= var710!2 (str.++ var710!1 "OWG_")))
(define-const var3025 var2858 var3836-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3801 Int (incrementAndGet/636047358 var3025)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1049 String (append/-901862667 var460 var3801)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var460!1 String)
(assert (str.prefixof var460 var460!1))
(assert true)
(define-const var2962 String (append/672562846 var1049 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1049!1 String)
(assert (= var1049!1 (str.++ var1049 "_")))
(define-const var994 Int (var2842_size/-959786421 var2084)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2978 String (append/-1001720160 var2962 var994)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2962!1 String)
(assert (str.prefixof var2962 var2962!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3265 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2605 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var51 String (append/672562846 var2978 var2605)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2978!1 String)
(assert (= var2978!1 (str.++ var2978 var2605)))
(assert true)
(define-const var3877 String (toString/-2075883882 var51)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var687 ClassObject var3836!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2207 var2480 (getPackage/-1841711535 var687)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2207 null-var2480)) ; Cond: $r34 == null 
(define-const var3701 String var3877) ; Statement: r45 = $r33 
(define-const var2038 String var3877) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1768 Int (var2842_size/-959786421 var2084)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1768 9) (and (not (= var1768 8)) (and (not (= var1768 7)) (and (not (= var1768 6)) (and (not (= var1768 5)) (and (not (= var1768 4)) (and (not (= var1768 3)) (and (not (= var1768 2)) (and (not (= var1768 1)) true)))))))))) ; Intersect: Cond: $i2 == 9  and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional         
(define-const var3517 String var2103-TYPE_OBJECT_WRITER_9) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3599 (Array Int String) var3836-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1453!1 52 49 var3701 var3517 var3599)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1453!2 var3304)
(declare-const var2576 Int)
(declare-const var3172 Int)
(declare-const var3701!1 String)
(declare-const var3517!1 String)
(declare-const var3599!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1469 var2084 var1453!2 var3517!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1469!1 var3836)
(declare-const var2084!1 var2842)
(declare-const var1453!3 var3304)
(declare-const var3517!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1469!1 var2084!1 var1453!3 var3701!1 var3517!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1469!2 var3836)
(declare-const var2084!2 var2842)
(declare-const var1453!4 var3304)
(declare-const var3701!2 String)
(declare-const var3517!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1469!2 var2623 var3265 var2084!2 var1453!4 var3701!2 var3872)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1469!3 var3836)
(declare-const var2623!1 var3629)
(declare-const var3265!1 ClassObject)
(declare-const var2084!3 var2842)
(declare-const var1453!5 var3304)
(declare-const var3701!3 String)
(declare-const var3872!1 Int)
(define-const var183 var3563 var3563-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1341 Int (mask/-2077367092 var183)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2833 Int (bv2nat (bvand ((_ int2bv 64) var3872!1) ((_ int2bv 64) var1341)))) ; Statement: $l15 = l3 & $l14 
(define-const var352 Int (ite (> var2833 0) 1 (ite (< var2833 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var352 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var1469!3 var2623!1 var3265!1 var2084!3 var1453!5 var3701!3 var3872!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1469!4 var3836)
(declare-const var2623!2 var3629)
(declare-const var3265!2 ClassObject)
(declare-const var2084!4 var2842)
(declare-const var1453!6 var3304)
(declare-const var3701!4 String)
(declare-const var3872!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1469!4 var2623!2 var3265!2 var3872!2 var2084!4 var1453!6 var3701!4 var3872!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1469!5 var3836)
(declare-const var2623!3 var3629)
(declare-const var3265!3 ClassObject)
(declare-const var3872!3 Int)
(declare-const var2084!5 var2842)
(declare-const var1453!7 var3304)
(declare-const var3701!5 String)
(declare-const var3872!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1469!5 var2623!3 "writeArrayMapping" var3265!3 var3872!4 var2084!5 var1453!7 var3701!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1469!6 var3836)
(declare-const var2623!4 var3629)
(declare-const var1245 String)
(declare-const var3265!4 ClassObject)
(declare-const var3872!5 Int)
(declare-const var2084!6 var2842)
(declare-const var1453!8 var3304)
(declare-const var3701!6 String)
(assert true)
(define-const var3038 (Array Int Int) (toByteArray/1561254549 var1453!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3346 var2646 (classLoader/1229018461 var1469!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1107 Int (getLength-Arr-Int-1 var3038)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1582 ClassObject (defineClassPublic/-885393557 var3346 var2038 var3038 0 var1107)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3839 var2124) ; Statement: $r35 := @caughtexception 
(assert (not (= var3839 null-var2124)))
(define-const var3126 var3970 var3970-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2865 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2865)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2865!1 String)
(assert (= var2865!1 ""))
(assert true)
(define-const var2823 String (append/672562846 var2865!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2865!2 String)
(assert (= var2865!2 (str.++ var2865!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1836 String (append/-1031950772 var2823 (cast-from-ClassObject-to-var3382 var3265!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2823!1 String)
(assert (str.prefixof var2823 var2823!1))
(assert true)
(define-const var1223 String (toString/-2075883882 var1836)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3126 var1223 var3839)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3126!1 var3970)
(declare-const var1223!1 String)
(declare-const var3839!1 var2124)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3304-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2842_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3970-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3382=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3836=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1469=r15, var3265=r7, var3629=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2623=r16, var2395=com.alibaba.fastjson2.codec.BeanInfo, var2119=r21, var2842=java.util.List, var2084=r5, var3872=l3, var3304=com.alibaba.fastjson2.internal.asm.ClassWriter, var1453=$r49, var3039=java.util.function.Function, var2729=null, var1802=null_type, var710=$r50, var460=$r3, var2858=java.util.concurrent.atomic.AtomicLong, var3025=$r2, var3801=$l0, var1049=$r4, var2962=$r6, var994=$i1, var2978=$r12, var2605=$r41, var51=$r13, var3877=$r33, var687=$r14, var2480=java.lang.Package, var2207=$r34, var3701=r45, var2038=r44, var1768=$i2, var2103=com.alibaba.fastjson2.internal.asm.ASMUtils, var3517=r46, var3599=$r47, var2576=52, var3172=49, var3563=com.alibaba.fastjson2.JSONWriter$Feature, var183=$r48, var1341=$l14, var2833=$l15, var352=$b16, var1245="writeArrayMapping", var3038=$r27, var2646=com.alibaba.fastjson2.util.DynamicClassLoader, var3346=$r17, var1107=$i4, var1582=$r28, var2124=java.lang.Throwable, var3839=$r35, var3970=com.alibaba.fastjson2.JSONException, var3126=$r55, var2865=$r54, var2823=$r38, var3382=java.lang.Object, var1836=$r39, var1223=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3836, r15=var1469, r7=var3265, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3629, r16=var2623, com.alibaba.fastjson2.codec.BeanInfo=var2395, r21=var2119, java.util.List=var2842, r5=var2084, l3=var3872, com.alibaba.fastjson2.internal.asm.ClassWriter=var3304, $r49=var1453, java.util.function.Function=var3039, null=var2729, null_type=var1802, $r50=var710, $r3=var460, java.util.concurrent.atomic.AtomicLong=var2858, $r2=var3025, $l0=var3801, $r4=var1049, $r6=var2962, $i1=var994, $r12=var2978, $r41=var2605, $r13=var51, $r33=var3877, $r14=var687, java.lang.Package=var2480, $r34=var2207, r45=var3701, r44=var2038, $i2=var1768, com.alibaba.fastjson2.internal.asm.ASMUtils=var2103, r46=var3517, $r47=var3599, 52=var2576, 49=var3172, com.alibaba.fastjson2.JSONWriter$Feature=var3563, $r48=var183, $l14=var1341, $l15=var2833, $b16=var352, "writeArrayMapping"=var1245, $r27=var3038, com.alibaba.fastjson2.util.DynamicClassLoader=var2646, $r17=var3346, $i4=var1107, $r28=var1582, java.lang.Throwable=var2124, $r35=var3839, com.alibaba.fastjson2.JSONException=var3970, $r55=var3126, $r54=var2865, $r38=var2823, java.lang.Object=var3382, $r39=var1836, $r40=var1223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10