(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var1385 0)
(declare-sort var1852 0)
(declare-sort var825 0)
(declare-sort var1813 0)
(declare-sort var396 0)
(declare-sort var2008 0)
(declare-sort var2025 0)
(declare-sort var3979 0)
(declare-sort var3900 0)
(declare-sort var2692 0)
(declare-sort var1985 0)
(declare-sort var390 0)
(declare-sort var1895 0)
(declare-sort var2940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2357!class ClassObject)
(declare-fun var1813-init () var1813)
(declare-fun <init>/1561585841 (var1813 var396) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2025) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var825_size/-959786421 (var825) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3979)
(declare-fun visit/1245821975 (var1813 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2357 var825 var1813 String) void)
(declare-fun genMethodInit/736566045 (var2357 var825 var1813 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2357 var1385 ClassObject var825 var1813 String Int) void)
(declare-fun mask/-2077367092 (var2692) Int)
(declare-fun genMethodWrite/551741206 (var2357 var1385 ClassObject var825 var1813 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2357 var1385 ClassObject Int var825 var1813 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2357 var1385 String ClassObject Int var825 var1813 String) void)
(declare-fun toByteArray/1561254549 (var1813) (Array Int Int))
(declare-fun classLoader/1229018461 (var2357) var1985)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1985 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1895-init () var1895)
(declare-fun append/-1031950772 (String var2940) String)
(declare-fun cast-from-ClassObject-to-var2940 (ClassObject) var2940)
(declare-fun <init>/-743866570 (var1895 String var390) void)
(declare-const null-var2357 var2357)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1385 var1385)
(declare-const null-var1852 var1852)
(declare-const null-var825 var825)
(declare-const null-Int Int)
(declare-const null-NullType var2008)
(declare-const null-var396 var396)
(declare-const var2357-seed var2025)
(declare-const null-var3979 var3979)
(declare-const var3900-TYPE_OBJECT_WRITER_2 String)
(declare-const var2357-INTERFACES (Array Int String))
(declare-const var2692-BeanToArray var2692)
(declare-const null-var390 var390)
(declare-const var3097 var2357) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3097 null-var2357)))
(declare-const var1877 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1877 null-ClassObject)))
(declare-const var3732 var1385) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3732 null-var1385)))
(declare-const var2621 var1852) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2621 null-var1852)))
(declare-const var1655 var825) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1655 null-var825)))
(declare-const var2060 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2060 null-Int)))
(define-const var2446 var1813 var1813-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2446 null-var396)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2446!1 var1813)
(declare-const var2004 var2008)
(define-const var3812 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3812)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3812!1 String)
(assert (= var3812!1 ""))
(assert true)
(define-const var1926 String (append/672562846 var3812!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3812!2 String)
(assert (= var3812!2 (str.++ var3812!1 "OWG_")))
(define-const var3297 var2025 var2357-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2339 Int (incrementAndGet/636047358 var3297)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1778 String (append/-901862667 var1926 var2339)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1926!1 String)
(assert (str.prefixof var1926 var1926!1))
(assert true)
(define-const var1185 String (append/672562846 var1778 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1778!1 String)
(assert (= var1778!1 (str.++ var1778 "_")))
(define-const var2710 Int (var825_size/-959786421 var1655)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1215 String (append/-1001720160 var1185 var2710)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1185!1 String)
(assert (str.prefixof var1185 var1185!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var1877 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2476 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2450 String (append/672562846 var1215 var2476)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1215!1 String)
(assert (= var1215!1 (str.++ var1215 var2476)))
(assert true)
(define-const var3020 String (toString/-2075883882 var2450)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var66 ClassObject var2357!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1152 var3979 (getPackage/-1841711535 var66)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1152 null-var3979)) ; Cond: $r34 == null 
(define-const var3552 String var3020) ; Statement: r45 = $r33 
(define-const var2298 String var3020) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3041 Int (var825_size/-959786421 var1655)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3041 2) (and (not (= var3041 1)) true))) ; Intersect: Cond: $i2 == 2  and Intersect: Negate: Cond: $i2 == 1   and Non Conditional  
(define-const var2058 String var3900-TYPE_OBJECT_WRITER_2) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3414 (Array Int String) var2357-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2446!1 52 49 var3552 var2058 var3414)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2446!2 var1813)
(declare-const var923 Int)
(declare-const var3481 Int)
(declare-const var3552!1 String)
(declare-const var2058!1 String)
(declare-const var3414!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3097 var1655 var2446!2 var2058!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3097!1 var2357)
(declare-const var1655!1 var825)
(declare-const var2446!3 var1813)
(declare-const var2058!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3097!1 var1655!1 var2446!3 var3552!1 var2058!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3097!2 var2357)
(declare-const var1655!2 var825)
(declare-const var2446!4 var1813)
(declare-const var3552!2 String)
(declare-const var2058!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3097!2 var3732 var1877 var1655!2 var2446!4 var3552!2 var2060)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3097!3 var2357)
(declare-const var3732!1 var1385)
(declare-const var1877!1 ClassObject)
(declare-const var1655!3 var825)
(declare-const var2446!5 var1813)
(declare-const var3552!3 String)
(declare-const var2060!1 Int)
(define-const var2135 var2692 var2692-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var635 Int (mask/-2077367092 var2135)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2875 Int (bv2nat (bvand ((_ int2bv 64) var2060!1) ((_ int2bv 64) var635)))) ; Statement: $l15 = l3 & $l14 
(define-const var3989 Int (ite (> var2875 0) 1 (ite (< var2875 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3989 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3097!3 var3732!1 var1877!1 var1655!3 var2446!5 var3552!3 var2060!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3097!4 var2357)
(declare-const var3732!2 var1385)
(declare-const var1877!2 ClassObject)
(declare-const var1655!4 var825)
(declare-const var2446!6 var1813)
(declare-const var3552!4 String)
(declare-const var2060!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3097!4 var3732!2 var1877!2 var2060!2 var1655!4 var2446!6 var3552!4 var2060!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3097!5 var2357)
(declare-const var3732!3 var1385)
(declare-const var1877!3 ClassObject)
(declare-const var2060!3 Int)
(declare-const var1655!5 var825)
(declare-const var2446!7 var1813)
(declare-const var3552!5 String)
(declare-const var2060!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3097!5 var3732!3 "writeArrayMapping" var1877!3 var2060!4 var1655!5 var2446!7 var3552!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3097!6 var2357)
(declare-const var3732!4 var1385)
(declare-const var1886 String)
(declare-const var1877!4 ClassObject)
(declare-const var2060!5 Int)
(declare-const var1655!6 var825)
(declare-const var2446!8 var1813)
(declare-const var3552!6 String)
(assert true)
(define-const var253 (Array Int Int) (toByteArray/1561254549 var2446!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3403 var1985 (classLoader/1229018461 var3097!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3838 Int (getLength-Arr-Int-1 var253)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3714 ClassObject (defineClassPublic/-885393557 var3403 var2298 var253 0 var3838)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3628 var390) ; Statement: $r35 := @caughtexception 
(assert (not (= var3628 null-var390)))
(define-const var2987 var1895 var1895-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1628 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1628)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1628!1 String)
(assert (= var1628!1 ""))
(assert true)
(define-const var1266 String (append/672562846 var1628!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1628!2 String)
(assert (= var1628!2 (str.++ var1628!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2472 String (append/-1031950772 var1266 (cast-from-ClassObject-to-var2940 var1877!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1266!1 String)
(assert (str.prefixof var1266 var1266!1))
(assert true)
(define-const var3744 String (toString/-2075883882 var2472)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2987 var3744 var3628)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2987!1 var1895)
(declare-const var3744!1 String)
(declare-const var3628!1 var390)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1813-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var825_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1895-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2940=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2357=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3097=r15, var1877=r7, var1385=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3732=r16, var1852=com.alibaba.fastjson2.codec.BeanInfo, var2621=r21, var825=java.util.List, var1655=r5, var2060=l3, var1813=com.alibaba.fastjson2.internal.asm.ClassWriter, var2446=$r49, var396=java.util.function.Function, var2004=null, var2008=null_type, var3812=$r50, var1926=$r3, var2025=java.util.concurrent.atomic.AtomicLong, var3297=$r2, var2339=$l0, var1778=$r4, var1185=$r6, var2710=$i1, var1215=$r12, var2476=$r41, var2450=$r13, var3020=$r33, var66=$r14, var3979=java.lang.Package, var1152=$r34, var3552=r45, var2298=r44, var3041=$i2, var3900=com.alibaba.fastjson2.internal.asm.ASMUtils, var2058=r46, var3414=$r47, var923=52, var3481=49, var2692=com.alibaba.fastjson2.JSONWriter$Feature, var2135=$r48, var635=$l14, var2875=$l15, var3989=$b16, var1886="writeArrayMapping", var253=$r27, var1985=com.alibaba.fastjson2.util.DynamicClassLoader, var3403=$r17, var3838=$i4, var3714=$r28, var390=java.lang.Throwable, var3628=$r35, var1895=com.alibaba.fastjson2.JSONException, var2987=$r55, var1628=$r54, var1266=$r38, var2940=java.lang.Object, var2472=$r39, var3744=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2357, r15=var3097, r7=var1877, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1385, r16=var3732, com.alibaba.fastjson2.codec.BeanInfo=var1852, r21=var2621, java.util.List=var825, r5=var1655, l3=var2060, com.alibaba.fastjson2.internal.asm.ClassWriter=var1813, $r49=var2446, java.util.function.Function=var396, null=var2004, null_type=var2008, $r50=var3812, $r3=var1926, java.util.concurrent.atomic.AtomicLong=var2025, $r2=var3297, $l0=var2339, $r4=var1778, $r6=var1185, $i1=var2710, $r12=var1215, $r41=var2476, $r13=var2450, $r33=var3020, $r14=var66, java.lang.Package=var3979, $r34=var1152, r45=var3552, r44=var2298, $i2=var3041, com.alibaba.fastjson2.internal.asm.ASMUtils=var3900, r46=var2058, $r47=var3414, 52=var923, 49=var3481, com.alibaba.fastjson2.JSONWriter$Feature=var2692, $r48=var2135, $l14=var635, $l15=var2875, $b16=var3989, "writeArrayMapping"=var1886, $r27=var253, com.alibaba.fastjson2.util.DynamicClassLoader=var1985, $r17=var3403, $i4=var3838, $r28=var3714, java.lang.Throwable=var390, $r35=var3628, com.alibaba.fastjson2.JSONException=var1895, $r55=var2987, $r54=var1628, $r38=var1266, java.lang.Object=var2940, $r39=var2472, $r40=var3744}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10