(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort var1696 0)
(declare-sort var148 0)
(declare-sort var529 0)
(declare-sort var417 0)
(declare-sort var2550 0)
(declare-sort var2991 0)
(declare-sort var2910 0)
(declare-sort var3324 0)
(declare-sort var3934 0)
(declare-sort var1677 0)
(declare-sort var1051 0)
(declare-sort var1295 0)
(declare-sort var1509 0)
(declare-sort var2039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2947!class ClassObject)
(declare-fun var417-init () var417)
(declare-fun <init>/1561585841 (var417 var2550) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2910) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var529_size/-959786421 (var529) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3324)
(declare-fun visit/1245821975 (var417 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2947 var529 var417 String) void)
(declare-fun genMethodInit/736566045 (var2947 var529 var417 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2947 var1696 ClassObject var529 var417 String Int) void)
(declare-fun mask/-2077367092 (var1677) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var2947 var1696 String ClassObject Int var529 var417 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2947 var1696 ClassObject Int var529 var417 String Int) void)
(declare-fun toByteArray/1561254549 (var417) (Array Int Int))
(declare-fun classLoader/1229018461 (var2947) var1051)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1051 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1509-init () var1509)
(declare-fun append/-1031950772 (String var2039) String)
(declare-fun cast-from-ClassObject-to-var2039 (ClassObject) var2039)
(declare-fun <init>/-743866570 (var1509 String var1295) void)
(declare-const null-var2947 var2947)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1696 var1696)
(declare-const null-var148 var148)
(declare-const null-var529 var529)
(declare-const null-Int Int)
(declare-const null-NullType var2991)
(declare-const null-var2550 var2550)
(declare-const var2947-seed var2910)
(declare-const null-var3324 var3324)
(declare-const var3934-TYPE_OBJECT_WRITER_8 String)
(declare-const var2947-INTERFACES (Array Int String))
(declare-const var1677-BeanToArray var1677)
(declare-const null-var1295 var1295)
(declare-const var714 var2947) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var714 null-var2947)))
(declare-const var527 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var527 null-ClassObject)))
(declare-const var522 var1696) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var522 null-var1696)))
(declare-const var1395 var148) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1395 null-var148)))
(declare-const var2377 var529) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2377 null-var529)))
(declare-const var3306 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3306 null-Int)))
(define-const var2343 var417 var417-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2343 null-var2550)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2343!1 var417)
(declare-const var1548 var2991)
(define-const var1443 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1443)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1443!1 String)
(assert (= var1443!1 ""))
(assert true)
(define-const var466 String (append/672562846 var1443!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1443!2 String)
(assert (= var1443!2 (str.++ var1443!1 "OWG_")))
(define-const var2319 var2910 var2947-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var756 Int (incrementAndGet/636047358 var2319)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2959 String (append/-901862667 var466 var756)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var466!1 String)
(assert (str.prefixof var466 var466!1))
(assert true)
(define-const var71 String (append/672562846 var2959 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2959!1 String)
(assert (= var2959!1 (str.++ var2959 "_")))
(define-const var2528 Int (var529_size/-959786421 var2377)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1796 String (append/-1001720160 var71 var2528)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var71!1 String)
(assert (str.prefixof var71 var71!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var527 null-ClassObject))) ; Cond: r7 != null 
(define-const var966 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var966)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var966!1 String)
(assert (= var966!1 ""))
(assert true)
(define-const var220 String (append/672562846 var966!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var966!2 String)
(assert (= var966!2 (str.++ var966!1 "_")))
(assert true)
(define-const var3138 String (getSimpleName/-390194377 var527)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2105 String (append/672562846 var220 var3138)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var220!1 String)
(assert (= var220!1 (str.++ var220 var3138)))
(assert true)
(define-const var1991 String (toString/-2075883882 var2105)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3275 String (append/672562846 var1796 var1991)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1796!1 String)
(assert (= var1796!1 (str.++ var1796 var1991)))
(assert true)
(define-const var2854 String (toString/-2075883882 var3275)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3368 ClassObject var2947!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3350 var3324 (getPackage/-1841711535 var3368)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3350 null-var3324)) ; Cond: $r34 == null 
(define-const var1104 String var2854) ; Statement: r45 = $r33 
(define-const var2808 String var2854) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2816 Int (var529_size/-959786421 var2377)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2816 8) (and (not (= var2816 7)) (and (not (= var2816 6)) (and (not (= var2816 5)) (and (not (= var2816 4)) (and (not (= var2816 3)) (and (not (= var2816 2)) (and (not (= var2816 1)) true))))))))) ; Intersect: Cond: $i2 == 8  and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional        
(define-const var1780 String var3934-TYPE_OBJECT_WRITER_8) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2047 (Array Int String) var2947-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2343!1 52 49 var1104 var1780 var2047)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2343!2 var417)
(declare-const var1093 Int)
(declare-const var1112 Int)
(declare-const var1104!1 String)
(declare-const var1780!1 String)
(declare-const var2047!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var714 var2377 var2343!2 var1780!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var714!1 var2947)
(declare-const var2377!1 var529)
(declare-const var2343!3 var417)
(declare-const var1780!2 String)
(assert true)
;(assert (genMethodInit/736566045 var714!1 var2377!1 var2343!3 var1104!1 var1780!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var714!2 var2947)
(declare-const var2377!2 var529)
(declare-const var2343!4 var417)
(declare-const var1104!2 String)
(declare-const var1780!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var714!2 var522 var527 var2377!2 var2343!4 var1104!2 var3306)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var714!3 var2947)
(declare-const var522!1 var1696)
(declare-const var527!1 ClassObject)
(declare-const var2377!3 var529)
(declare-const var2343!5 var417)
(declare-const var1104!3 String)
(declare-const var3306!1 Int)
(define-const var3483 var1677 var1677-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2142 Int (mask/-2077367092 var3483)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3833 Int (bv2nat (bvand ((_ int2bv 64) var3306!1) ((_ int2bv 64) var2142)))) ; Statement: $l15 = l3 & $l14 
(define-const var3047 Int (ite (> var3833 0) 1 (ite (< var3833 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var3047 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var714!3 var522!1 "write" var527!1 var3306!1 var2377!3 var2343!5 var1104!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var714!4 var2947)
(declare-const var522!2 var1696)
(declare-const var931 String)
(declare-const var527!2 ClassObject)
(declare-const var3306!2 Int)
(declare-const var2377!4 var529)
(declare-const var2343!6 var417)
(declare-const var1104!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var714!4 var522!2 var527!2 var3306!2 var2377!4 var2343!6 var1104!4 var3306!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var714!5 var2947)
(declare-const var522!3 var1696)
(declare-const var527!3 ClassObject)
(declare-const var3306!3 Int)
(declare-const var2377!5 var529)
(declare-const var2343!7 var417)
(declare-const var1104!5 String)
(declare-const var3306!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var714!5 var522!3 "writeArrayMapping" var527!3 var3306!4 var2377!5 var2343!7 var1104!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var714!6 var2947)
(declare-const var522!4 var1696)
(declare-const var1189 String)
(declare-const var527!4 ClassObject)
(declare-const var3306!5 Int)
(declare-const var2377!6 var529)
(declare-const var2343!8 var417)
(declare-const var1104!6 String)
(assert true)
(define-const var1955 (Array Int Int) (toByteArray/1561254549 var2343!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2330 var1051 (classLoader/1229018461 var714!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var548 Int (getLength-Arr-Int-1 var1955)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2320 ClassObject (defineClassPublic/-885393557 var2330 var2808 var1955 0 var548)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2967 var1295) ; Statement: $r35 := @caughtexception 
(assert (not (= var2967 null-var1295)))
(define-const var1551 var1509 var1509-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3334 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3334)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3334!1 String)
(assert (= var3334!1 ""))
(assert true)
(define-const var1813 String (append/672562846 var3334!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3334!2 String)
(assert (= var3334!2 (str.++ var3334!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3496 String (append/-1031950772 var1813 (cast-from-ClassObject-to-var2039 var527!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1813!1 String)
(assert (str.prefixof var1813 var1813!1))
(assert true)
(define-const var3597 String (toString/-2075883882 var3496)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1551 var3597 var2967)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1551!1 var1509)
(declare-const var3597!1 String)
(declare-const var2967!1 var1295)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var417-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var529_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1509-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2039=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2947=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var714=r15, var527=r7, var1696=com.alibaba.fastjson2.writer.ObjectWriterProvider, var522=r16, var148=com.alibaba.fastjson2.codec.BeanInfo, var1395=r21, var529=java.util.List, var2377=r5, var3306=l3, var417=com.alibaba.fastjson2.internal.asm.ClassWriter, var2343=$r49, var2550=java.util.function.Function, var1548=null, var2991=null_type, var1443=$r50, var466=$r3, var2910=java.util.concurrent.atomic.AtomicLong, var2319=$r2, var756=$l0, var2959=$r4, var71=$r6, var2528=$i1, var1796=$r12, var966=$r51, var220=$r10, var3138=$r9, var2105=$r11, var1991=$r41, var3275=$r13, var2854=$r33, var3368=$r14, var3324=java.lang.Package, var3350=$r34, var1104=r45, var2808=r44, var2816=$i2, var3934=com.alibaba.fastjson2.internal.asm.ASMUtils, var1780=r46, var2047=$r47, var1093=52, var1112=49, var1677=com.alibaba.fastjson2.JSONWriter$Feature, var3483=$r48, var2142=$l14, var3833=$l15, var3047=$b16, var931="write", var1189="writeArrayMapping", var1955=$r27, var1051=com.alibaba.fastjson2.util.DynamicClassLoader, var2330=$r17, var548=$i4, var2320=$r28, var1295=java.lang.Throwable, var2967=$r35, var1509=com.alibaba.fastjson2.JSONException, var1551=$r55, var3334=$r54, var1813=$r38, var2039=java.lang.Object, var3496=$r39, var3597=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2947, r15=var714, r7=var527, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1696, r16=var522, com.alibaba.fastjson2.codec.BeanInfo=var148, r21=var1395, java.util.List=var529, r5=var2377, l3=var3306, com.alibaba.fastjson2.internal.asm.ClassWriter=var417, $r49=var2343, java.util.function.Function=var2550, null=var1548, null_type=var2991, $r50=var1443, $r3=var466, java.util.concurrent.atomic.AtomicLong=var2910, $r2=var2319, $l0=var756, $r4=var2959, $r6=var71, $i1=var2528, $r12=var1796, $r51=var966, $r10=var220, $r9=var3138, $r11=var2105, $r41=var1991, $r13=var3275, $r33=var2854, $r14=var3368, java.lang.Package=var3324, $r34=var3350, r45=var1104, r44=var2808, $i2=var2816, com.alibaba.fastjson2.internal.asm.ASMUtils=var3934, r46=var1780, $r47=var2047, 52=var1093, 49=var1112, com.alibaba.fastjson2.JSONWriter$Feature=var1677, $r48=var3483, $l14=var2142, $l15=var3833, $b16=var3047, "write"=var931, "writeArrayMapping"=var1189, $r27=var1955, com.alibaba.fastjson2.util.DynamicClassLoader=var1051, $r17=var2330, $i4=var548, $r28=var2320, java.lang.Throwable=var1295, $r35=var2967, com.alibaba.fastjson2.JSONException=var1509, $r55=var1551, $r54=var3334, $r38=var1813, java.lang.Object=var2039, $r39=var3496, $r40=var3597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10