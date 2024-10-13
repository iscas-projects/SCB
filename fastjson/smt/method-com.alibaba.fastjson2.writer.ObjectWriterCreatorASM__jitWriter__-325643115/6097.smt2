(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3590 0)
(declare-sort var1691 0)
(declare-sort var1372 0)
(declare-sort var1101 0)
(declare-sort var2796 0)
(declare-sort var3092 0)
(declare-sort var2040 0)
(declare-sort var2301 0)
(declare-sort var2174 0)
(declare-sort var265 0)
(declare-sort var1675 0)
(declare-sort var3895 0)
(declare-sort var427 0)
(declare-sort var1972 0)
(declare-sort var3652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3590!class ClassObject)
(declare-fun var2796-init () var2796)
(declare-fun <init>/1561585841 (var2796 var3092) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2301) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1101_size/-959786421 (var1101) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2174)
(declare-fun visit/1245821975 (var2796 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3590 var1101 var2796 String) void)
(declare-fun genMethodInit/736566045 (var3590 var1101 var2796 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3590 var1691 ClassObject var1101 var2796 String Int) void)
(declare-fun mask/-2077367092 (var1675) Int)
(declare-fun genMethodWrite/551741206 (var3590 var1691 ClassObject var1101 var2796 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3590 var1691 ClassObject Int var1101 var2796 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3590 var1691 String ClassObject Int var1101 var2796 String) void)
(declare-fun toByteArray/1561254549 (var2796) (Array Int Int))
(declare-fun classLoader/1229018461 (var3590) var3895)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3895 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1972-init () var1972)
(declare-fun append/-1031950772 (String var3652) String)
(declare-fun cast-from-ClassObject-to-var3652 (ClassObject) var3652)
(declare-fun <init>/-743866570 (var1972 String var427) void)
(declare-const null-var3590 var3590)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1691 var1691)
(declare-const null-var1372 var1372)
(declare-const null-var1101 var1101)
(declare-const null-Int Int)
(declare-const null-NullType var2040)
(declare-const null-var3092 var3092)
(declare-const var3590-seed var2301)
(declare-const null-var2174 var2174)
(declare-const var265-TYPE_OBJECT_WRITER_3 String)
(declare-const var3590-INTERFACES (Array Int String))
(declare-const var1675-BeanToArray var1675)
(declare-const null-var427 var427)
(declare-const var3298 var3590) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3298 null-var3590)))
(declare-const var2343 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2343 null-ClassObject)))
(declare-const var961 var1691) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var961 null-var1691)))
(declare-const var1614 var1372) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1614 null-var1372)))
(declare-const var2141 var1101) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2141 null-var1101)))
(declare-const var785 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var785 null-Int)))
(define-const var55 var2796 var2796-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var55 null-var3092)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var55!1 var2796)
(declare-const var820 var2040)
(define-const var283 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var283)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var283!1 String)
(assert (= var283!1 ""))
(assert true)
(define-const var3845 String (append/672562846 var283!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var283!2 String)
(assert (= var283!2 (str.++ var283!1 "OWG_")))
(define-const var925 var2301 var3590-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1035 Int (incrementAndGet/636047358 var925)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1340 String (append/-901862667 var3845 var1035)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3845!1 String)
(assert (str.prefixof var3845 var3845!1))
(assert true)
(define-const var2513 String (append/672562846 var1340 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1340!1 String)
(assert (= var1340!1 (str.++ var1340 "_")))
(define-const var2047 Int (var1101_size/-959786421 var2141)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1083 String (append/-1001720160 var2513 var2047)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2513!1 String)
(assert (str.prefixof var2513 var2513!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2343 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var1262 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var443 String (append/672562846 var1083 var1262)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1083!1 String)
(assert (= var1083!1 (str.++ var1083 var1262)))
(assert true)
(define-const var3961 String (toString/-2075883882 var443)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2054 ClassObject var3590!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3 var2174 (getPackage/-1841711535 var2054)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3 null-var2174)) ; Cond: $r34 == null 
(define-const var189 String var3961) ; Statement: r45 = $r33 
(define-const var334 String var3961) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2148 Int (var1101_size/-959786421 var2141)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2148 3) (and (not (= var2148 2)) (and (not (= var2148 1)) true)))) ; Intersect: Cond: $i2 == 3  and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional   
(define-const var652 String var265-TYPE_OBJECT_WRITER_3) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3259 (Array Int String) var3590-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var55!1 52 49 var189 var652 var3259)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var55!2 var2796)
(declare-const var1222 Int)
(declare-const var2328 Int)
(declare-const var189!1 String)
(declare-const var652!1 String)
(declare-const var3259!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3298 var2141 var55!2 var652!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3298!1 var3590)
(declare-const var2141!1 var1101)
(declare-const var55!3 var2796)
(declare-const var652!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3298!1 var2141!1 var55!3 var189!1 var652!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3298!2 var3590)
(declare-const var2141!2 var1101)
(declare-const var55!4 var2796)
(declare-const var189!2 String)
(declare-const var652!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3298!2 var961 var2343 var2141!2 var55!4 var189!2 var785)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3298!3 var3590)
(declare-const var961!1 var1691)
(declare-const var2343!1 ClassObject)
(declare-const var2141!3 var1101)
(declare-const var55!5 var2796)
(declare-const var189!3 String)
(declare-const var785!1 Int)
(define-const var736 var1675 var1675-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2548 Int (mask/-2077367092 var736)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1109 Int (bv2nat (bvand ((_ int2bv 64) var785!1) ((_ int2bv 64) var2548)))) ; Statement: $l15 = l3 & $l14 
(define-const var1418 Int (ite (> var1109 0) 1 (ite (< var1109 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1418 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3298!3 var961!1 var2343!1 var2141!3 var55!5 var189!3 var785!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3298!4 var3590)
(declare-const var961!2 var1691)
(declare-const var2343!2 ClassObject)
(declare-const var2141!4 var1101)
(declare-const var55!6 var2796)
(declare-const var189!4 String)
(declare-const var785!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3298!4 var961!2 var2343!2 var785!2 var2141!4 var55!6 var189!4 var785!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3298!5 var3590)
(declare-const var961!3 var1691)
(declare-const var2343!3 ClassObject)
(declare-const var785!3 Int)
(declare-const var2141!5 var1101)
(declare-const var55!7 var2796)
(declare-const var189!5 String)
(declare-const var785!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3298!5 var961!3 "writeArrayMapping" var2343!3 var785!4 var2141!5 var55!7 var189!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3298!6 var3590)
(declare-const var961!4 var1691)
(declare-const var1533 String)
(declare-const var2343!4 ClassObject)
(declare-const var785!5 Int)
(declare-const var2141!6 var1101)
(declare-const var55!8 var2796)
(declare-const var189!6 String)
(assert true)
(define-const var1437 (Array Int Int) (toByteArray/1561254549 var55!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var17 var3895 (classLoader/1229018461 var3298!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var113 Int (getLength-Arr-Int-1 var1437)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3004 ClassObject (defineClassPublic/-885393557 var17 var334 var1437 0 var113)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1032 var427) ; Statement: $r35 := @caughtexception 
(assert (not (= var1032 null-var427)))
(define-const var462 var1972 var1972-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1772 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1772)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1772!1 String)
(assert (= var1772!1 ""))
(assert true)
(define-const var1179 String (append/672562846 var1772!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1772!2 String)
(assert (= var1772!2 (str.++ var1772!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var326 String (append/-1031950772 var1179 (cast-from-ClassObject-to-var3652 var2343!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1179!1 String)
(assert (str.prefixof var1179 var1179!1))
(assert true)
(define-const var889 String (toString/-2075883882 var326)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var462 var889 var1032)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var462!1 var1972)
(declare-const var889!1 String)
(declare-const var1032!1 var427)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2796-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1101_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1972-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3652=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3590=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3298=r15, var2343=r7, var1691=com.alibaba.fastjson2.writer.ObjectWriterProvider, var961=r16, var1372=com.alibaba.fastjson2.codec.BeanInfo, var1614=r21, var1101=java.util.List, var2141=r5, var785=l3, var2796=com.alibaba.fastjson2.internal.asm.ClassWriter, var55=$r49, var3092=java.util.function.Function, var820=null, var2040=null_type, var283=$r50, var3845=$r3, var2301=java.util.concurrent.atomic.AtomicLong, var925=$r2, var1035=$l0, var1340=$r4, var2513=$r6, var2047=$i1, var1083=$r12, var1262=$r41, var443=$r13, var3961=$r33, var2054=$r14, var2174=java.lang.Package, var3=$r34, var189=r45, var334=r44, var2148=$i2, var265=com.alibaba.fastjson2.internal.asm.ASMUtils, var652=r46, var3259=$r47, var1222=52, var2328=49, var1675=com.alibaba.fastjson2.JSONWriter$Feature, var736=$r48, var2548=$l14, var1109=$l15, var1418=$b16, var1533="writeArrayMapping", var1437=$r27, var3895=com.alibaba.fastjson2.util.DynamicClassLoader, var17=$r17, var113=$i4, var3004=$r28, var427=java.lang.Throwable, var1032=$r35, var1972=com.alibaba.fastjson2.JSONException, var462=$r55, var1772=$r54, var1179=$r38, var3652=java.lang.Object, var326=$r39, var889=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3590, r15=var3298, r7=var2343, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1691, r16=var961, com.alibaba.fastjson2.codec.BeanInfo=var1372, r21=var1614, java.util.List=var1101, r5=var2141, l3=var785, com.alibaba.fastjson2.internal.asm.ClassWriter=var2796, $r49=var55, java.util.function.Function=var3092, null=var820, null_type=var2040, $r50=var283, $r3=var3845, java.util.concurrent.atomic.AtomicLong=var2301, $r2=var925, $l0=var1035, $r4=var1340, $r6=var2513, $i1=var2047, $r12=var1083, $r41=var1262, $r13=var443, $r33=var3961, $r14=var2054, java.lang.Package=var2174, $r34=var3, r45=var189, r44=var334, $i2=var2148, com.alibaba.fastjson2.internal.asm.ASMUtils=var265, r46=var652, $r47=var3259, 52=var1222, 49=var2328, com.alibaba.fastjson2.JSONWriter$Feature=var1675, $r48=var736, $l14=var2548, $l15=var1109, $b16=var1418, "writeArrayMapping"=var1533, $r27=var1437, com.alibaba.fastjson2.util.DynamicClassLoader=var3895, $r17=var17, $i4=var113, $r28=var3004, java.lang.Throwable=var427, $r35=var1032, com.alibaba.fastjson2.JSONException=var1972, $r55=var462, $r54=var1772, $r38=var1179, java.lang.Object=var3652, $r39=var326, $r40=var889}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10