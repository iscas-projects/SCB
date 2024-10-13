(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2247 0)
(declare-sort var2793 0)
(declare-sort var2534 0)
(declare-sort var256 0)
(declare-sort var1141 0)
(declare-sort var2797 0)
(declare-sort var2211 0)
(declare-sort var2592 0)
(declare-sort var465 0)
(declare-sort var3842 0)
(declare-sort var3007 0)
(declare-sort var12 0)
(declare-sort var3324 0)
(declare-sort var1893 0)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2247!class ClassObject)
(declare-fun var1141-init () var1141)
(declare-fun <init>/1561585841 (var1141 var2797) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2592) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var256_size/-959786421 (var256) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var465)
(declare-fun visit/1245821975 (var1141 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2247 var256 var1141 String) void)
(declare-fun genMethodInit/736566045 (var2247 var256 var1141 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2247 var2793 ClassObject var256 var1141 String Int) void)
(declare-fun mask/-2077367092 (var3007) Int)
(declare-fun genMethodWrite/551741206 (var2247 var2793 ClassObject var256 var1141 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2247 var2793 ClassObject Int var256 var1141 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2247 var2793 String ClassObject Int var256 var1141 String) void)
(declare-fun toByteArray/1561254549 (var1141) (Array Int Int))
(declare-fun classLoader/1229018461 (var2247) var12)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var12 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1893-init () var1893)
(declare-fun append/-1031950772 (String var1841) String)
(declare-fun cast-from-ClassObject-to-var1841 (ClassObject) var1841)
(declare-fun <init>/-743866570 (var1893 String var3324) void)
(declare-const null-var2247 var2247)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2793 var2793)
(declare-const null-var2534 var2534)
(declare-const null-var256 var256)
(declare-const null-Int Int)
(declare-const null-NullType var2211)
(declare-const null-var2797 var2797)
(declare-const var2247-seed var2592)
(declare-const null-var465 var465)
(declare-const var3842-TYPE_OBJECT_WRITER_11 String)
(declare-const var2247-INTERFACES (Array Int String))
(declare-const var3007-BeanToArray var3007)
(declare-const null-var3324 var3324)
(declare-const var463 var2247) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var463 null-var2247)))
(declare-const var604 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var604 null-ClassObject)))
(declare-const var3366 var2793) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3366 null-var2793)))
(declare-const var3352 var2534) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3352 null-var2534)))
(declare-const var1302 var256) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1302 null-var256)))
(declare-const var1650 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1650 null-Int)))
(define-const var3688 var1141 var1141-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3688 null-var2797)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3688!1 var1141)
(declare-const var362 var2211)
(define-const var67 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var67)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var67!1 String)
(assert (= var67!1 ""))
(assert true)
(define-const var2066 String (append/672562846 var67!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var67!2 String)
(assert (= var67!2 (str.++ var67!1 "OWG_")))
(define-const var101 var2592 var2247-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var495 Int (incrementAndGet/636047358 var101)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2423 String (append/-901862667 var2066 var495)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2066!1 String)
(assert (str.prefixof var2066 var2066!1))
(assert true)
(define-const var2699 String (append/672562846 var2423 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2423!1 String)
(assert (= var2423!1 (str.++ var2423 "_")))
(define-const var2453 Int (var256_size/-959786421 var1302)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var999 String (append/-1001720160 var2699 var2453)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2699!1 String)
(assert (str.prefixof var2699 var2699!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var604 null-ClassObject))) ; Cond: r7 != null 
(define-const var3763 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3763)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3763!1 String)
(assert (= var3763!1 ""))
(assert true)
(define-const var1402 String (append/672562846 var3763!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3763!2 String)
(assert (= var3763!2 (str.++ var3763!1 "_")))
(assert true)
(define-const var728 String (getSimpleName/-390194377 var604)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2385 String (append/672562846 var1402 var728)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1402!1 String)
(assert (= var1402!1 (str.++ var1402 var728)))
(assert true)
(define-const var598 String (toString/-2075883882 var2385)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3081 String (append/672562846 var999 var598)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var999!1 String)
(assert (= var999!1 (str.++ var999 var598)))
(assert true)
(define-const var1815 String (toString/-2075883882 var3081)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1655 ClassObject var2247!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var732 var465 (getPackage/-1841711535 var1655)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var732 null-var465)) ; Cond: $r34 == null 
(define-const var1271 String var1815) ; Statement: r45 = $r33 
(define-const var3368 String var1815) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1832 Int (var256_size/-959786421 var1302)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1832 11) (and (not (= var1832 10)) (and (not (= var1832 9)) (and (not (= var1832 8)) (and (not (= var1832 7)) (and (not (= var1832 6)) (and (not (= var1832 5)) (and (not (= var1832 4)) (and (not (= var1832 3)) (and (not (= var1832 2)) (and (not (= var1832 1)) true)))))))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional           
(define-const var2725 String var3842-TYPE_OBJECT_WRITER_11) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2331 (Array Int String) var2247-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3688!1 52 49 var1271 var2725 var2331)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3688!2 var1141)
(declare-const var56 Int)
(declare-const var2482 Int)
(declare-const var1271!1 String)
(declare-const var2725!1 String)
(declare-const var2331!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var463 var1302 var3688!2 var2725!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var463!1 var2247)
(declare-const var1302!1 var256)
(declare-const var3688!3 var1141)
(declare-const var2725!2 String)
(assert true)
;(assert (genMethodInit/736566045 var463!1 var1302!1 var3688!3 var1271!1 var2725!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var463!2 var2247)
(declare-const var1302!2 var256)
(declare-const var3688!4 var1141)
(declare-const var1271!2 String)
(declare-const var2725!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var463!2 var3366 var604 var1302!2 var3688!4 var1271!2 var1650)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var463!3 var2247)
(declare-const var3366!1 var2793)
(declare-const var604!1 ClassObject)
(declare-const var1302!3 var256)
(declare-const var3688!5 var1141)
(declare-const var1271!3 String)
(declare-const var1650!1 Int)
(define-const var3142 var3007 var3007-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3424 Int (mask/-2077367092 var3142)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var125 Int (bv2nat (bvand ((_ int2bv 64) var1650!1) ((_ int2bv 64) var3424)))) ; Statement: $l15 = l3 & $l14 
(define-const var3620 Int (ite (> var125 0) 1 (ite (< var125 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3620 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var463!3 var3366!1 var604!1 var1302!3 var3688!5 var1271!3 var1650!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var463!4 var2247)
(declare-const var3366!2 var2793)
(declare-const var604!2 ClassObject)
(declare-const var1302!4 var256)
(declare-const var3688!6 var1141)
(declare-const var1271!4 String)
(declare-const var1650!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var463!4 var3366!2 var604!2 var1650!2 var1302!4 var3688!6 var1271!4 var1650!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var463!5 var2247)
(declare-const var3366!3 var2793)
(declare-const var604!3 ClassObject)
(declare-const var1650!3 Int)
(declare-const var1302!5 var256)
(declare-const var3688!7 var1141)
(declare-const var1271!5 String)
(declare-const var1650!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var463!5 var3366!3 "writeArrayMapping" var604!3 var1650!4 var1302!5 var3688!7 var1271!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var463!6 var2247)
(declare-const var3366!4 var2793)
(declare-const var3348 String)
(declare-const var604!4 ClassObject)
(declare-const var1650!5 Int)
(declare-const var1302!6 var256)
(declare-const var3688!8 var1141)
(declare-const var1271!6 String)
(assert true)
(define-const var3048 (Array Int Int) (toByteArray/1561254549 var3688!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var414 var12 (classLoader/1229018461 var463!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3378 Int (getLength-Arr-Int-1 var3048)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2096 ClassObject (defineClassPublic/-885393557 var414 var3368 var3048 0 var3378)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var669 var3324) ; Statement: $r35 := @caughtexception 
(assert (not (= var669 null-var3324)))
(define-const var3790 var1893 var1893-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3987 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3987)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3987!1 String)
(assert (= var3987!1 ""))
(assert true)
(define-const var259 String (append/672562846 var3987!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3987!2 String)
(assert (= var3987!2 (str.++ var3987!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3648 String (append/-1031950772 var259 (cast-from-ClassObject-to-var1841 var604!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var259!1 String)
(assert (str.prefixof var259 var259!1))
(assert true)
(define-const var627 String (toString/-2075883882 var3648)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3790 var627 var669)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3790!1 var1893)
(declare-const var627!1 String)
(declare-const var669!1 var3324)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1141-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var256_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1893-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1841=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2247=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var463=r15, var604=r7, var2793=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3366=r16, var2534=com.alibaba.fastjson2.codec.BeanInfo, var3352=r21, var256=java.util.List, var1302=r5, var1650=l3, var1141=com.alibaba.fastjson2.internal.asm.ClassWriter, var3688=$r49, var2797=java.util.function.Function, var362=null, var2211=null_type, var67=$r50, var2066=$r3, var2592=java.util.concurrent.atomic.AtomicLong, var101=$r2, var495=$l0, var2423=$r4, var2699=$r6, var2453=$i1, var999=$r12, var3763=$r51, var1402=$r10, var728=$r9, var2385=$r11, var598=$r41, var3081=$r13, var1815=$r33, var1655=$r14, var465=java.lang.Package, var732=$r34, var1271=r45, var3368=r44, var1832=$i2, var3842=com.alibaba.fastjson2.internal.asm.ASMUtils, var2725=r46, var2331=$r47, var56=52, var2482=49, var3007=com.alibaba.fastjson2.JSONWriter$Feature, var3142=$r48, var3424=$l14, var125=$l15, var3620=$b16, var3348="writeArrayMapping", var3048=$r27, var12=com.alibaba.fastjson2.util.DynamicClassLoader, var414=$r17, var3378=$i4, var2096=$r28, var3324=java.lang.Throwable, var669=$r35, var1893=com.alibaba.fastjson2.JSONException, var3790=$r55, var3987=$r54, var259=$r38, var1841=java.lang.Object, var3648=$r39, var627=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2247, r15=var463, r7=var604, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2793, r16=var3366, com.alibaba.fastjson2.codec.BeanInfo=var2534, r21=var3352, java.util.List=var256, r5=var1302, l3=var1650, com.alibaba.fastjson2.internal.asm.ClassWriter=var1141, $r49=var3688, java.util.function.Function=var2797, null=var362, null_type=var2211, $r50=var67, $r3=var2066, java.util.concurrent.atomic.AtomicLong=var2592, $r2=var101, $l0=var495, $r4=var2423, $r6=var2699, $i1=var2453, $r12=var999, $r51=var3763, $r10=var1402, $r9=var728, $r11=var2385, $r41=var598, $r13=var3081, $r33=var1815, $r14=var1655, java.lang.Package=var465, $r34=var732, r45=var1271, r44=var3368, $i2=var1832, com.alibaba.fastjson2.internal.asm.ASMUtils=var3842, r46=var2725, $r47=var2331, 52=var56, 49=var2482, com.alibaba.fastjson2.JSONWriter$Feature=var3007, $r48=var3142, $l14=var3424, $l15=var125, $b16=var3620, "writeArrayMapping"=var3348, $r27=var3048, com.alibaba.fastjson2.util.DynamicClassLoader=var12, $r17=var414, $i4=var3378, $r28=var2096, java.lang.Throwable=var3324, $r35=var669, com.alibaba.fastjson2.JSONException=var1893, $r55=var3790, $r54=var3987, $r38=var259, java.lang.Object=var1841, $r39=var3648, $r40=var627}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10