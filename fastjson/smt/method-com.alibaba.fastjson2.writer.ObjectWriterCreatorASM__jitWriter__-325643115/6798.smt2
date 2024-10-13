(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var849 0)
(declare-sort var2224 0)
(declare-sort var2827 0)
(declare-sort var443 0)
(declare-sort var2065 0)
(declare-sort var117 0)
(declare-sort var174 0)
(declare-sort var2693 0)
(declare-sort var1877 0)
(declare-sort var1439 0)
(declare-sort var335 0)
(declare-sort var1462 0)
(declare-sort var1410 0)
(declare-sort var215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var98!class ClassObject)
(declare-fun var443-init () var443)
(declare-fun <init>/1561585841 (var443 var2065) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var174) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2827_size/-959786421 (var2827) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2693)
(declare-fun visit/1245821975 (var443 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var98 var2827 var443 String) void)
(declare-fun genMethodInit/736566045 (var98 var2827 var443 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var98 var849 ClassObject var2827 var443 String Int) void)
(declare-fun mask/-2077367092 (var1439) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var98 var849 String ClassObject Int var2827 var443 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var98 var849 ClassObject Int var2827 var443 String Int) void)
(declare-fun toByteArray/1561254549 (var443) (Array Int Int))
(declare-fun classLoader/1229018461 (var98) var335)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var335 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1410-init () var1410)
(declare-fun append/-1031950772 (String var215) String)
(declare-fun cast-from-ClassObject-to-var215 (ClassObject) var215)
(declare-fun <init>/-743866570 (var1410 String var1462) void)
(declare-const null-var98 var98)
(declare-const null-ClassObject ClassObject)
(declare-const null-var849 var849)
(declare-const null-var2224 var2224)
(declare-const null-var2827 var2827)
(declare-const null-Int Int)
(declare-const null-NullType var117)
(declare-const null-var2065 var2065)
(declare-const var98-seed var174)
(declare-const null-var2693 var2693)
(declare-const var1877-TYPE_OBJECT_WRITER_6 String)
(declare-const var98-INTERFACES (Array Int String))
(declare-const var1439-BeanToArray var1439)
(declare-const null-var1462 var1462)
(declare-const var1415 var98) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1415 null-var98)))
(declare-const var3027 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3027 null-ClassObject)))
(declare-const var1880 var849) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1880 null-var849)))
(declare-const var523 var2224) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var523 null-var2224)))
(declare-const var348 var2827) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var348 null-var2827)))
(declare-const var508 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var508 null-Int)))
(define-const var478 var443 var443-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var478 null-var2065)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var478!1 var443)
(declare-const var3791 var117)
(define-const var1944 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1944)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1944!1 String)
(assert (= var1944!1 ""))
(assert true)
(define-const var2252 String (append/672562846 var1944!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1944!2 String)
(assert (= var1944!2 (str.++ var1944!1 "OWG_")))
(define-const var1668 var174 var98-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3144 Int (incrementAndGet/636047358 var1668)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3306 String (append/-901862667 var2252 var3144)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2252!1 String)
(assert (str.prefixof var2252 var2252!1))
(assert true)
(define-const var1897 String (append/672562846 var3306 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3306!1 String)
(assert (= var3306!1 (str.++ var3306 "_")))
(define-const var924 Int (var2827_size/-959786421 var348)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2898 String (append/-1001720160 var1897 var924)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1897!1 String)
(assert (str.prefixof var1897 var1897!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3027 null-ClassObject))) ; Cond: r7 != null 
(define-const var135 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var135)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var135!1 String)
(assert (= var135!1 ""))
(assert true)
(define-const var113 String (append/672562846 var135!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var135!2 String)
(assert (= var135!2 (str.++ var135!1 "_")))
(assert true)
(define-const var1090 String (getSimpleName/-390194377 var3027)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2017 String (append/672562846 var113 var1090)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var113!1 String)
(assert (= var113!1 (str.++ var113 var1090)))
(assert true)
(define-const var882 String (toString/-2075883882 var2017)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var814 String (append/672562846 var2898 var882)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2898!1 String)
(assert (= var2898!1 (str.++ var2898 var882)))
(assert true)
(define-const var134 String (toString/-2075883882 var814)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1807 ClassObject var98!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2377 var2693 (getPackage/-1841711535 var1807)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2377 null-var2693)) ; Cond: $r34 == null 
(define-const var1059 String var134) ; Statement: r45 = $r33 
(define-const var3508 String var134) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var460 Int (var2827_size/-959786421 var348)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var460 6) (and (not (= var460 5)) (and (not (= var460 4)) (and (not (= var460 3)) (and (not (= var460 2)) (and (not (= var460 1)) true))))))) ; Intersect: Cond: $i2 == 6  and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional      
(define-const var3522 String var1877-TYPE_OBJECT_WRITER_6) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2451 (Array Int String) var98-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var478!1 52 49 var1059 var3522 var2451)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var478!2 var443)
(declare-const var3848 Int)
(declare-const var75 Int)
(declare-const var1059!1 String)
(declare-const var3522!1 String)
(declare-const var2451!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1415 var348 var478!2 var3522!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1415!1 var98)
(declare-const var348!1 var2827)
(declare-const var478!3 var443)
(declare-const var3522!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1415!1 var348!1 var478!3 var1059!1 var3522!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1415!2 var98)
(declare-const var348!2 var2827)
(declare-const var478!4 var443)
(declare-const var1059!2 String)
(declare-const var3522!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1415!2 var1880 var3027 var348!2 var478!4 var1059!2 var508)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1415!3 var98)
(declare-const var1880!1 var849)
(declare-const var3027!1 ClassObject)
(declare-const var348!3 var2827)
(declare-const var478!5 var443)
(declare-const var1059!3 String)
(declare-const var508!1 Int)
(define-const var1335 var1439 var1439-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3960 Int (mask/-2077367092 var1335)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3611 Int (bv2nat (bvand ((_ int2bv 64) var508!1) ((_ int2bv 64) var3960)))) ; Statement: $l15 = l3 & $l14 
(define-const var2797 Int (ite (> var3611 0) 1 (ite (< var3611 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var2797 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1415!3 var1880!1 "write" var3027!1 var508!1 var348!3 var478!5 var1059!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var1415!4 var98)
(declare-const var1880!2 var849)
(declare-const var2123 String)
(declare-const var3027!2 ClassObject)
(declare-const var508!2 Int)
(declare-const var348!4 var2827)
(declare-const var478!6 var443)
(declare-const var1059!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1415!4 var1880!2 var3027!2 var508!2 var348!4 var478!6 var1059!4 var508!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1415!5 var98)
(declare-const var1880!3 var849)
(declare-const var3027!3 ClassObject)
(declare-const var508!3 Int)
(declare-const var348!5 var2827)
(declare-const var478!7 var443)
(declare-const var1059!5 String)
(declare-const var508!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1415!5 var1880!3 "writeArrayMapping" var3027!3 var508!4 var348!5 var478!7 var1059!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1415!6 var98)
(declare-const var1880!4 var849)
(declare-const var3000 String)
(declare-const var3027!4 ClassObject)
(declare-const var508!5 Int)
(declare-const var348!6 var2827)
(declare-const var478!8 var443)
(declare-const var1059!6 String)
(assert true)
(define-const var740 (Array Int Int) (toByteArray/1561254549 var478!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2127 var335 (classLoader/1229018461 var1415!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1714 Int (getLength-Arr-Int-1 var740)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3007 ClassObject (defineClassPublic/-885393557 var2127 var3508 var740 0 var1714)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3271 var1462) ; Statement: $r35 := @caughtexception 
(assert (not (= var3271 null-var1462)))
(define-const var988 var1410 var1410-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2073 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2073)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2073!1 String)
(assert (= var2073!1 ""))
(assert true)
(define-const var1230 String (append/672562846 var2073!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2073!2 String)
(assert (= var2073!2 (str.++ var2073!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2714 String (append/-1031950772 var1230 (cast-from-ClassObject-to-var215 var3027!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1230!1 String)
(assert (str.prefixof var1230 var1230!1))
(assert true)
(define-const var2990 String (toString/-2075883882 var2714)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var988 var2990 var3271)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var988!1 var1410)
(declare-const var2990!1 String)
(declare-const var3271!1 var1462)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var443-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2827_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1410-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var215=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var98=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1415=r15, var3027=r7, var849=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1880=r16, var2224=com.alibaba.fastjson2.codec.BeanInfo, var523=r21, var2827=java.util.List, var348=r5, var508=l3, var443=com.alibaba.fastjson2.internal.asm.ClassWriter, var478=$r49, var2065=java.util.function.Function, var3791=null, var117=null_type, var1944=$r50, var2252=$r3, var174=java.util.concurrent.atomic.AtomicLong, var1668=$r2, var3144=$l0, var3306=$r4, var1897=$r6, var924=$i1, var2898=$r12, var135=$r51, var113=$r10, var1090=$r9, var2017=$r11, var882=$r41, var814=$r13, var134=$r33, var1807=$r14, var2693=java.lang.Package, var2377=$r34, var1059=r45, var3508=r44, var460=$i2, var1877=com.alibaba.fastjson2.internal.asm.ASMUtils, var3522=r46, var2451=$r47, var3848=52, var75=49, var1439=com.alibaba.fastjson2.JSONWriter$Feature, var1335=$r48, var3960=$l14, var3611=$l15, var2797=$b16, var2123="write", var3000="writeArrayMapping", var740=$r27, var335=com.alibaba.fastjson2.util.DynamicClassLoader, var2127=$r17, var1714=$i4, var3007=$r28, var1462=java.lang.Throwable, var3271=$r35, var1410=com.alibaba.fastjson2.JSONException, var988=$r55, var2073=$r54, var1230=$r38, var215=java.lang.Object, var2714=$r39, var2990=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var98, r15=var1415, r7=var3027, com.alibaba.fastjson2.writer.ObjectWriterProvider=var849, r16=var1880, com.alibaba.fastjson2.codec.BeanInfo=var2224, r21=var523, java.util.List=var2827, r5=var348, l3=var508, com.alibaba.fastjson2.internal.asm.ClassWriter=var443, $r49=var478, java.util.function.Function=var2065, null=var3791, null_type=var117, $r50=var1944, $r3=var2252, java.util.concurrent.atomic.AtomicLong=var174, $r2=var1668, $l0=var3144, $r4=var3306, $r6=var1897, $i1=var924, $r12=var2898, $r51=var135, $r10=var113, $r9=var1090, $r11=var2017, $r41=var882, $r13=var814, $r33=var134, $r14=var1807, java.lang.Package=var2693, $r34=var2377, r45=var1059, r44=var3508, $i2=var460, com.alibaba.fastjson2.internal.asm.ASMUtils=var1877, r46=var3522, $r47=var2451, 52=var3848, 49=var75, com.alibaba.fastjson2.JSONWriter$Feature=var1439, $r48=var1335, $l14=var3960, $l15=var3611, $b16=var2797, "write"=var2123, "writeArrayMapping"=var3000, $r27=var740, com.alibaba.fastjson2.util.DynamicClassLoader=var335, $r17=var2127, $i4=var1714, $r28=var3007, java.lang.Throwable=var1462, $r35=var3271, com.alibaba.fastjson2.JSONException=var1410, $r55=var988, $r54=var2073, $r38=var1230, java.lang.Object=var215, $r39=var2714, $r40=var2990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10