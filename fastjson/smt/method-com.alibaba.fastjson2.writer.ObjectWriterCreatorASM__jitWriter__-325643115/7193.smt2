(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var567 0)
(declare-sort var63 0)
(declare-sort var1093 0)
(declare-sort var1621 0)
(declare-sort var3709 0)
(declare-sort var928 0)
(declare-sort var2412 0)
(declare-sort var3794 0)
(declare-sort var1767 0)
(declare-sort var418 0)
(declare-sort var1321 0)
(declare-sort var951 0)
(declare-sort var1595 0)
(declare-sort var3925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2152!class ClassObject)
(declare-fun var1621-init () var1621)
(declare-fun <init>/1561585841 (var1621 var3709) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2412) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1093_size/-959786421 (var1093) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3794)
(declare-fun visit/1245821975 (var1621 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2152 var1093 var1621 String) void)
(declare-fun genMethodInit/736566045 (var2152 var1093 var1621 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2152 var567 ClassObject var1093 var1621 String Int) void)
(declare-fun mask/-2077367092 (var418) Int)
(declare-fun genMethodWrite/551741206 (var2152 var567 ClassObject var1093 var1621 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2152 var567 ClassObject Int var1093 var1621 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2152 var567 String ClassObject Int var1093 var1621 String) void)
(declare-fun toByteArray/1561254549 (var1621) (Array Int Int))
(declare-fun classLoader/1229018461 (var2152) var1321)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1321 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1595-init () var1595)
(declare-fun append/-1031950772 (String var3925) String)
(declare-fun cast-from-ClassObject-to-var3925 (ClassObject) var3925)
(declare-fun <init>/-743866570 (var1595 String var951) void)
(declare-const null-var2152 var2152)
(declare-const null-ClassObject ClassObject)
(declare-const null-var567 var567)
(declare-const null-var63 var63)
(declare-const null-var1093 var1093)
(declare-const null-Int Int)
(declare-const null-NullType var928)
(declare-const null-var3709 var3709)
(declare-const var2152-seed var2412)
(declare-const null-var3794 var3794)
(declare-const var1767-TYPE_OBJECT_WRITER_12 String)
(declare-const var2152-INTERFACES (Array Int String))
(declare-const var418-BeanToArray var418)
(declare-const null-var951 var951)
(declare-const var2090 var2152) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2090 null-var2152)))
(declare-const var3413 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3413 null-ClassObject)))
(declare-const var1039 var567) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1039 null-var567)))
(declare-const var3034 var63) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3034 null-var63)))
(declare-const var3300 var1093) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3300 null-var1093)))
(declare-const var383 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var383 null-Int)))
(define-const var983 var1621 var1621-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var983 null-var3709)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var983!1 var1621)
(declare-const var1960 var928)
(define-const var1189 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1189)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1189!1 String)
(assert (= var1189!1 ""))
(assert true)
(define-const var1985 String (append/672562846 var1189!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1189!2 String)
(assert (= var1189!2 (str.++ var1189!1 "OWG_")))
(define-const var41 var2412 var2152-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3912 Int (incrementAndGet/636047358 var41)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2482 String (append/-901862667 var1985 var3912)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1985!1 String)
(assert (str.prefixof var1985 var1985!1))
(assert true)
(define-const var1943 String (append/672562846 var2482 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2482!1 String)
(assert (= var2482!1 (str.++ var2482 "_")))
(define-const var1535 Int (var1093_size/-959786421 var3300)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3457 String (append/-1001720160 var1943 var1535)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1943!1 String)
(assert (str.prefixof var1943 var1943!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3413 null-ClassObject))) ; Cond: r7 != null 
(define-const var1380 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1380)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1380!1 String)
(assert (= var1380!1 ""))
(assert true)
(define-const var806 String (append/672562846 var1380!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1380!2 String)
(assert (= var1380!2 (str.++ var1380!1 "_")))
(assert true)
(define-const var2896 String (getSimpleName/-390194377 var3413)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var81 String (append/672562846 var806 var2896)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 var2896)))
(assert true)
(define-const var1274 String (toString/-2075883882 var81)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3862 String (append/672562846 var3457 var1274)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3457!1 String)
(assert (= var3457!1 (str.++ var3457 var1274)))
(assert true)
(define-const var3110 String (toString/-2075883882 var3862)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var637 ClassObject var2152!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2359 var3794 (getPackage/-1841711535 var637)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2359 null-var3794)) ; Cond: $r34 == null 
(define-const var3025 String var3110) ; Statement: r45 = $r33 
(define-const var2978 String var3110) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2668 Int (var1093_size/-959786421 var3300)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2668 12) (and (not (= var2668 11)) (and (not (= var2668 10)) (and (not (= var2668 9)) (and (not (= var2668 8)) (and (not (= var2668 7)) (and (not (= var2668 6)) (and (not (= var2668 5)) (and (not (= var2668 4)) (and (not (= var2668 3)) (and (not (= var2668 2)) (and (not (= var2668 1)) true))))))))))))) ; Intersect: Cond: $i2 == 12  and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var2011 String var1767-TYPE_OBJECT_WRITER_12) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2362 (Array Int String) var2152-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var983!1 52 49 var3025 var2011 var2362)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var983!2 var1621)
(declare-const var619 Int)
(declare-const var1360 Int)
(declare-const var3025!1 String)
(declare-const var2011!1 String)
(declare-const var2362!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2090 var3300 var983!2 var2011!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2090!1 var2152)
(declare-const var3300!1 var1093)
(declare-const var983!3 var1621)
(declare-const var2011!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2090!1 var3300!1 var983!3 var3025!1 var2011!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2090!2 var2152)
(declare-const var3300!2 var1093)
(declare-const var983!4 var1621)
(declare-const var3025!2 String)
(declare-const var2011!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2090!2 var1039 var3413 var3300!2 var983!4 var3025!2 var383)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2090!3 var2152)
(declare-const var1039!1 var567)
(declare-const var3413!1 ClassObject)
(declare-const var3300!3 var1093)
(declare-const var983!5 var1621)
(declare-const var3025!3 String)
(declare-const var383!1 Int)
(define-const var3532 var418 var418-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3501 Int (mask/-2077367092 var3532)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2208 Int (bv2nat (bvand ((_ int2bv 64) var383!1) ((_ int2bv 64) var3501)))) ; Statement: $l15 = l3 & $l14 
(define-const var3486 Int (ite (> var2208 0) 1 (ite (< var2208 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3486 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2090!3 var1039!1 var3413!1 var3300!3 var983!5 var3025!3 var383!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2090!4 var2152)
(declare-const var1039!2 var567)
(declare-const var3413!2 ClassObject)
(declare-const var3300!4 var1093)
(declare-const var983!6 var1621)
(declare-const var3025!4 String)
(declare-const var383!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2090!4 var1039!2 var3413!2 var383!2 var3300!4 var983!6 var3025!4 var383!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2090!5 var2152)
(declare-const var1039!3 var567)
(declare-const var3413!3 ClassObject)
(declare-const var383!3 Int)
(declare-const var3300!5 var1093)
(declare-const var983!7 var1621)
(declare-const var3025!5 String)
(declare-const var383!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2090!5 var1039!3 "writeArrayMapping" var3413!3 var383!4 var3300!5 var983!7 var3025!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2090!6 var2152)
(declare-const var1039!4 var567)
(declare-const var3642 String)
(declare-const var3413!4 ClassObject)
(declare-const var383!5 Int)
(declare-const var3300!6 var1093)
(declare-const var983!8 var1621)
(declare-const var3025!6 String)
(assert true)
(define-const var341 (Array Int Int) (toByteArray/1561254549 var983!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3599 var1321 (classLoader/1229018461 var2090!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var906 Int (getLength-Arr-Int-1 var341)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2200 ClassObject (defineClassPublic/-885393557 var3599 var2978 var341 0 var906)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2148 var951) ; Statement: $r35 := @caughtexception 
(assert (not (= var2148 null-var951)))
(define-const var2247 var1595 var1595-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3357 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3357)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3357!1 String)
(assert (= var3357!1 ""))
(assert true)
(define-const var3795 String (append/672562846 var3357!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3357!2 String)
(assert (= var3357!2 (str.++ var3357!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2014 String (append/-1031950772 var3795 (cast-from-ClassObject-to-var3925 var3413!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3795!1 String)
(assert (str.prefixof var3795 var3795!1))
(assert true)
(define-const var849 String (toString/-2075883882 var2014)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2247 var849 var2148)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2247!1 var1595)
(declare-const var849!1 String)
(declare-const var2148!1 var951)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1621-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1093_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1595-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3925=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2152=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2090=r15, var3413=r7, var567=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1039=r16, var63=com.alibaba.fastjson2.codec.BeanInfo, var3034=r21, var1093=java.util.List, var3300=r5, var383=l3, var1621=com.alibaba.fastjson2.internal.asm.ClassWriter, var983=$r49, var3709=java.util.function.Function, var1960=null, var928=null_type, var1189=$r50, var1985=$r3, var2412=java.util.concurrent.atomic.AtomicLong, var41=$r2, var3912=$l0, var2482=$r4, var1943=$r6, var1535=$i1, var3457=$r12, var1380=$r51, var806=$r10, var2896=$r9, var81=$r11, var1274=$r41, var3862=$r13, var3110=$r33, var637=$r14, var3794=java.lang.Package, var2359=$r34, var3025=r45, var2978=r44, var2668=$i2, var1767=com.alibaba.fastjson2.internal.asm.ASMUtils, var2011=r46, var2362=$r47, var619=52, var1360=49, var418=com.alibaba.fastjson2.JSONWriter$Feature, var3532=$r48, var3501=$l14, var2208=$l15, var3486=$b16, var3642="writeArrayMapping", var341=$r27, var1321=com.alibaba.fastjson2.util.DynamicClassLoader, var3599=$r17, var906=$i4, var2200=$r28, var951=java.lang.Throwable, var2148=$r35, var1595=com.alibaba.fastjson2.JSONException, var2247=$r55, var3357=$r54, var3795=$r38, var3925=java.lang.Object, var2014=$r39, var849=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2152, r15=var2090, r7=var3413, com.alibaba.fastjson2.writer.ObjectWriterProvider=var567, r16=var1039, com.alibaba.fastjson2.codec.BeanInfo=var63, r21=var3034, java.util.List=var1093, r5=var3300, l3=var383, com.alibaba.fastjson2.internal.asm.ClassWriter=var1621, $r49=var983, java.util.function.Function=var3709, null=var1960, null_type=var928, $r50=var1189, $r3=var1985, java.util.concurrent.atomic.AtomicLong=var2412, $r2=var41, $l0=var3912, $r4=var2482, $r6=var1943, $i1=var1535, $r12=var3457, $r51=var1380, $r10=var806, $r9=var2896, $r11=var81, $r41=var1274, $r13=var3862, $r33=var3110, $r14=var637, java.lang.Package=var3794, $r34=var2359, r45=var3025, r44=var2978, $i2=var2668, com.alibaba.fastjson2.internal.asm.ASMUtils=var1767, r46=var2011, $r47=var2362, 52=var619, 49=var1360, com.alibaba.fastjson2.JSONWriter$Feature=var418, $r48=var3532, $l14=var3501, $l15=var2208, $b16=var3486, "writeArrayMapping"=var3642, $r27=var341, com.alibaba.fastjson2.util.DynamicClassLoader=var1321, $r17=var3599, $i4=var906, $r28=var2200, java.lang.Throwable=var951, $r35=var2148, com.alibaba.fastjson2.JSONException=var1595, $r55=var2247, $r54=var3357, $r38=var3795, java.lang.Object=var3925, $r39=var2014, $r40=var849}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10