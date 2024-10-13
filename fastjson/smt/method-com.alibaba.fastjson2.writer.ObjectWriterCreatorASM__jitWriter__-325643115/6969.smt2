(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var3082 0)
(declare-sort var378 0)
(declare-sort var194 0)
(declare-sort var3299 0)
(declare-sort var2796 0)
(declare-sort var569 0)
(declare-sort var113 0)
(declare-sort var1710 0)
(declare-sort var3515 0)
(declare-sort var1944 0)
(declare-sort var3258 0)
(declare-sort var1792 0)
(declare-sort var1328 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2930!class ClassObject)
(declare-fun var3299-init () var3299)
(declare-fun <init>/1561585841 (var3299 var2796) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var113) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var194_size/-959786421 (var194) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1710)
(declare-fun visit/1245821975 (var3299 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2930 var194 var3299 String) void)
(declare-fun genMethodInit/736566045 (var2930 var194 var3299 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2930 var3082 ClassObject var194 var3299 String Int) void)
(declare-fun mask/-2077367092 (var1944) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var2930 var3082 String ClassObject Int var194 var3299 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2930 var3082 ClassObject Int var194 var3299 String Int) void)
(declare-fun toByteArray/1561254549 (var3299) (Array Int Int))
(declare-fun classLoader/1229018461 (var2930) var3258)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3258 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1328-init () var1328)
(declare-fun append/-1031950772 (String var134) String)
(declare-fun cast-from-ClassObject-to-var134 (ClassObject) var134)
(declare-fun <init>/-743866570 (var1328 String var1792) void)
(declare-const null-var2930 var2930)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3082 var3082)
(declare-const null-var378 var378)
(declare-const null-var194 var194)
(declare-const null-Int Int)
(declare-const null-NullType var569)
(declare-const null-var2796 var2796)
(declare-const var2930-seed var113)
(declare-const null-var1710 var1710)
(declare-const var3515-TYPE_OBJECT_WRITER_7 String)
(declare-const var2930-INTERFACES (Array Int String))
(declare-const var1944-BeanToArray var1944)
(declare-const null-var1792 var1792)
(declare-const var811 var2930) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var811 null-var2930)))
(declare-const var2214 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2214 null-ClassObject)))
(declare-const var2536 var3082) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2536 null-var3082)))
(declare-const var1557 var378) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1557 null-var378)))
(declare-const var3295 var194) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3295 null-var194)))
(declare-const var1486 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1486 null-Int)))
(define-const var2614 var3299 var3299-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2614 null-var2796)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2614!1 var3299)
(declare-const var466 var569)
(define-const var2330 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2330)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2330!1 String)
(assert (= var2330!1 ""))
(assert true)
(define-const var622 String (append/672562846 var2330!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2330!2 String)
(assert (= var2330!2 (str.++ var2330!1 "OWG_")))
(define-const var3904 var113 var2930-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3641 Int (incrementAndGet/636047358 var3904)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var464 String (append/-901862667 var622 var3641)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var622!1 String)
(assert (str.prefixof var622 var622!1))
(assert true)
(define-const var833 String (append/672562846 var464 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var464!1 String)
(assert (= var464!1 (str.++ var464 "_")))
(define-const var3429 Int (var194_size/-959786421 var3295)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var965 String (append/-1001720160 var833 var3429)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var833!1 String)
(assert (str.prefixof var833 var833!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var2214 null-ClassObject))) ; Cond: r7 != null 
(define-const var2095 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2095)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2095!1 String)
(assert (= var2095!1 ""))
(assert true)
(define-const var1969 String (append/672562846 var2095!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2095!2 String)
(assert (= var2095!2 (str.++ var2095!1 "_")))
(assert true)
(define-const var469 String (getSimpleName/-390194377 var2214)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1284 String (append/672562846 var1969 var469)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1969!1 String)
(assert (= var1969!1 (str.++ var1969 var469)))
(assert true)
(define-const var870 String (toString/-2075883882 var1284)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3337 String (append/672562846 var965 var870)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var965!1 String)
(assert (= var965!1 (str.++ var965 var870)))
(assert true)
(define-const var3024 String (toString/-2075883882 var3337)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2859 ClassObject var2930!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1230 var1710 (getPackage/-1841711535 var2859)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1230 null-var1710)) ; Cond: $r34 == null 
(define-const var923 String var3024) ; Statement: r45 = $r33 
(define-const var653 String var3024) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1010 Int (var194_size/-959786421 var3295)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1010 7) (and (not (= var1010 6)) (and (not (= var1010 5)) (and (not (= var1010 4)) (and (not (= var1010 3)) (and (not (= var1010 2)) (and (not (= var1010 1)) true)))))))) ; Intersect: Cond: $i2 == 7  and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional       
(define-const var960 String var3515-TYPE_OBJECT_WRITER_7) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3765 (Array Int String) var2930-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2614!1 52 49 var923 var960 var3765)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2614!2 var3299)
(declare-const var1438 Int)
(declare-const var884 Int)
(declare-const var923!1 String)
(declare-const var960!1 String)
(declare-const var3765!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var811 var3295 var2614!2 var960!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var811!1 var2930)
(declare-const var3295!1 var194)
(declare-const var2614!3 var3299)
(declare-const var960!2 String)
(assert true)
;(assert (genMethodInit/736566045 var811!1 var3295!1 var2614!3 var923!1 var960!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var811!2 var2930)
(declare-const var3295!2 var194)
(declare-const var2614!4 var3299)
(declare-const var923!2 String)
(declare-const var960!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var811!2 var2536 var2214 var3295!2 var2614!4 var923!2 var1486)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var811!3 var2930)
(declare-const var2536!1 var3082)
(declare-const var2214!1 ClassObject)
(declare-const var3295!3 var194)
(declare-const var2614!5 var3299)
(declare-const var923!3 String)
(declare-const var1486!1 Int)
(define-const var1269 var1944 var1944-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1305 Int (mask/-2077367092 var1269)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1958 Int (bv2nat (bvand ((_ int2bv 64) var1486!1) ((_ int2bv 64) var1305)))) ; Statement: $l15 = l3 & $l14 
(define-const var367 Int (ite (> var1958 0) 1 (ite (< var1958 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var367 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var811!3 var2536!1 "write" var2214!1 var1486!1 var3295!3 var2614!5 var923!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var811!4 var2930)
(declare-const var2536!2 var3082)
(declare-const var3963 String)
(declare-const var2214!2 ClassObject)
(declare-const var1486!2 Int)
(declare-const var3295!4 var194)
(declare-const var2614!6 var3299)
(declare-const var923!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var811!4 var2536!2 var2214!2 var1486!2 var3295!4 var2614!6 var923!4 var1486!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var811!5 var2930)
(declare-const var2536!3 var3082)
(declare-const var2214!3 ClassObject)
(declare-const var1486!3 Int)
(declare-const var3295!5 var194)
(declare-const var2614!7 var3299)
(declare-const var923!5 String)
(declare-const var1486!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var811!5 var2536!3 "writeArrayMapping" var2214!3 var1486!4 var3295!5 var2614!7 var923!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var811!6 var2930)
(declare-const var2536!4 var3082)
(declare-const var1995 String)
(declare-const var2214!4 ClassObject)
(declare-const var1486!5 Int)
(declare-const var3295!6 var194)
(declare-const var2614!8 var3299)
(declare-const var923!6 String)
(assert true)
(define-const var638 (Array Int Int) (toByteArray/1561254549 var2614!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var840 var3258 (classLoader/1229018461 var811!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3897 Int (getLength-Arr-Int-1 var638)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2944 ClassObject (defineClassPublic/-885393557 var840 var653 var638 0 var3897)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var522 var1792) ; Statement: $r35 := @caughtexception 
(assert (not (= var522 null-var1792)))
(define-const var1591 var1328 var1328-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3366 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3366)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3366!1 String)
(assert (= var3366!1 ""))
(assert true)
(define-const var3381 String (append/672562846 var3366!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3366!2 String)
(assert (= var3366!2 (str.++ var3366!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1586 String (append/-1031950772 var3381 (cast-from-ClassObject-to-var134 var2214!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3381!1 String)
(assert (str.prefixof var3381 var3381!1))
(assert true)
(define-const var3099 String (toString/-2075883882 var1586)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1591 var3099 var522)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1591!1 var1328)
(declare-const var3099!1 String)
(declare-const var522!1 var1792)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3299-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var194_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1328-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var134=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2930=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var811=r15, var2214=r7, var3082=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2536=r16, var378=com.alibaba.fastjson2.codec.BeanInfo, var1557=r21, var194=java.util.List, var3295=r5, var1486=l3, var3299=com.alibaba.fastjson2.internal.asm.ClassWriter, var2614=$r49, var2796=java.util.function.Function, var466=null, var569=null_type, var2330=$r50, var622=$r3, var113=java.util.concurrent.atomic.AtomicLong, var3904=$r2, var3641=$l0, var464=$r4, var833=$r6, var3429=$i1, var965=$r12, var2095=$r51, var1969=$r10, var469=$r9, var1284=$r11, var870=$r41, var3337=$r13, var3024=$r33, var2859=$r14, var1710=java.lang.Package, var1230=$r34, var923=r45, var653=r44, var1010=$i2, var3515=com.alibaba.fastjson2.internal.asm.ASMUtils, var960=r46, var3765=$r47, var1438=52, var884=49, var1944=com.alibaba.fastjson2.JSONWriter$Feature, var1269=$r48, var1305=$l14, var1958=$l15, var367=$b16, var3963="write", var1995="writeArrayMapping", var638=$r27, var3258=com.alibaba.fastjson2.util.DynamicClassLoader, var840=$r17, var3897=$i4, var2944=$r28, var1792=java.lang.Throwable, var522=$r35, var1328=com.alibaba.fastjson2.JSONException, var1591=$r55, var3366=$r54, var3381=$r38, var134=java.lang.Object, var1586=$r39, var3099=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2930, r15=var811, r7=var2214, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3082, r16=var2536, com.alibaba.fastjson2.codec.BeanInfo=var378, r21=var1557, java.util.List=var194, r5=var3295, l3=var1486, com.alibaba.fastjson2.internal.asm.ClassWriter=var3299, $r49=var2614, java.util.function.Function=var2796, null=var466, null_type=var569, $r50=var2330, $r3=var622, java.util.concurrent.atomic.AtomicLong=var113, $r2=var3904, $l0=var3641, $r4=var464, $r6=var833, $i1=var3429, $r12=var965, $r51=var2095, $r10=var1969, $r9=var469, $r11=var1284, $r41=var870, $r13=var3337, $r33=var3024, $r14=var2859, java.lang.Package=var1710, $r34=var1230, r45=var923, r44=var653, $i2=var1010, com.alibaba.fastjson2.internal.asm.ASMUtils=var3515, r46=var960, $r47=var3765, 52=var1438, 49=var884, com.alibaba.fastjson2.JSONWriter$Feature=var1944, $r48=var1269, $l14=var1305, $l15=var1958, $b16=var367, "write"=var3963, "writeArrayMapping"=var1995, $r27=var638, com.alibaba.fastjson2.util.DynamicClassLoader=var3258, $r17=var840, $i4=var3897, $r28=var2944, java.lang.Throwable=var1792, $r35=var522, com.alibaba.fastjson2.JSONException=var1328, $r55=var1591, $r54=var3366, $r38=var3381, java.lang.Object=var134, $r39=var1586, $r40=var3099}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10