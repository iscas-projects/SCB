(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var115 0)
(declare-sort var2185 0)
(declare-sort var151 0)
(declare-sort var3489 0)
(declare-sort var470 0)
(declare-sort var961 0)
(declare-sort var2684 0)
(declare-sort var594 0)
(declare-sort var950 0)
(declare-sort var1686 0)
(declare-sort var233 0)
(declare-sort var3128 0)
(declare-sort var2997 0)
(declare-sort var2742 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var115!class ClassObject)
(declare-fun var470-init () var470)
(declare-fun <init>/1561585841 (var470 var961) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var594) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3489_size/-959786421 (var3489) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var950)
(declare-fun visit/1245821975 (var470 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var115 var3489 var470 String) void)
(declare-fun genMethodInit/736566045 (var115 var3489 var470 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var115 var2185 ClassObject var3489 var470 String Int) void)
(declare-fun mask/-2077367092 (var233) Int)
(declare-fun genMethodWrite/551741206 (var115 var2185 ClassObject var3489 var470 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var115 var2185 ClassObject Int var3489 var470 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var115 var2185 String ClassObject Int var3489 var470 String) void)
(declare-fun toByteArray/1561254549 (var470) (Array Int Int))
(declare-fun classLoader/1229018461 (var115) var3128)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3128 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2742-init () var2742)
(declare-fun append/-1031950772 (String var105) String)
(declare-fun cast-from-ClassObject-to-var105 (ClassObject) var105)
(declare-fun <init>/-743866570 (var2742 String var2997) void)
(declare-const null-var115 var115)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2185 var2185)
(declare-const null-var151 var151)
(declare-const null-var3489 var3489)
(declare-const null-Int Int)
(declare-const null-NullType var2684)
(declare-const null-var961 var961)
(declare-const var115-seed var594)
(declare-const null-var950 var950)
(declare-const var1686-TYPE_OBJECT_WRITER_8 String)
(declare-const var115-INTERFACES (Array Int String))
(declare-const var233-BeanToArray var233)
(declare-const null-var2997 var2997)
(declare-const var3074 var115) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3074 null-var115)))
(declare-const var713 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var713 null-ClassObject)))
(declare-const var1700 var2185) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1700 null-var2185)))
(declare-const var1606 var151) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1606 null-var151)))
(declare-const var656 var3489) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var656 null-var3489)))
(declare-const var2597 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2597 null-Int)))
(define-const var740 var470 var470-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var740 null-var961)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var740!1 var470)
(declare-const var2674 var2684)
(define-const var312 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var312)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var312!1 String)
(assert (= var312!1 ""))
(assert true)
(define-const var2640 String (append/672562846 var312!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var312!2 String)
(assert (= var312!2 (str.++ var312!1 "OWG_")))
(define-const var2633 var594 var115-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var425 Int (incrementAndGet/636047358 var2633)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2985 String (append/-901862667 var2640 var425)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2640!1 String)
(assert (str.prefixof var2640 var2640!1))
(assert true)
(define-const var3756 String (append/672562846 var2985 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2985!1 String)
(assert (= var2985!1 (str.++ var2985 "_")))
(define-const var1754 Int (var3489_size/-959786421 var656)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3071 String (append/-1001720160 var3756 var1754)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3756!1 String)
(assert (str.prefixof var3756 var3756!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var713 null-ClassObject))) ; Cond: r7 != null 
(define-const var2563 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2563)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2563!1 String)
(assert (= var2563!1 ""))
(assert true)
(define-const var2119 String (append/672562846 var2563!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2563!2 String)
(assert (= var2563!2 (str.++ var2563!1 "_")))
(assert true)
(define-const var3466 String (getSimpleName/-390194377 var713)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2066 String (append/672562846 var2119 var3466)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2119!1 String)
(assert (= var2119!1 (str.++ var2119 var3466)))
(assert true)
(define-const var1858 String (toString/-2075883882 var2066)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var589 String (append/672562846 var3071 var1858)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3071!1 String)
(assert (= var3071!1 (str.++ var3071 var1858)))
(assert true)
(define-const var1657 String (toString/-2075883882 var589)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var167 ClassObject var115!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2796 var950 (getPackage/-1841711535 var167)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2796 null-var950)) ; Cond: $r34 == null 
(define-const var741 String var1657) ; Statement: r45 = $r33 
(define-const var2498 String var1657) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var696 Int (var3489_size/-959786421 var656)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var696 8) (and (not (= var696 7)) (and (not (= var696 6)) (and (not (= var696 5)) (and (not (= var696 4)) (and (not (= var696 3)) (and (not (= var696 2)) (and (not (= var696 1)) true))))))))) ; Intersect: Cond: $i2 == 8  and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional        
(define-const var1724 String var1686-TYPE_OBJECT_WRITER_8) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2509 (Array Int String) var115-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var740!1 52 49 var741 var1724 var2509)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var740!2 var470)
(declare-const var3316 Int)
(declare-const var3162 Int)
(declare-const var741!1 String)
(declare-const var1724!1 String)
(declare-const var2509!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3074 var656 var740!2 var1724!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3074!1 var115)
(declare-const var656!1 var3489)
(declare-const var740!3 var470)
(declare-const var1724!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3074!1 var656!1 var740!3 var741!1 var1724!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3074!2 var115)
(declare-const var656!2 var3489)
(declare-const var740!4 var470)
(declare-const var741!2 String)
(declare-const var1724!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3074!2 var1700 var713 var656!2 var740!4 var741!2 var2597)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3074!3 var115)
(declare-const var1700!1 var2185)
(declare-const var713!1 ClassObject)
(declare-const var656!3 var3489)
(declare-const var740!5 var470)
(declare-const var741!3 String)
(declare-const var2597!1 Int)
(define-const var1692 var233 var233-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3638 Int (mask/-2077367092 var1692)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2309 Int (bv2nat (bvand ((_ int2bv 64) var2597!1) ((_ int2bv 64) var3638)))) ; Statement: $l15 = l3 & $l14 
(define-const var417 Int (ite (> var2309 0) 1 (ite (< var2309 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var417 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3074!3 var1700!1 var713!1 var656!3 var740!5 var741!3 var2597!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3074!4 var115)
(declare-const var1700!2 var2185)
(declare-const var713!2 ClassObject)
(declare-const var656!4 var3489)
(declare-const var740!6 var470)
(declare-const var741!4 String)
(declare-const var2597!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3074!4 var1700!2 var713!2 var2597!2 var656!4 var740!6 var741!4 var2597!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3074!5 var115)
(declare-const var1700!3 var2185)
(declare-const var713!3 ClassObject)
(declare-const var2597!3 Int)
(declare-const var656!5 var3489)
(declare-const var740!7 var470)
(declare-const var741!5 String)
(declare-const var2597!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3074!5 var1700!3 "writeArrayMapping" var713!3 var2597!4 var656!5 var740!7 var741!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3074!6 var115)
(declare-const var1700!4 var2185)
(declare-const var2983 String)
(declare-const var713!4 ClassObject)
(declare-const var2597!5 Int)
(declare-const var656!6 var3489)
(declare-const var740!8 var470)
(declare-const var741!6 String)
(assert true)
(define-const var3371 (Array Int Int) (toByteArray/1561254549 var740!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1615 var3128 (classLoader/1229018461 var3074!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1898 Int (getLength-Arr-Int-1 var3371)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1827 ClassObject (defineClassPublic/-885393557 var1615 var2498 var3371 0 var1898)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1327 var2997) ; Statement: $r35 := @caughtexception 
(assert (not (= var1327 null-var2997)))
(define-const var1562 var2742 var2742-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2946 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2946)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2946!1 String)
(assert (= var2946!1 ""))
(assert true)
(define-const var616 String (append/672562846 var2946!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2946!2 String)
(assert (= var2946!2 (str.++ var2946!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var922 String (append/-1031950772 var616 (cast-from-ClassObject-to-var105 var713!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var616!1 String)
(assert (str.prefixof var616 var616!1))
(assert true)
(define-const var261 String (toString/-2075883882 var922)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1562 var261 var1327)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1562!1 var2742)
(declare-const var261!1 String)
(declare-const var1327!1 var2997)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var470-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3489_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2742-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var105=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var115=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3074=r15, var713=r7, var2185=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1700=r16, var151=com.alibaba.fastjson2.codec.BeanInfo, var1606=r21, var3489=java.util.List, var656=r5, var2597=l3, var470=com.alibaba.fastjson2.internal.asm.ClassWriter, var740=$r49, var961=java.util.function.Function, var2674=null, var2684=null_type, var312=$r50, var2640=$r3, var594=java.util.concurrent.atomic.AtomicLong, var2633=$r2, var425=$l0, var2985=$r4, var3756=$r6, var1754=$i1, var3071=$r12, var2563=$r51, var2119=$r10, var3466=$r9, var2066=$r11, var1858=$r41, var589=$r13, var1657=$r33, var167=$r14, var950=java.lang.Package, var2796=$r34, var741=r45, var2498=r44, var696=$i2, var1686=com.alibaba.fastjson2.internal.asm.ASMUtils, var1724=r46, var2509=$r47, var3316=52, var3162=49, var233=com.alibaba.fastjson2.JSONWriter$Feature, var1692=$r48, var3638=$l14, var2309=$l15, var417=$b16, var2983="writeArrayMapping", var3371=$r27, var3128=com.alibaba.fastjson2.util.DynamicClassLoader, var1615=$r17, var1898=$i4, var1827=$r28, var2997=java.lang.Throwable, var1327=$r35, var2742=com.alibaba.fastjson2.JSONException, var1562=$r55, var2946=$r54, var616=$r38, var105=java.lang.Object, var922=$r39, var261=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var115, r15=var3074, r7=var713, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2185, r16=var1700, com.alibaba.fastjson2.codec.BeanInfo=var151, r21=var1606, java.util.List=var3489, r5=var656, l3=var2597, com.alibaba.fastjson2.internal.asm.ClassWriter=var470, $r49=var740, java.util.function.Function=var961, null=var2674, null_type=var2684, $r50=var312, $r3=var2640, java.util.concurrent.atomic.AtomicLong=var594, $r2=var2633, $l0=var425, $r4=var2985, $r6=var3756, $i1=var1754, $r12=var3071, $r51=var2563, $r10=var2119, $r9=var3466, $r11=var2066, $r41=var1858, $r13=var589, $r33=var1657, $r14=var167, java.lang.Package=var950, $r34=var2796, r45=var741, r44=var2498, $i2=var696, com.alibaba.fastjson2.internal.asm.ASMUtils=var1686, r46=var1724, $r47=var2509, 52=var3316, 49=var3162, com.alibaba.fastjson2.JSONWriter$Feature=var233, $r48=var1692, $l14=var3638, $l15=var2309, $b16=var417, "writeArrayMapping"=var2983, $r27=var3371, com.alibaba.fastjson2.util.DynamicClassLoader=var3128, $r17=var1615, $i4=var1898, $r28=var1827, java.lang.Throwable=var2997, $r35=var1327, com.alibaba.fastjson2.JSONException=var2742, $r55=var1562, $r54=var2946, $r38=var616, java.lang.Object=var105, $r39=var922, $r40=var261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10