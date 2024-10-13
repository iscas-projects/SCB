(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var2707 0)
(declare-sort var1164 0)
(declare-sort var1759 0)
(declare-sort var718 0)
(declare-sort var1817 0)
(declare-sort var1757 0)
(declare-sort var814 0)
(declare-sort var2221 0)
(declare-sort var20 0)
(declare-sort var1005 0)
(declare-sort var3186 0)
(declare-sort var1495 0)
(declare-sort var3899 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1608!class ClassObject)
(declare-fun var718-init () var718)
(declare-fun <init>/1561585841 (var718 var1817) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var814) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1759_size/-959786421 (var1759) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2221)
(declare-fun visit/1245821975 (var718 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1608 var1759 var718 String) void)
(declare-fun genMethodInit/736566045 (var1608 var1759 var718 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1608 var2707 ClassObject var1759 var718 String Int) void)
(declare-fun mask/-2077367092 (var1005) Int)
(declare-fun genMethodWrite/551741206 (var1608 var2707 ClassObject var1759 var718 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1608 var2707 ClassObject Int var1759 var718 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1608 var2707 String ClassObject Int var1759 var718 String) void)
(declare-fun toByteArray/1561254549 (var718) (Array Int Int))
(declare-fun classLoader/1229018461 (var1608) var3186)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3186 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3899-init () var3899)
(declare-fun append/-1031950772 (String var2769) String)
(declare-fun cast-from-ClassObject-to-var2769 (ClassObject) var2769)
(declare-fun <init>/-743866570 (var3899 String var1495) void)
(declare-const null-var1608 var1608)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2707 var2707)
(declare-const null-var1164 var1164)
(declare-const null-var1759 var1759)
(declare-const null-Int Int)
(declare-const null-NullType var1757)
(declare-const null-var1817 var1817)
(declare-const var1608-seed var814)
(declare-const null-var2221 var2221)
(declare-const var20-TYPE_OBJECT_WRITER_5 String)
(declare-const var1608-INTERFACES (Array Int String))
(declare-const var1005-BeanToArray var1005)
(declare-const null-var1495 var1495)
(declare-const var3104 var1608) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3104 null-var1608)))
(declare-const var681 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var681 null-ClassObject)))
(declare-const var2438 var2707) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2438 null-var2707)))
(declare-const var3623 var1164) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3623 null-var1164)))
(declare-const var1291 var1759) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1291 null-var1759)))
(declare-const var1256 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1256 null-Int)))
(define-const var768 var718 var718-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var768 null-var1817)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var768!1 var718)
(declare-const var2530 var1757)
(define-const var96 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var96)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var96!1 String)
(assert (= var96!1 ""))
(assert true)
(define-const var2120 String (append/672562846 var96!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var96!2 String)
(assert (= var96!2 (str.++ var96!1 "OWG_")))
(define-const var322 var814 var1608-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2757 Int (incrementAndGet/636047358 var322)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var701 String (append/-901862667 var2120 var2757)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2120!1 String)
(assert (str.prefixof var2120 var2120!1))
(assert true)
(define-const var2590 String (append/672562846 var701 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var701!1 String)
(assert (= var701!1 (str.++ var701 "_")))
(define-const var696 Int (var1759_size/-959786421 var1291)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2695 String (append/-1001720160 var2590 var696)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2590!1 String)
(assert (str.prefixof var2590 var2590!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var681 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var3979 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3685 String (append/672562846 var2695 var3979)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2695!1 String)
(assert (= var2695!1 (str.++ var2695 var3979)))
(assert true)
(define-const var1009 String (toString/-2075883882 var3685)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var702 ClassObject var1608!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1035 var2221 (getPackage/-1841711535 var702)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1035 null-var2221)) ; Cond: $r34 == null 
(define-const var2070 String var1009) ; Statement: r45 = $r33 
(define-const var440 String var1009) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2868 Int (var1759_size/-959786421 var1291)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2868 5) (and (not (= var2868 4)) (and (not (= var2868 3)) (and (not (= var2868 2)) (and (not (= var2868 1)) true)))))) ; Intersect: Cond: $i2 == 5  and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional     
(define-const var3672 String var20-TYPE_OBJECT_WRITER_5) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2228 (Array Int String) var1608-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var768!1 52 49 var2070 var3672 var2228)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var768!2 var718)
(declare-const var2829 Int)
(declare-const var410 Int)
(declare-const var2070!1 String)
(declare-const var3672!1 String)
(declare-const var2228!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3104 var1291 var768!2 var3672!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3104!1 var1608)
(declare-const var1291!1 var1759)
(declare-const var768!3 var718)
(declare-const var3672!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3104!1 var1291!1 var768!3 var2070!1 var3672!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3104!2 var1608)
(declare-const var1291!2 var1759)
(declare-const var768!4 var718)
(declare-const var2070!2 String)
(declare-const var3672!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3104!2 var2438 var681 var1291!2 var768!4 var2070!2 var1256)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3104!3 var1608)
(declare-const var2438!1 var2707)
(declare-const var681!1 ClassObject)
(declare-const var1291!3 var1759)
(declare-const var768!5 var718)
(declare-const var2070!3 String)
(declare-const var1256!1 Int)
(define-const var361 var1005 var1005-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var624 Int (mask/-2077367092 var361)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2655 Int (bv2nat (bvand ((_ int2bv 64) var1256!1) ((_ int2bv 64) var624)))) ; Statement: $l15 = l3 & $l14 
(define-const var2682 Int (ite (> var2655 0) 1 (ite (< var2655 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var2682 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3104!3 var2438!1 var681!1 var1291!3 var768!5 var2070!3 var1256!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3104!4 var1608)
(declare-const var2438!2 var2707)
(declare-const var681!2 ClassObject)
(declare-const var1291!4 var1759)
(declare-const var768!6 var718)
(declare-const var2070!4 String)
(declare-const var1256!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3104!4 var2438!2 var681!2 var1256!2 var1291!4 var768!6 var2070!4 var1256!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3104!5 var1608)
(declare-const var2438!3 var2707)
(declare-const var681!3 ClassObject)
(declare-const var1256!3 Int)
(declare-const var1291!5 var1759)
(declare-const var768!7 var718)
(declare-const var2070!5 String)
(declare-const var1256!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3104!5 var2438!3 "writeArrayMapping" var681!3 var1256!4 var1291!5 var768!7 var2070!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3104!6 var1608)
(declare-const var2438!4 var2707)
(declare-const var2706 String)
(declare-const var681!4 ClassObject)
(declare-const var1256!5 Int)
(declare-const var1291!6 var1759)
(declare-const var768!8 var718)
(declare-const var2070!6 String)
(assert true)
(define-const var16 (Array Int Int) (toByteArray/1561254549 var768!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1564 var3186 (classLoader/1229018461 var3104!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var286 Int (getLength-Arr-Int-1 var16)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3847 ClassObject (defineClassPublic/-885393557 var1564 var440 var16 0 var286)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3518 var1495) ; Statement: $r35 := @caughtexception 
(assert (not (= var3518 null-var1495)))
(define-const var1001 var3899 var3899-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1172 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1172)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1172!1 String)
(assert (= var1172!1 ""))
(assert true)
(define-const var2534 String (append/672562846 var1172!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1172!2 String)
(assert (= var1172!2 (str.++ var1172!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1673 String (append/-1031950772 var2534 (cast-from-ClassObject-to-var2769 var681!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2534!1 String)
(assert (str.prefixof var2534 var2534!1))
(assert true)
(define-const var2990 String (toString/-2075883882 var1673)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1001 var2990 var3518)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1001!1 var3899)
(declare-const var2990!1 String)
(declare-const var3518!1 var1495)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var718-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1759_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3899-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2769=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1608=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3104=r15, var681=r7, var2707=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2438=r16, var1164=com.alibaba.fastjson2.codec.BeanInfo, var3623=r21, var1759=java.util.List, var1291=r5, var1256=l3, var718=com.alibaba.fastjson2.internal.asm.ClassWriter, var768=$r49, var1817=java.util.function.Function, var2530=null, var1757=null_type, var96=$r50, var2120=$r3, var814=java.util.concurrent.atomic.AtomicLong, var322=$r2, var2757=$l0, var701=$r4, var2590=$r6, var696=$i1, var2695=$r12, var3979=$r41, var3685=$r13, var1009=$r33, var702=$r14, var2221=java.lang.Package, var1035=$r34, var2070=r45, var440=r44, var2868=$i2, var20=com.alibaba.fastjson2.internal.asm.ASMUtils, var3672=r46, var2228=$r47, var2829=52, var410=49, var1005=com.alibaba.fastjson2.JSONWriter$Feature, var361=$r48, var624=$l14, var2655=$l15, var2682=$b16, var2706="writeArrayMapping", var16=$r27, var3186=com.alibaba.fastjson2.util.DynamicClassLoader, var1564=$r17, var286=$i4, var3847=$r28, var1495=java.lang.Throwable, var3518=$r35, var3899=com.alibaba.fastjson2.JSONException, var1001=$r55, var1172=$r54, var2534=$r38, var2769=java.lang.Object, var1673=$r39, var2990=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1608, r15=var3104, r7=var681, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2707, r16=var2438, com.alibaba.fastjson2.codec.BeanInfo=var1164, r21=var3623, java.util.List=var1759, r5=var1291, l3=var1256, com.alibaba.fastjson2.internal.asm.ClassWriter=var718, $r49=var768, java.util.function.Function=var1817, null=var2530, null_type=var1757, $r50=var96, $r3=var2120, java.util.concurrent.atomic.AtomicLong=var814, $r2=var322, $l0=var2757, $r4=var701, $r6=var2590, $i1=var696, $r12=var2695, $r41=var3979, $r13=var3685, $r33=var1009, $r14=var702, java.lang.Package=var2221, $r34=var1035, r45=var2070, r44=var440, $i2=var2868, com.alibaba.fastjson2.internal.asm.ASMUtils=var20, r46=var3672, $r47=var2228, 52=var2829, 49=var410, com.alibaba.fastjson2.JSONWriter$Feature=var1005, $r48=var361, $l14=var624, $l15=var2655, $b16=var2682, "writeArrayMapping"=var2706, $r27=var16, com.alibaba.fastjson2.util.DynamicClassLoader=var3186, $r17=var1564, $i4=var286, $r28=var3847, java.lang.Throwable=var1495, $r35=var3518, com.alibaba.fastjson2.JSONException=var3899, $r55=var1001, $r54=var1172, $r38=var2534, java.lang.Object=var2769, $r39=var1673, $r40=var2990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10