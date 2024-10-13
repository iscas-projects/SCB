(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1978 0)
(declare-sort var273 0)
(declare-sort var1369 0)
(declare-sort var1408 0)
(declare-sort var3588 0)
(declare-sort var2481 0)
(declare-sort var2633 0)
(declare-sort var753 0)
(declare-sort var1719 0)
(declare-sort var370 0)
(declare-sort var1159 0)
(declare-sort var3672 0)
(declare-sort var1629 0)
(declare-sort var320 0)
(declare-sort var893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1978!class ClassObject)
(declare-fun var3588-init () var3588)
(declare-fun <init>/1561585841 (var3588 var2481) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var753) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1408_size/-959786421 (var1408) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1719)
(declare-fun visit/1245821975 (var3588 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1978 var1408 var3588 String) void)
(declare-fun genMethodInit/736566045 (var1978 var1408 var3588 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1978 var273 ClassObject var1408 var3588 String Int) void)
(declare-fun mask/-2077367092 (var1159) Int)
(declare-fun genMethodWrite/551741206 (var1978 var273 ClassObject var1408 var3588 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1978 var273 ClassObject Int var1408 var3588 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1978 var273 String ClassObject Int var1408 var3588 String) void)
(declare-fun toByteArray/1561254549 (var3588) (Array Int Int))
(declare-fun classLoader/1229018461 (var1978) var3672)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3672 String (Array Int Int) Int Int) ClassObject)
(declare-fun var320-init () var320)
(declare-fun append/-1031950772 (String var893) String)
(declare-fun cast-from-ClassObject-to-var893 (ClassObject) var893)
(declare-fun <init>/-743866570 (var320 String var1629) void)
(declare-const null-var1978 var1978)
(declare-const null-ClassObject ClassObject)
(declare-const null-var273 var273)
(declare-const null-var1369 var1369)
(declare-const null-var1408 var1408)
(declare-const null-Int Int)
(declare-const null-NullType var2633)
(declare-const null-var2481 var2481)
(declare-const var1978-seed var753)
(declare-const null-var1719 var1719)
(declare-const var370-TYPE_OBJECT_WRITER_2 String)
(declare-const var1978-INTERFACES (Array Int String))
(declare-const var1159-BeanToArray var1159)
(declare-const null-var1629 var1629)
(declare-const var200 var1978) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var200 null-var1978)))
(declare-const var491 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var491 null-ClassObject)))
(declare-const var3987 var273) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3987 null-var273)))
(declare-const var2884 var1369) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2884 null-var1369)))
(declare-const var2571 var1408) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2571 null-var1408)))
(declare-const var1733 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1733 null-Int)))
(define-const var385 var3588 var3588-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var385 null-var2481)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var385!1 var3588)
(declare-const var304 var2633)
(define-const var3412 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3412)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3412!1 String)
(assert (= var3412!1 ""))
(assert true)
(define-const var1649 String (append/672562846 var3412!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3412!2 String)
(assert (= var3412!2 (str.++ var3412!1 "OWG_")))
(define-const var2645 var753 var1978-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var557 Int (incrementAndGet/636047358 var2645)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3505 String (append/-901862667 var1649 var557)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1649!1 String)
(assert (str.prefixof var1649 var1649!1))
(assert true)
(define-const var2346 String (append/672562846 var3505 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3505!1 String)
(assert (= var3505!1 (str.++ var3505 "_")))
(define-const var3470 Int (var1408_size/-959786421 var2571)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2286 String (append/-1001720160 var2346 var3470)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2346!1 String)
(assert (str.prefixof var2346 var2346!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var491 null-ClassObject))) ; Cond: r7 != null 
(define-const var153 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var153)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var153!1 String)
(assert (= var153!1 ""))
(assert true)
(define-const var396 String (append/672562846 var153!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var153!2 String)
(assert (= var153!2 (str.++ var153!1 "_")))
(assert true)
(define-const var2055 String (getSimpleName/-390194377 var491)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2466 String (append/672562846 var396 var2055)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 var2055)))
(assert true)
(define-const var1084 String (toString/-2075883882 var2466)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3457 String (append/672562846 var2286 var1084)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2286!1 String)
(assert (= var2286!1 (str.++ var2286 var1084)))
(assert true)
(define-const var1113 String (toString/-2075883882 var3457)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2078 ClassObject var1978!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2383 var1719 (getPackage/-1841711535 var2078)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2383 null-var1719)) ; Cond: $r34 == null 
(define-const var3424 String var1113) ; Statement: r45 = $r33 
(define-const var1968 String var1113) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3336 Int (var1408_size/-959786421 var2571)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3336 2) (and (not (= var3336 1)) true))) ; Intersect: Cond: $i2 == 2  and Intersect: Negate: Cond: $i2 == 1   and Non Conditional  
(define-const var473 String var370-TYPE_OBJECT_WRITER_2) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1938 (Array Int String) var1978-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var385!1 52 49 var3424 var473 var1938)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var385!2 var3588)
(declare-const var2861 Int)
(declare-const var3678 Int)
(declare-const var3424!1 String)
(declare-const var473!1 String)
(declare-const var1938!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var200 var2571 var385!2 var473!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var200!1 var1978)
(declare-const var2571!1 var1408)
(declare-const var385!3 var3588)
(declare-const var473!2 String)
(assert true)
;(assert (genMethodInit/736566045 var200!1 var2571!1 var385!3 var3424!1 var473!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var200!2 var1978)
(declare-const var2571!2 var1408)
(declare-const var385!4 var3588)
(declare-const var3424!2 String)
(declare-const var473!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var200!2 var3987 var491 var2571!2 var385!4 var3424!2 var1733)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var200!3 var1978)
(declare-const var3987!1 var273)
(declare-const var491!1 ClassObject)
(declare-const var2571!3 var1408)
(declare-const var385!5 var3588)
(declare-const var3424!3 String)
(declare-const var1733!1 Int)
(define-const var865 var1159 var1159-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3795 Int (mask/-2077367092 var865)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var548 Int (bv2nat (bvand ((_ int2bv 64) var1733!1) ((_ int2bv 64) var3795)))) ; Statement: $l15 = l3 & $l14 
(define-const var3096 Int (ite (> var548 0) 1 (ite (< var548 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3096 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var200!3 var3987!1 var491!1 var2571!3 var385!5 var3424!3 var1733!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var200!4 var1978)
(declare-const var3987!2 var273)
(declare-const var491!2 ClassObject)
(declare-const var2571!4 var1408)
(declare-const var385!6 var3588)
(declare-const var3424!4 String)
(declare-const var1733!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var200!4 var3987!2 var491!2 var1733!2 var2571!4 var385!6 var3424!4 var1733!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var200!5 var1978)
(declare-const var3987!3 var273)
(declare-const var491!3 ClassObject)
(declare-const var1733!3 Int)
(declare-const var2571!5 var1408)
(declare-const var385!7 var3588)
(declare-const var3424!5 String)
(declare-const var1733!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var200!5 var3987!3 "writeArrayMapping" var491!3 var1733!4 var2571!5 var385!7 var3424!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var200!6 var1978)
(declare-const var3987!4 var273)
(declare-const var2543 String)
(declare-const var491!4 ClassObject)
(declare-const var1733!5 Int)
(declare-const var2571!6 var1408)
(declare-const var385!8 var3588)
(declare-const var3424!6 String)
(assert true)
(define-const var1175 (Array Int Int) (toByteArray/1561254549 var385!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var953 var3672 (classLoader/1229018461 var200!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var957 Int (getLength-Arr-Int-1 var1175)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var584 ClassObject (defineClassPublic/-885393557 var953 var1968 var1175 0 var957)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1709 var1629) ; Statement: $r35 := @caughtexception 
(assert (not (= var1709 null-var1629)))
(define-const var2206 var320 var320-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var117 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var117)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var117!1 String)
(assert (= var117!1 ""))
(assert true)
(define-const var3830 String (append/672562846 var117!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var117!2 String)
(assert (= var117!2 (str.++ var117!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2948 String (append/-1031950772 var3830 (cast-from-ClassObject-to-var893 var491!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3830!1 String)
(assert (str.prefixof var3830 var3830!1))
(assert true)
(define-const var2652 String (toString/-2075883882 var2948)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2206 var2652 var1709)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2206!1 var320)
(declare-const var2652!1 String)
(declare-const var1709!1 var1629)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3588-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1408_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var320-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var893=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1978=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var200=r15, var491=r7, var273=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3987=r16, var1369=com.alibaba.fastjson2.codec.BeanInfo, var2884=r21, var1408=java.util.List, var2571=r5, var1733=l3, var3588=com.alibaba.fastjson2.internal.asm.ClassWriter, var385=$r49, var2481=java.util.function.Function, var304=null, var2633=null_type, var3412=$r50, var1649=$r3, var753=java.util.concurrent.atomic.AtomicLong, var2645=$r2, var557=$l0, var3505=$r4, var2346=$r6, var3470=$i1, var2286=$r12, var153=$r51, var396=$r10, var2055=$r9, var2466=$r11, var1084=$r41, var3457=$r13, var1113=$r33, var2078=$r14, var1719=java.lang.Package, var2383=$r34, var3424=r45, var1968=r44, var3336=$i2, var370=com.alibaba.fastjson2.internal.asm.ASMUtils, var473=r46, var1938=$r47, var2861=52, var3678=49, var1159=com.alibaba.fastjson2.JSONWriter$Feature, var865=$r48, var3795=$l14, var548=$l15, var3096=$b16, var2543="writeArrayMapping", var1175=$r27, var3672=com.alibaba.fastjson2.util.DynamicClassLoader, var953=$r17, var957=$i4, var584=$r28, var1629=java.lang.Throwable, var1709=$r35, var320=com.alibaba.fastjson2.JSONException, var2206=$r55, var117=$r54, var3830=$r38, var893=java.lang.Object, var2948=$r39, var2652=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1978, r15=var200, r7=var491, com.alibaba.fastjson2.writer.ObjectWriterProvider=var273, r16=var3987, com.alibaba.fastjson2.codec.BeanInfo=var1369, r21=var2884, java.util.List=var1408, r5=var2571, l3=var1733, com.alibaba.fastjson2.internal.asm.ClassWriter=var3588, $r49=var385, java.util.function.Function=var2481, null=var304, null_type=var2633, $r50=var3412, $r3=var1649, java.util.concurrent.atomic.AtomicLong=var753, $r2=var2645, $l0=var557, $r4=var3505, $r6=var2346, $i1=var3470, $r12=var2286, $r51=var153, $r10=var396, $r9=var2055, $r11=var2466, $r41=var1084, $r13=var3457, $r33=var1113, $r14=var2078, java.lang.Package=var1719, $r34=var2383, r45=var3424, r44=var1968, $i2=var3336, com.alibaba.fastjson2.internal.asm.ASMUtils=var370, r46=var473, $r47=var1938, 52=var2861, 49=var3678, com.alibaba.fastjson2.JSONWriter$Feature=var1159, $r48=var865, $l14=var3795, $l15=var548, $b16=var3096, "writeArrayMapping"=var2543, $r27=var1175, com.alibaba.fastjson2.util.DynamicClassLoader=var3672, $r17=var953, $i4=var957, $r28=var584, java.lang.Throwable=var1629, $r35=var1709, com.alibaba.fastjson2.JSONException=var320, $r55=var2206, $r54=var117, $r38=var3830, java.lang.Object=var893, $r39=var2948, $r40=var2652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10