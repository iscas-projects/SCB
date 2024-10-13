(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort var2345 0)
(declare-sort var3043 0)
(declare-sort var596 0)
(declare-sort var960 0)
(declare-sort var3486 0)
(declare-sort var88 0)
(declare-sort var523 0)
(declare-sort var2160 0)
(declare-sort var1583 0)
(declare-sort var1560 0)
(declare-sort var2943 0)
(declare-sort var1517 0)
(declare-sort var1420 0)
(declare-sort var30 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1396!class ClassObject)
(declare-fun var960-init () var960)
(declare-fun <init>/1561585841 (var960 var3486) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var523) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var596_size/-959786421 (var596) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2160)
(declare-fun visit/1245821975 (var960 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1396 var596 var960 String) void)
(declare-fun genMethodInit/736566045 (var1396 var596 var960 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1396 var2345 ClassObject var596 var960 String Int) void)
(declare-fun mask/-2077367092 (var1560) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1396 var2345 String ClassObject Int var596 var960 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1396 var2345 ClassObject Int var596 var960 String Int) void)
(declare-fun toByteArray/1561254549 (var960) (Array Int Int))
(declare-fun classLoader/1229018461 (var1396) var2943)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2943 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1420-init () var1420)
(declare-fun append/-1031950772 (String var30) String)
(declare-fun cast-from-ClassObject-to-var30 (ClassObject) var30)
(declare-fun <init>/-743866570 (var1420 String var1517) void)
(declare-const null-var1396 var1396)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2345 var2345)
(declare-const null-var3043 var3043)
(declare-const null-var596 var596)
(declare-const null-Int Int)
(declare-const null-NullType var88)
(declare-const null-var3486 var3486)
(declare-const var1396-seed var523)
(declare-const null-var2160 var2160)
(declare-const var1583-TYPE_OBJECT_WRITER_12 String)
(declare-const var1396-INTERFACES (Array Int String))
(declare-const var1560-BeanToArray var1560)
(declare-const null-var1517 var1517)
(declare-const var465 var1396) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var465 null-var1396)))
(declare-const var363 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var363 null-ClassObject)))
(declare-const var2364 var2345) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2364 null-var2345)))
(declare-const var267 var3043) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var267 null-var3043)))
(declare-const var760 var596) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var760 null-var596)))
(declare-const var2693 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2693 null-Int)))
(define-const var566 var960 var960-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var566 null-var3486)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var566!1 var960)
(declare-const var2726 var88)
(define-const var2907 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2907)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2907!1 String)
(assert (= var2907!1 ""))
(assert true)
(define-const var1875 String (append/672562846 var2907!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2907!2 String)
(assert (= var2907!2 (str.++ var2907!1 "OWG_")))
(define-const var1089 var523 var1396-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3372 Int (incrementAndGet/636047358 var1089)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3564 String (append/-901862667 var1875 var3372)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1875!1 String)
(assert (str.prefixof var1875 var1875!1))
(assert true)
(define-const var2424 String (append/672562846 var3564 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3564!1 String)
(assert (= var3564!1 (str.++ var3564 "_")))
(define-const var3997 Int (var596_size/-959786421 var760)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3779 String (append/-1001720160 var2424 var3997)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2424!1 String)
(assert (str.prefixof var2424 var2424!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var363 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var3068 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3968 String (append/672562846 var3779 var3068)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 var3068)))
(assert true)
(define-const var1857 String (toString/-2075883882 var3968)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1708 ClassObject var1396!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var167 var2160 (getPackage/-1841711535 var1708)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var167 null-var2160)) ; Cond: $r34 == null 
(define-const var1522 String var1857) ; Statement: r45 = $r33 
(define-const var547 String var1857) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2449 Int (var596_size/-959786421 var760)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2449 12) (and (not (= var2449 11)) (and (not (= var2449 10)) (and (not (= var2449 9)) (and (not (= var2449 8)) (and (not (= var2449 7)) (and (not (= var2449 6)) (and (not (= var2449 5)) (and (not (= var2449 4)) (and (not (= var2449 3)) (and (not (= var2449 2)) (and (not (= var2449 1)) true))))))))))))) ; Intersect: Cond: $i2 == 12  and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var1290 String var1583-TYPE_OBJECT_WRITER_12) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1539 (Array Int String) var1396-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var566!1 52 49 var1522 var1290 var1539)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var566!2 var960)
(declare-const var151 Int)
(declare-const var3304 Int)
(declare-const var1522!1 String)
(declare-const var1290!1 String)
(declare-const var1539!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var465 var760 var566!2 var1290!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var465!1 var1396)
(declare-const var760!1 var596)
(declare-const var566!3 var960)
(declare-const var1290!2 String)
(assert true)
;(assert (genMethodInit/736566045 var465!1 var760!1 var566!3 var1522!1 var1290!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var465!2 var1396)
(declare-const var760!2 var596)
(declare-const var566!4 var960)
(declare-const var1522!2 String)
(declare-const var1290!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var465!2 var2364 var363 var760!2 var566!4 var1522!2 var2693)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var465!3 var1396)
(declare-const var2364!1 var2345)
(declare-const var363!1 ClassObject)
(declare-const var760!3 var596)
(declare-const var566!5 var960)
(declare-const var1522!3 String)
(declare-const var2693!1 Int)
(define-const var2097 var1560 var1560-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3322 Int (mask/-2077367092 var2097)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3491 Int (bv2nat (bvand ((_ int2bv 64) var2693!1) ((_ int2bv 64) var3322)))) ; Statement: $l15 = l3 & $l14 
(define-const var702 Int (ite (> var3491 0) 1 (ite (< var3491 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var702 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var465!3 var2364!1 "write" var363!1 var2693!1 var760!3 var566!5 var1522!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var465!4 var1396)
(declare-const var2364!2 var2345)
(declare-const var856 String)
(declare-const var363!2 ClassObject)
(declare-const var2693!2 Int)
(declare-const var760!4 var596)
(declare-const var566!6 var960)
(declare-const var1522!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var465!4 var2364!2 var363!2 var2693!2 var760!4 var566!6 var1522!4 var2693!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var465!5 var1396)
(declare-const var2364!3 var2345)
(declare-const var363!3 ClassObject)
(declare-const var2693!3 Int)
(declare-const var760!5 var596)
(declare-const var566!7 var960)
(declare-const var1522!5 String)
(declare-const var2693!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var465!5 var2364!3 "writeArrayMapping" var363!3 var2693!4 var760!5 var566!7 var1522!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var465!6 var1396)
(declare-const var2364!4 var2345)
(declare-const var3939 String)
(declare-const var363!4 ClassObject)
(declare-const var2693!5 Int)
(declare-const var760!6 var596)
(declare-const var566!8 var960)
(declare-const var1522!6 String)
(assert true)
(define-const var1003 (Array Int Int) (toByteArray/1561254549 var566!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2919 var2943 (classLoader/1229018461 var465!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1446 Int (getLength-Arr-Int-1 var1003)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2185 ClassObject (defineClassPublic/-885393557 var2919 var547 var1003 0 var1446)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1828 var1517) ; Statement: $r35 := @caughtexception 
(assert (not (= var1828 null-var1517)))
(define-const var680 var1420 var1420-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1030 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1030)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1030!1 String)
(assert (= var1030!1 ""))
(assert true)
(define-const var2761 String (append/672562846 var1030!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1030!2 String)
(assert (= var1030!2 (str.++ var1030!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var129 String (append/-1031950772 var2761 (cast-from-ClassObject-to-var30 var363!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2761!1 String)
(assert (str.prefixof var2761 var2761!1))
(assert true)
(define-const var1161 String (toString/-2075883882 var129)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var680 var1161 var1828)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var680!1 var1420)
(declare-const var1161!1 String)
(declare-const var1828!1 var1517)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var960-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var596_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1420-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var30=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1396=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var465=r15, var363=r7, var2345=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2364=r16, var3043=com.alibaba.fastjson2.codec.BeanInfo, var267=r21, var596=java.util.List, var760=r5, var2693=l3, var960=com.alibaba.fastjson2.internal.asm.ClassWriter, var566=$r49, var3486=java.util.function.Function, var2726=null, var88=null_type, var2907=$r50, var1875=$r3, var523=java.util.concurrent.atomic.AtomicLong, var1089=$r2, var3372=$l0, var3564=$r4, var2424=$r6, var3997=$i1, var3779=$r12, var3068=$r41, var3968=$r13, var1857=$r33, var1708=$r14, var2160=java.lang.Package, var167=$r34, var1522=r45, var547=r44, var2449=$i2, var1583=com.alibaba.fastjson2.internal.asm.ASMUtils, var1290=r46, var1539=$r47, var151=52, var3304=49, var1560=com.alibaba.fastjson2.JSONWriter$Feature, var2097=$r48, var3322=$l14, var3491=$l15, var702=$b16, var856="write", var3939="writeArrayMapping", var1003=$r27, var2943=com.alibaba.fastjson2.util.DynamicClassLoader, var2919=$r17, var1446=$i4, var2185=$r28, var1517=java.lang.Throwable, var1828=$r35, var1420=com.alibaba.fastjson2.JSONException, var680=$r55, var1030=$r54, var2761=$r38, var30=java.lang.Object, var129=$r39, var1161=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1396, r15=var465, r7=var363, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2345, r16=var2364, com.alibaba.fastjson2.codec.BeanInfo=var3043, r21=var267, java.util.List=var596, r5=var760, l3=var2693, com.alibaba.fastjson2.internal.asm.ClassWriter=var960, $r49=var566, java.util.function.Function=var3486, null=var2726, null_type=var88, $r50=var2907, $r3=var1875, java.util.concurrent.atomic.AtomicLong=var523, $r2=var1089, $l0=var3372, $r4=var3564, $r6=var2424, $i1=var3997, $r12=var3779, $r41=var3068, $r13=var3968, $r33=var1857, $r14=var1708, java.lang.Package=var2160, $r34=var167, r45=var1522, r44=var547, $i2=var2449, com.alibaba.fastjson2.internal.asm.ASMUtils=var1583, r46=var1290, $r47=var1539, 52=var151, 49=var3304, com.alibaba.fastjson2.JSONWriter$Feature=var1560, $r48=var2097, $l14=var3322, $l15=var3491, $b16=var702, "write"=var856, "writeArrayMapping"=var3939, $r27=var1003, com.alibaba.fastjson2.util.DynamicClassLoader=var2943, $r17=var2919, $i4=var1446, $r28=var2185, java.lang.Throwable=var1517, $r35=var1828, com.alibaba.fastjson2.JSONException=var1420, $r55=var680, $r54=var1030, $r38=var2761, java.lang.Object=var30, $r39=var129, $r40=var1161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10