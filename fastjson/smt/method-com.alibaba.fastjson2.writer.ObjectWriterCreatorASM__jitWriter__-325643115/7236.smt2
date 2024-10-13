(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var524 0)
(declare-sort var3967 0)
(declare-sort var1083 0)
(declare-sort var988 0)
(declare-sort var3860 0)
(declare-sort var3241 0)
(declare-sort var1092 0)
(declare-sort var3562 0)
(declare-sort var839 0)
(declare-sort var2836 0)
(declare-sort var3619 0)
(declare-sort var887 0)
(declare-sort var1732 0)
(declare-sort var14 0)
(declare-sort var1241 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var524!class ClassObject)
(declare-fun var3860-init () var3860)
(declare-fun <init>/1561585841 (var3860 var3241) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3562) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var988_size/-959786421 (var988) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var839)
(declare-fun visit/1245821975 (var3860 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var524 var988 var3860 String) void)
(declare-fun genMethodInit/736566045 (var524 var988 var3860 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var524 var3967 ClassObject var988 var3860 String Int) void)
(declare-fun mask/-2077367092 (var3619) Int)
(declare-fun genMethodWrite/551741206 (var524 var3967 ClassObject var988 var3860 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var524 var3967 ClassObject Int var988 var3860 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var524 var3967 String ClassObject Int var988 var3860 String) void)
(declare-fun toByteArray/1561254549 (var3860) (Array Int Int))
(declare-fun classLoader/1229018461 (var524) var887)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var887 String (Array Int Int) Int Int) ClassObject)
(declare-fun var14-init () var14)
(declare-fun append/-1031950772 (String var1241) String)
(declare-fun cast-from-ClassObject-to-var1241 (ClassObject) var1241)
(declare-fun <init>/-743866570 (var14 String var1732) void)
(declare-const null-var524 var524)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3967 var3967)
(declare-const null-var1083 var1083)
(declare-const null-var988 var988)
(declare-const null-Int Int)
(declare-const null-NullType var1092)
(declare-const null-var3241 var3241)
(declare-const var524-seed var3562)
(declare-const null-var839 var839)
(declare-const var2836-TYPE_OBJECT_WRITER_ADAPTER String)
(declare-const var524-INTERFACES (Array Int String))
(declare-const var3619-BeanToArray var3619)
(declare-const null-var1732 var1732)
(declare-const var337 var524) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var337 null-var524)))
(declare-const var2077 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2077 null-ClassObject)))
(declare-const var3504 var3967) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3504 null-var3967)))
(declare-const var473 var1083) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var473 null-var1083)))
(declare-const var3663 var988) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3663 null-var988)))
(declare-const var260 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var260 null-Int)))
(define-const var1148 var3860 var3860-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1148 null-var3241)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1148!1 var3860)
(declare-const var684 var1092)
(define-const var1949 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1949)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1949!1 String)
(assert (= var1949!1 ""))
(assert true)
(define-const var903 String (append/672562846 var1949!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1949!2 String)
(assert (= var1949!2 (str.++ var1949!1 "OWG_")))
(define-const var1893 var3562 var524-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1086 Int (incrementAndGet/636047358 var1893)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2793 String (append/-901862667 var903 var1086)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var903!1 String)
(assert (str.prefixof var903 var903!1))
(assert true)
(define-const var472 String (append/672562846 var2793 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2793!1 String)
(assert (= var2793!1 (str.++ var2793 "_")))
(define-const var1391 Int (var988_size/-959786421 var3663)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var41 String (append/-1001720160 var472 var1391)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var472!1 String)
(assert (str.prefixof var472 var472!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var2077 null-ClassObject))) ; Cond: r7 != null 
(define-const var2469 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2469)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2469!1 String)
(assert (= var2469!1 ""))
(assert true)
(define-const var3574 String (append/672562846 var2469!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2469!2 String)
(assert (= var2469!2 (str.++ var2469!1 "_")))
(assert true)
(define-const var556 String (getSimpleName/-390194377 var2077)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2325 String (append/672562846 var3574 var556)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 var556)))
(assert true)
(define-const var89 String (toString/-2075883882 var2325)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3946 String (append/672562846 var41 var89)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var41!1 String)
(assert (= var41!1 (str.++ var41 var89)))
(assert true)
(define-const var2582 String (toString/-2075883882 var3946)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1006 ClassObject var524!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var967 var839 (getPackage/-1841711535 var1006)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var967 null-var839)) ; Cond: $r34 == null 
(define-const var3952 String var2582) ; Statement: r45 = $r33 
(define-const var2780 String var2582) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1377 Int (var988_size/-959786421 var3663)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (not (= var1377 12)) (and (not (= var1377 11)) (and (not (= var1377 10)) (and (not (= var1377 9)) (and (not (= var1377 8)) (and (not (= var1377 7)) (and (not (= var1377 6)) (and (not (= var1377 5)) (and (not (= var1377 4)) (and (not (= var1377 3)) (and (not (= var1377 2)) (and (not (= var1377 1)) true))))))))))))) ; Intersect: Negate: Cond: $i2 == 12   and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var2734 String var2836-TYPE_OBJECT_WRITER_ADAPTER) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> 
(assert true) ; Non Conditional
(define-const var2535 (Array Int String) var524-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1148!1 52 49 var3952 var2734 var2535)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1148!2 var3860)
(declare-const var913 Int)
(declare-const var3607 Int)
(declare-const var3952!1 String)
(declare-const var2734!1 String)
(declare-const var2535!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var337 var3663 var1148!2 var2734!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var337!1 var524)
(declare-const var3663!1 var988)
(declare-const var1148!3 var3860)
(declare-const var2734!2 String)
(assert true)
;(assert (genMethodInit/736566045 var337!1 var3663!1 var1148!3 var3952!1 var2734!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var337!2 var524)
(declare-const var3663!2 var988)
(declare-const var1148!4 var3860)
(declare-const var3952!2 String)
(declare-const var2734!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var337!2 var3504 var2077 var3663!2 var1148!4 var3952!2 var260)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var337!3 var524)
(declare-const var3504!1 var3967)
(declare-const var2077!1 ClassObject)
(declare-const var3663!3 var988)
(declare-const var1148!5 var3860)
(declare-const var3952!3 String)
(declare-const var260!1 Int)
(define-const var3229 var3619 var3619-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var561 Int (mask/-2077367092 var3229)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3509 Int (bv2nat (bvand ((_ int2bv 64) var260!1) ((_ int2bv 64) var561)))) ; Statement: $l15 = l3 & $l14 
(define-const var1237 Int (ite (> var3509 0) 1 (ite (< var3509 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1237 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var337!3 var3504!1 var2077!1 var3663!3 var1148!5 var3952!3 var260!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var337!4 var524)
(declare-const var3504!2 var3967)
(declare-const var2077!2 ClassObject)
(declare-const var3663!4 var988)
(declare-const var1148!6 var3860)
(declare-const var3952!4 String)
(declare-const var260!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var337!4 var3504!2 var2077!2 var260!2 var3663!4 var1148!6 var3952!4 var260!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var337!5 var524)
(declare-const var3504!3 var3967)
(declare-const var2077!3 ClassObject)
(declare-const var260!3 Int)
(declare-const var3663!5 var988)
(declare-const var1148!7 var3860)
(declare-const var3952!5 String)
(declare-const var260!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var337!5 var3504!3 "writeArrayMapping" var2077!3 var260!4 var3663!5 var1148!7 var3952!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var337!6 var524)
(declare-const var3504!4 var3967)
(declare-const var2864 String)
(declare-const var2077!4 ClassObject)
(declare-const var260!5 Int)
(declare-const var3663!6 var988)
(declare-const var1148!8 var3860)
(declare-const var3952!6 String)
(assert true)
(define-const var746 (Array Int Int) (toByteArray/1561254549 var1148!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2538 var887 (classLoader/1229018461 var337!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3444 Int (getLength-Arr-Int-1 var746)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3664 ClassObject (defineClassPublic/-885393557 var2538 var2780 var746 0 var3444)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1270 var1732) ; Statement: $r35 := @caughtexception 
(assert (not (= var1270 null-var1732)))
(define-const var215 var14 var14-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2559 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2559)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2559!1 String)
(assert (= var2559!1 ""))
(assert true)
(define-const var3096 String (append/672562846 var2559!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2559!2 String)
(assert (= var2559!2 (str.++ var2559!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var301 String (append/-1031950772 var3096 (cast-from-ClassObject-to-var1241 var2077!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3096!1 String)
(assert (str.prefixof var3096 var3096!1))
(assert true)
(define-const var324 String (toString/-2075883882 var301)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var215 var324 var1270)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var215!1 var14)
(declare-const var324!1 String)
(declare-const var1270!1 var1732)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3860-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var988_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var14-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1241=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var524=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var337=r15, var2077=r7, var3967=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3504=r16, var1083=com.alibaba.fastjson2.codec.BeanInfo, var473=r21, var988=java.util.List, var3663=r5, var260=l3, var3860=com.alibaba.fastjson2.internal.asm.ClassWriter, var1148=$r49, var3241=java.util.function.Function, var684=null, var1092=null_type, var1949=$r50, var903=$r3, var3562=java.util.concurrent.atomic.AtomicLong, var1893=$r2, var1086=$l0, var2793=$r4, var472=$r6, var1391=$i1, var41=$r12, var2469=$r51, var3574=$r10, var556=$r9, var2325=$r11, var89=$r41, var3946=$r13, var2582=$r33, var1006=$r14, var839=java.lang.Package, var967=$r34, var3952=r45, var2780=r44, var1377=$i2, var2836=com.alibaba.fastjson2.internal.asm.ASMUtils, var2734=r46, var2535=$r47, var913=52, var3607=49, var3619=com.alibaba.fastjson2.JSONWriter$Feature, var3229=$r48, var561=$l14, var3509=$l15, var1237=$b16, var2864="writeArrayMapping", var746=$r27, var887=com.alibaba.fastjson2.util.DynamicClassLoader, var2538=$r17, var3444=$i4, var3664=$r28, var1732=java.lang.Throwable, var1270=$r35, var14=com.alibaba.fastjson2.JSONException, var215=$r55, var2559=$r54, var3096=$r38, var1241=java.lang.Object, var301=$r39, var324=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var524, r15=var337, r7=var2077, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3967, r16=var3504, com.alibaba.fastjson2.codec.BeanInfo=var1083, r21=var473, java.util.List=var988, r5=var3663, l3=var260, com.alibaba.fastjson2.internal.asm.ClassWriter=var3860, $r49=var1148, java.util.function.Function=var3241, null=var684, null_type=var1092, $r50=var1949, $r3=var903, java.util.concurrent.atomic.AtomicLong=var3562, $r2=var1893, $l0=var1086, $r4=var2793, $r6=var472, $i1=var1391, $r12=var41, $r51=var2469, $r10=var3574, $r9=var556, $r11=var2325, $r41=var89, $r13=var3946, $r33=var2582, $r14=var1006, java.lang.Package=var839, $r34=var967, r45=var3952, r44=var2780, $i2=var1377, com.alibaba.fastjson2.internal.asm.ASMUtils=var2836, r46=var2734, $r47=var2535, 52=var913, 49=var3607, com.alibaba.fastjson2.JSONWriter$Feature=var3619, $r48=var3229, $l14=var561, $l15=var3509, $b16=var1237, "writeArrayMapping"=var2864, $r27=var746, com.alibaba.fastjson2.util.DynamicClassLoader=var887, $r17=var2538, $i4=var3444, $r28=var3664, java.lang.Throwable=var1732, $r35=var1270, com.alibaba.fastjson2.JSONException=var14, $r55=var215, $r54=var2559, $r38=var3096, java.lang.Object=var1241, $r39=var301, $r40=var324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>;	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10