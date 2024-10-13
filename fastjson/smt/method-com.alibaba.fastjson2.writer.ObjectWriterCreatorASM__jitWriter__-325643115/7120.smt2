(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var3353 0)
(declare-sort var2754 0)
(declare-sort var456 0)
(declare-sort var3340 0)
(declare-sort var1984 0)
(declare-sort var1575 0)
(declare-sort var1536 0)
(declare-sort var1977 0)
(declare-sort var2098 0)
(declare-sort var893 0)
(declare-sort var2583 0)
(declare-sort var2324 0)
(declare-sort var453 0)
(declare-sort var1340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2453!class ClassObject)
(declare-fun var3340-init () var3340)
(declare-fun <init>/1561585841 (var3340 var1984) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1536) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var456_size/-959786421 (var456) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1977)
(declare-fun visit/1245821975 (var3340 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2453 var456 var3340 String) void)
(declare-fun genMethodInit/736566045 (var2453 var456 var3340 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2453 var3353 ClassObject var456 var3340 String Int) void)
(declare-fun mask/-2077367092 (var893) Int)
(declare-fun genMethodWrite/551741206 (var2453 var3353 ClassObject var456 var3340 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2453 var3353 ClassObject Int var456 var3340 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2453 var3353 String ClassObject Int var456 var3340 String) void)
(declare-fun toByteArray/1561254549 (var3340) (Array Int Int))
(declare-fun classLoader/1229018461 (var2453) var2583)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2583 String (Array Int Int) Int Int) ClassObject)
(declare-fun var453-init () var453)
(declare-fun append/-1031950772 (String var1340) String)
(declare-fun cast-from-ClassObject-to-var1340 (ClassObject) var1340)
(declare-fun <init>/-743866570 (var453 String var2324) void)
(declare-const null-var2453 var2453)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3353 var3353)
(declare-const null-var2754 var2754)
(declare-const null-var456 var456)
(declare-const null-Int Int)
(declare-const null-NullType var1575)
(declare-const null-var1984 var1984)
(declare-const var2453-seed var1536)
(declare-const null-var1977 var1977)
(declare-const var2098-TYPE_OBJECT_WRITER_10 String)
(declare-const var2453-INTERFACES (Array Int String))
(declare-const var893-BeanToArray var893)
(declare-const null-var2324 var2324)
(declare-const var3310 var2453) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3310 null-var2453)))
(declare-const var405 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var405 null-ClassObject)))
(declare-const var529 var3353) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var529 null-var3353)))
(declare-const var3444 var2754) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3444 null-var2754)))
(declare-const var1539 var456) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1539 null-var456)))
(declare-const var708 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var708 null-Int)))
(define-const var537 var3340 var3340-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var537 null-var1984)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var537!1 var3340)
(declare-const var2148 var1575)
(define-const var1245 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1245)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1245!1 String)
(assert (= var1245!1 ""))
(assert true)
(define-const var3515 String (append/672562846 var1245!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1245!2 String)
(assert (= var1245!2 (str.++ var1245!1 "OWG_")))
(define-const var576 var1536 var2453-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2174 Int (incrementAndGet/636047358 var576)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var837 String (append/-901862667 var3515 var2174)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3515!1 String)
(assert (str.prefixof var3515 var3515!1))
(assert true)
(define-const var2738 String (append/672562846 var837 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var837!1 String)
(assert (= var837!1 (str.++ var837 "_")))
(define-const var3690 Int (var456_size/-959786421 var1539)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1650 String (append/-1001720160 var2738 var3690)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2738!1 String)
(assert (str.prefixof var2738 var2738!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var405 null-ClassObject))) ; Cond: r7 != null 
(define-const var3401 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3401)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3401!1 String)
(assert (= var3401!1 ""))
(assert true)
(define-const var1846 String (append/672562846 var3401!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3401!2 String)
(assert (= var3401!2 (str.++ var3401!1 "_")))
(assert true)
(define-const var1355 String (getSimpleName/-390194377 var405)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1366 String (append/672562846 var1846 var1355)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1846!1 String)
(assert (= var1846!1 (str.++ var1846 var1355)))
(assert true)
(define-const var1701 String (toString/-2075883882 var1366)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var343 String (append/672562846 var1650 var1701)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1650!1 String)
(assert (= var1650!1 (str.++ var1650 var1701)))
(assert true)
(define-const var1795 String (toString/-2075883882 var343)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2292 ClassObject var2453!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2226 var1977 (getPackage/-1841711535 var2292)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2226 null-var1977)) ; Cond: $r34 == null 
(define-const var452 String var1795) ; Statement: r45 = $r33 
(define-const var1226 String var1795) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3218 Int (var456_size/-959786421 var1539)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3218 10) (and (not (= var3218 9)) (and (not (= var3218 8)) (and (not (= var3218 7)) (and (not (= var3218 6)) (and (not (= var3218 5)) (and (not (= var3218 4)) (and (not (= var3218 3)) (and (not (= var3218 2)) (and (not (= var3218 1)) true))))))))))) ; Intersect: Cond: $i2 == 10  and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional          
(define-const var3164 String var2098-TYPE_OBJECT_WRITER_10) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2360 (Array Int String) var2453-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var537!1 52 49 var452 var3164 var2360)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var537!2 var3340)
(declare-const var3770 Int)
(declare-const var248 Int)
(declare-const var452!1 String)
(declare-const var3164!1 String)
(declare-const var2360!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3310 var1539 var537!2 var3164!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3310!1 var2453)
(declare-const var1539!1 var456)
(declare-const var537!3 var3340)
(declare-const var3164!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3310!1 var1539!1 var537!3 var452!1 var3164!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3310!2 var2453)
(declare-const var1539!2 var456)
(declare-const var537!4 var3340)
(declare-const var452!2 String)
(declare-const var3164!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3310!2 var529 var405 var1539!2 var537!4 var452!2 var708)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3310!3 var2453)
(declare-const var529!1 var3353)
(declare-const var405!1 ClassObject)
(declare-const var1539!3 var456)
(declare-const var537!5 var3340)
(declare-const var452!3 String)
(declare-const var708!1 Int)
(define-const var1196 var893 var893-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1471 Int (mask/-2077367092 var1196)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3875 Int (bv2nat (bvand ((_ int2bv 64) var708!1) ((_ int2bv 64) var1471)))) ; Statement: $l15 = l3 & $l14 
(define-const var3538 Int (ite (> var3875 0) 1 (ite (< var3875 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3538 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3310!3 var529!1 var405!1 var1539!3 var537!5 var452!3 var708!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3310!4 var2453)
(declare-const var529!2 var3353)
(declare-const var405!2 ClassObject)
(declare-const var1539!4 var456)
(declare-const var537!6 var3340)
(declare-const var452!4 String)
(declare-const var708!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3310!4 var529!2 var405!2 var708!2 var1539!4 var537!6 var452!4 var708!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3310!5 var2453)
(declare-const var529!3 var3353)
(declare-const var405!3 ClassObject)
(declare-const var708!3 Int)
(declare-const var1539!5 var456)
(declare-const var537!7 var3340)
(declare-const var452!5 String)
(declare-const var708!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3310!5 var529!3 "writeArrayMapping" var405!3 var708!4 var1539!5 var537!7 var452!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3310!6 var2453)
(declare-const var529!4 var3353)
(declare-const var1760 String)
(declare-const var405!4 ClassObject)
(declare-const var708!5 Int)
(declare-const var1539!6 var456)
(declare-const var537!8 var3340)
(declare-const var452!6 String)
(assert true)
(define-const var547 (Array Int Int) (toByteArray/1561254549 var537!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3970 var2583 (classLoader/1229018461 var3310!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1030 Int (getLength-Arr-Int-1 var547)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2080 ClassObject (defineClassPublic/-885393557 var3970 var1226 var547 0 var1030)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1037 var2324) ; Statement: $r35 := @caughtexception 
(assert (not (= var1037 null-var2324)))
(define-const var2973 var453 var453-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1930 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1930)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1930!1 String)
(assert (= var1930!1 ""))
(assert true)
(define-const var3564 String (append/672562846 var1930!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1930!2 String)
(assert (= var1930!2 (str.++ var1930!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2872 String (append/-1031950772 var3564 (cast-from-ClassObject-to-var1340 var405!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3564!1 String)
(assert (str.prefixof var3564 var3564!1))
(assert true)
(define-const var980 String (toString/-2075883882 var2872)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2973 var980 var1037)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2973!1 var453)
(declare-const var980!1 String)
(declare-const var1037!1 var2324)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3340-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var456_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var453-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1340=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2453=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3310=r15, var405=r7, var3353=com.alibaba.fastjson2.writer.ObjectWriterProvider, var529=r16, var2754=com.alibaba.fastjson2.codec.BeanInfo, var3444=r21, var456=java.util.List, var1539=r5, var708=l3, var3340=com.alibaba.fastjson2.internal.asm.ClassWriter, var537=$r49, var1984=java.util.function.Function, var2148=null, var1575=null_type, var1245=$r50, var3515=$r3, var1536=java.util.concurrent.atomic.AtomicLong, var576=$r2, var2174=$l0, var837=$r4, var2738=$r6, var3690=$i1, var1650=$r12, var3401=$r51, var1846=$r10, var1355=$r9, var1366=$r11, var1701=$r41, var343=$r13, var1795=$r33, var2292=$r14, var1977=java.lang.Package, var2226=$r34, var452=r45, var1226=r44, var3218=$i2, var2098=com.alibaba.fastjson2.internal.asm.ASMUtils, var3164=r46, var2360=$r47, var3770=52, var248=49, var893=com.alibaba.fastjson2.JSONWriter$Feature, var1196=$r48, var1471=$l14, var3875=$l15, var3538=$b16, var1760="writeArrayMapping", var547=$r27, var2583=com.alibaba.fastjson2.util.DynamicClassLoader, var3970=$r17, var1030=$i4, var2080=$r28, var2324=java.lang.Throwable, var1037=$r35, var453=com.alibaba.fastjson2.JSONException, var2973=$r55, var1930=$r54, var3564=$r38, var1340=java.lang.Object, var2872=$r39, var980=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2453, r15=var3310, r7=var405, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3353, r16=var529, com.alibaba.fastjson2.codec.BeanInfo=var2754, r21=var3444, java.util.List=var456, r5=var1539, l3=var708, com.alibaba.fastjson2.internal.asm.ClassWriter=var3340, $r49=var537, java.util.function.Function=var1984, null=var2148, null_type=var1575, $r50=var1245, $r3=var3515, java.util.concurrent.atomic.AtomicLong=var1536, $r2=var576, $l0=var2174, $r4=var837, $r6=var2738, $i1=var3690, $r12=var1650, $r51=var3401, $r10=var1846, $r9=var1355, $r11=var1366, $r41=var1701, $r13=var343, $r33=var1795, $r14=var2292, java.lang.Package=var1977, $r34=var2226, r45=var452, r44=var1226, $i2=var3218, com.alibaba.fastjson2.internal.asm.ASMUtils=var2098, r46=var3164, $r47=var2360, 52=var3770, 49=var248, com.alibaba.fastjson2.JSONWriter$Feature=var893, $r48=var1196, $l14=var1471, $l15=var3875, $b16=var3538, "writeArrayMapping"=var1760, $r27=var547, com.alibaba.fastjson2.util.DynamicClassLoader=var2583, $r17=var3970, $i4=var1030, $r28=var2080, java.lang.Throwable=var2324, $r35=var1037, com.alibaba.fastjson2.JSONException=var453, $r55=var2973, $r54=var1930, $r38=var3564, java.lang.Object=var1340, $r39=var2872, $r40=var980}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10