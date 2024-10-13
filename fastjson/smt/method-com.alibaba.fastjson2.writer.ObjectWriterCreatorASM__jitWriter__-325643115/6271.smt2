(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3415 0)
(declare-sort var184 0)
(declare-sort var3544 0)
(declare-sort var2554 0)
(declare-sort var968 0)
(declare-sort var2890 0)
(declare-sort var1211 0)
(declare-sort var3545 0)
(declare-sort var3693 0)
(declare-sort var1203 0)
(declare-sort var1563 0)
(declare-sort var2558 0)
(declare-sort var982 0)
(declare-sort var2169 0)
(declare-sort var2797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3415!class ClassObject)
(declare-fun var968-init () var968)
(declare-fun <init>/1561585841 (var968 var2890) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3545) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2554_size/-959786421 (var2554) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3693)
(declare-fun visit/1245821975 (var968 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3415 var2554 var968 String) void)
(declare-fun genMethodInit/736566045 (var3415 var2554 var968 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3415 var184 ClassObject var2554 var968 String Int) void)
(declare-fun mask/-2077367092 (var1563) Int)
(declare-fun genMethodWrite/551741206 (var3415 var184 ClassObject var2554 var968 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3415 var184 ClassObject Int var2554 var968 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3415 var184 String ClassObject Int var2554 var968 String) void)
(declare-fun toByteArray/1561254549 (var968) (Array Int Int))
(declare-fun classLoader/1229018461 (var3415) var2558)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2558 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2169-init () var2169)
(declare-fun append/-1031950772 (String var2797) String)
(declare-fun cast-from-ClassObject-to-var2797 (ClassObject) var2797)
(declare-fun <init>/-743866570 (var2169 String var982) void)
(declare-const null-var3415 var3415)
(declare-const null-ClassObject ClassObject)
(declare-const null-var184 var184)
(declare-const null-var3544 var3544)
(declare-const null-var2554 var2554)
(declare-const null-Int Int)
(declare-const null-NullType var1211)
(declare-const null-var2890 var2890)
(declare-const var3415-seed var3545)
(declare-const null-var3693 var3693)
(declare-const var1203-TYPE_OBJECT_WRITER_7 String)
(declare-const var3415-INTERFACES (Array Int String))
(declare-const var1563-BeanToArray var1563)
(declare-const null-var982 var982)
(declare-const var2974 var3415) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2974 null-var3415)))
(declare-const var931 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var931 null-ClassObject)))
(declare-const var2343 var184) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2343 null-var184)))
(declare-const var305 var3544) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var305 null-var3544)))
(declare-const var3788 var2554) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3788 null-var2554)))
(declare-const var1182 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1182 null-Int)))
(define-const var531 var968 var968-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var531 null-var2890)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var531!1 var968)
(declare-const var2242 var1211)
(define-const var2750 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2750)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2750!1 String)
(assert (= var2750!1 ""))
(assert true)
(define-const var1052 String (append/672562846 var2750!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2750!2 String)
(assert (= var2750!2 (str.++ var2750!1 "OWG_")))
(define-const var3751 var3545 var3415-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3349 Int (incrementAndGet/636047358 var3751)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1767 String (append/-901862667 var1052 var3349)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1052!1 String)
(assert (str.prefixof var1052 var1052!1))
(assert true)
(define-const var3715 String (append/672562846 var1767 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1767!1 String)
(assert (= var1767!1 (str.++ var1767 "_")))
(define-const var1227 Int (var2554_size/-959786421 var3788)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var282 String (append/-1001720160 var3715 var1227)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3715!1 String)
(assert (str.prefixof var3715 var3715!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var931 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var949 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2217 String (append/672562846 var282 var949)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var282!1 String)
(assert (= var282!1 (str.++ var282 var949)))
(assert true)
(define-const var3543 String (toString/-2075883882 var2217)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2622 ClassObject var3415!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3620 var3693 (getPackage/-1841711535 var2622)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3620 null-var3693)) ; Cond: $r34 == null 
(define-const var1508 String var3543) ; Statement: r45 = $r33 
(define-const var3748 String var3543) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1280 Int (var2554_size/-959786421 var3788)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1280 7) (and (not (= var1280 6)) (and (not (= var1280 5)) (and (not (= var1280 4)) (and (not (= var1280 3)) (and (not (= var1280 2)) (and (not (= var1280 1)) true)))))))) ; Intersect: Cond: $i2 == 7  and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional       
(define-const var1784 String var1203-TYPE_OBJECT_WRITER_7) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2775 (Array Int String) var3415-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var531!1 52 49 var1508 var1784 var2775)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var531!2 var968)
(declare-const var2921 Int)
(declare-const var2040 Int)
(declare-const var1508!1 String)
(declare-const var1784!1 String)
(declare-const var2775!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2974 var3788 var531!2 var1784!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2974!1 var3415)
(declare-const var3788!1 var2554)
(declare-const var531!3 var968)
(declare-const var1784!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2974!1 var3788!1 var531!3 var1508!1 var1784!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2974!2 var3415)
(declare-const var3788!2 var2554)
(declare-const var531!4 var968)
(declare-const var1508!2 String)
(declare-const var1784!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2974!2 var2343 var931 var3788!2 var531!4 var1508!2 var1182)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2974!3 var3415)
(declare-const var2343!1 var184)
(declare-const var931!1 ClassObject)
(declare-const var3788!3 var2554)
(declare-const var531!5 var968)
(declare-const var1508!3 String)
(declare-const var1182!1 Int)
(define-const var262 var1563 var1563-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3010 Int (mask/-2077367092 var262)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var748 Int (bv2nat (bvand ((_ int2bv 64) var1182!1) ((_ int2bv 64) var3010)))) ; Statement: $l15 = l3 & $l14 
(define-const var1053 Int (ite (> var748 0) 1 (ite (< var748 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1053 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2974!3 var2343!1 var931!1 var3788!3 var531!5 var1508!3 var1182!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2974!4 var3415)
(declare-const var2343!2 var184)
(declare-const var931!2 ClassObject)
(declare-const var3788!4 var2554)
(declare-const var531!6 var968)
(declare-const var1508!4 String)
(declare-const var1182!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2974!4 var2343!2 var931!2 var1182!2 var3788!4 var531!6 var1508!4 var1182!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2974!5 var3415)
(declare-const var2343!3 var184)
(declare-const var931!3 ClassObject)
(declare-const var1182!3 Int)
(declare-const var3788!5 var2554)
(declare-const var531!7 var968)
(declare-const var1508!5 String)
(declare-const var1182!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2974!5 var2343!3 "writeArrayMapping" var931!3 var1182!4 var3788!5 var531!7 var1508!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2974!6 var3415)
(declare-const var2343!4 var184)
(declare-const var3085 String)
(declare-const var931!4 ClassObject)
(declare-const var1182!5 Int)
(declare-const var3788!6 var2554)
(declare-const var531!8 var968)
(declare-const var1508!6 String)
(assert true)
(define-const var2975 (Array Int Int) (toByteArray/1561254549 var531!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var868 var2558 (classLoader/1229018461 var2974!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1186 Int (getLength-Arr-Int-1 var2975)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var291 ClassObject (defineClassPublic/-885393557 var868 var3748 var2975 0 var1186)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2933 var982) ; Statement: $r35 := @caughtexception 
(assert (not (= var2933 null-var982)))
(define-const var2759 var2169 var2169-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1026 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1026)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1026!1 String)
(assert (= var1026!1 ""))
(assert true)
(define-const var3935 String (append/672562846 var1026!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1026!2 String)
(assert (= var1026!2 (str.++ var1026!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2476 String (append/-1031950772 var3935 (cast-from-ClassObject-to-var2797 var931!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3935!1 String)
(assert (str.prefixof var3935 var3935!1))
(assert true)
(define-const var1114 String (toString/-2075883882 var2476)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2759 var1114 var2933)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2759!1 var2169)
(declare-const var1114!1 String)
(declare-const var2933!1 var982)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var968-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2554_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2169-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2797=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3415=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2974=r15, var931=r7, var184=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2343=r16, var3544=com.alibaba.fastjson2.codec.BeanInfo, var305=r21, var2554=java.util.List, var3788=r5, var1182=l3, var968=com.alibaba.fastjson2.internal.asm.ClassWriter, var531=$r49, var2890=java.util.function.Function, var2242=null, var1211=null_type, var2750=$r50, var1052=$r3, var3545=java.util.concurrent.atomic.AtomicLong, var3751=$r2, var3349=$l0, var1767=$r4, var3715=$r6, var1227=$i1, var282=$r12, var949=$r41, var2217=$r13, var3543=$r33, var2622=$r14, var3693=java.lang.Package, var3620=$r34, var1508=r45, var3748=r44, var1280=$i2, var1203=com.alibaba.fastjson2.internal.asm.ASMUtils, var1784=r46, var2775=$r47, var2921=52, var2040=49, var1563=com.alibaba.fastjson2.JSONWriter$Feature, var262=$r48, var3010=$l14, var748=$l15, var1053=$b16, var3085="writeArrayMapping", var2975=$r27, var2558=com.alibaba.fastjson2.util.DynamicClassLoader, var868=$r17, var1186=$i4, var291=$r28, var982=java.lang.Throwable, var2933=$r35, var2169=com.alibaba.fastjson2.JSONException, var2759=$r55, var1026=$r54, var3935=$r38, var2797=java.lang.Object, var2476=$r39, var1114=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3415, r15=var2974, r7=var931, com.alibaba.fastjson2.writer.ObjectWriterProvider=var184, r16=var2343, com.alibaba.fastjson2.codec.BeanInfo=var3544, r21=var305, java.util.List=var2554, r5=var3788, l3=var1182, com.alibaba.fastjson2.internal.asm.ClassWriter=var968, $r49=var531, java.util.function.Function=var2890, null=var2242, null_type=var1211, $r50=var2750, $r3=var1052, java.util.concurrent.atomic.AtomicLong=var3545, $r2=var3751, $l0=var3349, $r4=var1767, $r6=var3715, $i1=var1227, $r12=var282, $r41=var949, $r13=var2217, $r33=var3543, $r14=var2622, java.lang.Package=var3693, $r34=var3620, r45=var1508, r44=var3748, $i2=var1280, com.alibaba.fastjson2.internal.asm.ASMUtils=var1203, r46=var1784, $r47=var2775, 52=var2921, 49=var2040, com.alibaba.fastjson2.JSONWriter$Feature=var1563, $r48=var262, $l14=var3010, $l15=var748, $b16=var1053, "writeArrayMapping"=var3085, $r27=var2975, com.alibaba.fastjson2.util.DynamicClassLoader=var2558, $r17=var868, $i4=var1186, $r28=var291, java.lang.Throwable=var982, $r35=var2933, com.alibaba.fastjson2.JSONException=var2169, $r55=var2759, $r54=var1026, $r38=var3935, java.lang.Object=var2797, $r39=var2476, $r40=var1114}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10