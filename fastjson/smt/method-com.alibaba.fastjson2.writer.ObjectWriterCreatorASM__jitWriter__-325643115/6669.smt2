(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3704 0)
(declare-sort var354 0)
(declare-sort var2109 0)
(declare-sort var3968 0)
(declare-sort var2875 0)
(declare-sort var139 0)
(declare-sort var2460 0)
(declare-sort var3514 0)
(declare-sort var2079 0)
(declare-sort var1415 0)
(declare-sort var2386 0)
(declare-sort var3273 0)
(declare-sort var3622 0)
(declare-sort var1692 0)
(declare-sort var3774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3704!class ClassObject)
(declare-fun var2875-init () var2875)
(declare-fun <init>/1561585841 (var2875 var139) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3514) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3968_size/-959786421 (var3968) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2079)
(declare-fun visit/1245821975 (var2875 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3704 var3968 var2875 String) void)
(declare-fun genMethodInit/736566045 (var3704 var3968 var2875 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3704 var354 ClassObject var3968 var2875 String Int) void)
(declare-fun mask/-2077367092 (var2386) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3704 var354 String ClassObject Int var3968 var2875 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3704 var354 ClassObject Int var3968 var2875 String Int) void)
(declare-fun toByteArray/1561254549 (var2875) (Array Int Int))
(declare-fun classLoader/1229018461 (var3704) var3273)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3273 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1692-init () var1692)
(declare-fun append/-1031950772 (String var3774) String)
(declare-fun cast-from-ClassObject-to-var3774 (ClassObject) var3774)
(declare-fun <init>/-743866570 (var1692 String var3622) void)
(declare-const null-var3704 var3704)
(declare-const null-ClassObject ClassObject)
(declare-const null-var354 var354)
(declare-const null-var2109 var2109)
(declare-const null-var3968 var3968)
(declare-const null-Int Int)
(declare-const null-NullType var2460)
(declare-const null-var139 var139)
(declare-const var3704-seed var3514)
(declare-const null-var2079 var2079)
(declare-const var1415-TYPE_OBJECT_WRITER_3 String)
(declare-const var3704-INTERFACES (Array Int String))
(declare-const var2386-BeanToArray var2386)
(declare-const null-var3622 var3622)
(declare-const var1818 var3704) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1818 null-var3704)))
(declare-const var2450 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2450 null-ClassObject)))
(declare-const var2099 var354) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2099 null-var354)))
(declare-const var991 var2109) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var991 null-var2109)))
(declare-const var3118 var3968) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3118 null-var3968)))
(declare-const var2530 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2530 null-Int)))
(define-const var1619 var2875 var2875-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1619 null-var139)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1619!1 var2875)
(declare-const var2513 var2460)
(define-const var1004 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1004)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1004!1 String)
(assert (= var1004!1 ""))
(assert true)
(define-const var3496 String (append/672562846 var1004!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1004!2 String)
(assert (= var1004!2 (str.++ var1004!1 "OWG_")))
(define-const var2357 var3514 var3704-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3385 Int (incrementAndGet/636047358 var2357)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3768 String (append/-901862667 var3496 var3385)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3496!1 String)
(assert (str.prefixof var3496 var3496!1))
(assert true)
(define-const var1823 String (append/672562846 var3768 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3768!1 String)
(assert (= var3768!1 (str.++ var3768 "_")))
(define-const var3139 Int (var3968_size/-959786421 var3118)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2375 String (append/-1001720160 var1823 var3139)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1823!1 String)
(assert (str.prefixof var1823 var1823!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var2450 null-ClassObject))) ; Cond: r7 != null 
(define-const var631 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var631)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var631!1 String)
(assert (= var631!1 ""))
(assert true)
(define-const var1748 String (append/672562846 var631!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var631!2 String)
(assert (= var631!2 (str.++ var631!1 "_")))
(assert true)
(define-const var2994 String (getSimpleName/-390194377 var2450)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3477 String (append/672562846 var1748 var2994)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1748!1 String)
(assert (= var1748!1 (str.++ var1748 var2994)))
(assert true)
(define-const var2954 String (toString/-2075883882 var3477)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3736 String (append/672562846 var2375 var2954)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2375!1 String)
(assert (= var2375!1 (str.++ var2375 var2954)))
(assert true)
(define-const var3669 String (toString/-2075883882 var3736)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2836 ClassObject var3704!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var52 var2079 (getPackage/-1841711535 var2836)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var52 null-var2079)) ; Cond: $r34 == null 
(define-const var35 String var3669) ; Statement: r45 = $r33 
(define-const var2135 String var3669) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2138 Int (var3968_size/-959786421 var3118)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2138 3) (and (not (= var2138 2)) (and (not (= var2138 1)) true)))) ; Intersect: Cond: $i2 == 3  and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional   
(define-const var3994 String var1415-TYPE_OBJECT_WRITER_3) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1792 (Array Int String) var3704-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1619!1 52 49 var35 var3994 var1792)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1619!2 var2875)
(declare-const var598 Int)
(declare-const var1821 Int)
(declare-const var35!1 String)
(declare-const var3994!1 String)
(declare-const var1792!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1818 var3118 var1619!2 var3994!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1818!1 var3704)
(declare-const var3118!1 var3968)
(declare-const var1619!3 var2875)
(declare-const var3994!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1818!1 var3118!1 var1619!3 var35!1 var3994!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1818!2 var3704)
(declare-const var3118!2 var3968)
(declare-const var1619!4 var2875)
(declare-const var35!2 String)
(declare-const var3994!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1818!2 var2099 var2450 var3118!2 var1619!4 var35!2 var2530)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1818!3 var3704)
(declare-const var2099!1 var354)
(declare-const var2450!1 ClassObject)
(declare-const var3118!3 var3968)
(declare-const var1619!5 var2875)
(declare-const var35!3 String)
(declare-const var2530!1 Int)
(define-const var2811 var2386 var2386-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2226 Int (mask/-2077367092 var2811)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2494 Int (bv2nat (bvand ((_ int2bv 64) var2530!1) ((_ int2bv 64) var2226)))) ; Statement: $l15 = l3 & $l14 
(define-const var887 Int (ite (> var2494 0) 1 (ite (< var2494 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var887 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1818!3 var2099!1 "write" var2450!1 var2530!1 var3118!3 var1619!5 var35!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var1818!4 var3704)
(declare-const var2099!2 var354)
(declare-const var2894 String)
(declare-const var2450!2 ClassObject)
(declare-const var2530!2 Int)
(declare-const var3118!4 var3968)
(declare-const var1619!6 var2875)
(declare-const var35!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1818!4 var2099!2 var2450!2 var2530!2 var3118!4 var1619!6 var35!4 var2530!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1818!5 var3704)
(declare-const var2099!3 var354)
(declare-const var2450!3 ClassObject)
(declare-const var2530!3 Int)
(declare-const var3118!5 var3968)
(declare-const var1619!7 var2875)
(declare-const var35!5 String)
(declare-const var2530!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1818!5 var2099!3 "writeArrayMapping" var2450!3 var2530!4 var3118!5 var1619!7 var35!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1818!6 var3704)
(declare-const var2099!4 var354)
(declare-const var3863 String)
(declare-const var2450!4 ClassObject)
(declare-const var2530!5 Int)
(declare-const var3118!6 var3968)
(declare-const var1619!8 var2875)
(declare-const var35!6 String)
(assert true)
(define-const var2123 (Array Int Int) (toByteArray/1561254549 var1619!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3114 var3273 (classLoader/1229018461 var1818!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2004 Int (getLength-Arr-Int-1 var2123)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3633 ClassObject (defineClassPublic/-885393557 var3114 var2135 var2123 0 var2004)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2937 var3622) ; Statement: $r35 := @caughtexception 
(assert (not (= var2937 null-var3622)))
(define-const var1912 var1692 var1692-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3892 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3892)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3892!1 String)
(assert (= var3892!1 ""))
(assert true)
(define-const var1500 String (append/672562846 var3892!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3892!2 String)
(assert (= var3892!2 (str.++ var3892!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2819 String (append/-1031950772 var1500 (cast-from-ClassObject-to-var3774 var2450!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1500!1 String)
(assert (str.prefixof var1500 var1500!1))
(assert true)
(define-const var178 String (toString/-2075883882 var2819)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1912 var178 var2937)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1912!1 var1692)
(declare-const var178!1 String)
(declare-const var2937!1 var3622)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2875-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3968_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1692-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3774=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3704=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1818=r15, var2450=r7, var354=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2099=r16, var2109=com.alibaba.fastjson2.codec.BeanInfo, var991=r21, var3968=java.util.List, var3118=r5, var2530=l3, var2875=com.alibaba.fastjson2.internal.asm.ClassWriter, var1619=$r49, var139=java.util.function.Function, var2513=null, var2460=null_type, var1004=$r50, var3496=$r3, var3514=java.util.concurrent.atomic.AtomicLong, var2357=$r2, var3385=$l0, var3768=$r4, var1823=$r6, var3139=$i1, var2375=$r12, var631=$r51, var1748=$r10, var2994=$r9, var3477=$r11, var2954=$r41, var3736=$r13, var3669=$r33, var2836=$r14, var2079=java.lang.Package, var52=$r34, var35=r45, var2135=r44, var2138=$i2, var1415=com.alibaba.fastjson2.internal.asm.ASMUtils, var3994=r46, var1792=$r47, var598=52, var1821=49, var2386=com.alibaba.fastjson2.JSONWriter$Feature, var2811=$r48, var2226=$l14, var2494=$l15, var887=$b16, var2894="write", var3863="writeArrayMapping", var2123=$r27, var3273=com.alibaba.fastjson2.util.DynamicClassLoader, var3114=$r17, var2004=$i4, var3633=$r28, var3622=java.lang.Throwable, var2937=$r35, var1692=com.alibaba.fastjson2.JSONException, var1912=$r55, var3892=$r54, var1500=$r38, var3774=java.lang.Object, var2819=$r39, var178=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3704, r15=var1818, r7=var2450, com.alibaba.fastjson2.writer.ObjectWriterProvider=var354, r16=var2099, com.alibaba.fastjson2.codec.BeanInfo=var2109, r21=var991, java.util.List=var3968, r5=var3118, l3=var2530, com.alibaba.fastjson2.internal.asm.ClassWriter=var2875, $r49=var1619, java.util.function.Function=var139, null=var2513, null_type=var2460, $r50=var1004, $r3=var3496, java.util.concurrent.atomic.AtomicLong=var3514, $r2=var2357, $l0=var3385, $r4=var3768, $r6=var1823, $i1=var3139, $r12=var2375, $r51=var631, $r10=var1748, $r9=var2994, $r11=var3477, $r41=var2954, $r13=var3736, $r33=var3669, $r14=var2836, java.lang.Package=var2079, $r34=var52, r45=var35, r44=var2135, $i2=var2138, com.alibaba.fastjson2.internal.asm.ASMUtils=var1415, r46=var3994, $r47=var1792, 52=var598, 49=var1821, com.alibaba.fastjson2.JSONWriter$Feature=var2386, $r48=var2811, $l14=var2226, $l15=var2494, $b16=var887, "write"=var2894, "writeArrayMapping"=var3863, $r27=var2123, com.alibaba.fastjson2.util.DynamicClassLoader=var3273, $r17=var3114, $i4=var2004, $r28=var3633, java.lang.Throwable=var3622, $r35=var2937, com.alibaba.fastjson2.JSONException=var1692, $r55=var1912, $r54=var3892, $r38=var1500, java.lang.Object=var3774, $r39=var2819, $r40=var178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10