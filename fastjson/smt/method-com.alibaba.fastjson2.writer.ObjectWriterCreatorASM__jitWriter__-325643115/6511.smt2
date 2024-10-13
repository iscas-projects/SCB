(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var788 0)
(declare-sort var279 0)
(declare-sort var150 0)
(declare-sort var3948 0)
(declare-sort var1160 0)
(declare-sort var583 0)
(declare-sort var2615 0)
(declare-sort var2863 0)
(declare-sort var2845 0)
(declare-sort var765 0)
(declare-sort var1463 0)
(declare-sort var3911 0)
(declare-sort var3186 0)
(declare-sort var17 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var788!class ClassObject)
(declare-fun var1160-init () var1160)
(declare-fun <init>/1561585841 (var1160 var583) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2863) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3948_size/-959786421 (var3948) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2845)
(declare-fun visit/1245821975 (var1160 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var788 var3948 var1160 String) void)
(declare-fun genMethodInit/736566045 (var788 var3948 var1160 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var788 var279 ClassObject var3948 var1160 String Int) void)
(declare-fun mask/-2077367092 (var1463) Int)
(declare-fun genMethodWrite/551741206 (var788 var279 ClassObject var3948 var1160 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var788 var279 ClassObject Int var3948 var1160 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var788 var279 String ClassObject Int var3948 var1160 String) void)
(declare-fun toByteArray/1561254549 (var1160) (Array Int Int))
(declare-fun classLoader/1229018461 (var788) var3911)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3911 String (Array Int Int) Int Int) ClassObject)
(declare-fun var17-init () var17)
(declare-fun append/-1031950772 (String var117) String)
(declare-fun cast-from-ClassObject-to-var117 (ClassObject) var117)
(declare-fun <init>/-743866570 (var17 String var3186) void)
(declare-const null-var788 var788)
(declare-const null-ClassObject ClassObject)
(declare-const null-var279 var279)
(declare-const null-var150 var150)
(declare-const null-var3948 var3948)
(declare-const null-Int Int)
(declare-const null-NullType var2615)
(declare-const null-var583 var583)
(declare-const var788-seed var2863)
(declare-const null-var2845 var2845)
(declare-const var765-TYPE_OBJECT_WRITER_12 String)
(declare-const var788-INTERFACES (Array Int String))
(declare-const var1463-BeanToArray var1463)
(declare-const null-var3186 var3186)
(declare-const var3941 var788) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3941 null-var788)))
(declare-const var2459 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2459 null-ClassObject)))
(declare-const var2418 var279) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2418 null-var279)))
(declare-const var1407 var150) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1407 null-var150)))
(declare-const var631 var3948) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var631 null-var3948)))
(declare-const var2359 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2359 null-Int)))
(define-const var2124 var1160 var1160-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2124 null-var583)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2124!1 var1160)
(declare-const var9 var2615)
(define-const var2364 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2364)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2364!1 String)
(assert (= var2364!1 ""))
(assert true)
(define-const var734 String (append/672562846 var2364!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2364!2 String)
(assert (= var2364!2 (str.++ var2364!1 "OWG_")))
(define-const var635 var2863 var788-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2859 Int (incrementAndGet/636047358 var635)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var308 String (append/-901862667 var734 var2859)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var734!1 String)
(assert (str.prefixof var734 var734!1))
(assert true)
(define-const var3967 String (append/672562846 var308 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var308!1 String)
(assert (= var308!1 (str.++ var308 "_")))
(define-const var685 Int (var3948_size/-959786421 var631)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3520 String (append/-1001720160 var3967 var685)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3967!1 String)
(assert (str.prefixof var3967 var3967!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2459 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var1718 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3044 String (append/672562846 var3520 var1718)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3520!1 String)
(assert (= var3520!1 (str.++ var3520 var1718)))
(assert true)
(define-const var1512 String (toString/-2075883882 var3044)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var905 ClassObject var788!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2003 var2845 (getPackage/-1841711535 var905)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2003 null-var2845)) ; Cond: $r34 == null 
(define-const var1792 String var1512) ; Statement: r45 = $r33 
(define-const var2544 String var1512) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var237 Int (var3948_size/-959786421 var631)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var237 12) (and (not (= var237 11)) (and (not (= var237 10)) (and (not (= var237 9)) (and (not (= var237 8)) (and (not (= var237 7)) (and (not (= var237 6)) (and (not (= var237 5)) (and (not (= var237 4)) (and (not (= var237 3)) (and (not (= var237 2)) (and (not (= var237 1)) true))))))))))))) ; Intersect: Cond: $i2 == 12  and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var1033 String var765-TYPE_OBJECT_WRITER_12) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3341 (Array Int String) var788-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2124!1 52 49 var1792 var1033 var3341)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2124!2 var1160)
(declare-const var1488 Int)
(declare-const var1784 Int)
(declare-const var1792!1 String)
(declare-const var1033!1 String)
(declare-const var3341!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3941 var631 var2124!2 var1033!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3941!1 var788)
(declare-const var631!1 var3948)
(declare-const var2124!3 var1160)
(declare-const var1033!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3941!1 var631!1 var2124!3 var1792!1 var1033!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3941!2 var788)
(declare-const var631!2 var3948)
(declare-const var2124!4 var1160)
(declare-const var1792!2 String)
(declare-const var1033!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3941!2 var2418 var2459 var631!2 var2124!4 var1792!2 var2359)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3941!3 var788)
(declare-const var2418!1 var279)
(declare-const var2459!1 ClassObject)
(declare-const var631!3 var3948)
(declare-const var2124!5 var1160)
(declare-const var1792!3 String)
(declare-const var2359!1 Int)
(define-const var914 var1463 var1463-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var140 Int (mask/-2077367092 var914)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3901 Int (bv2nat (bvand ((_ int2bv 64) var2359!1) ((_ int2bv 64) var140)))) ; Statement: $l15 = l3 & $l14 
(define-const var318 Int (ite (> var3901 0) 1 (ite (< var3901 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var318 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3941!3 var2418!1 var2459!1 var631!3 var2124!5 var1792!3 var2359!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3941!4 var788)
(declare-const var2418!2 var279)
(declare-const var2459!2 ClassObject)
(declare-const var631!4 var3948)
(declare-const var2124!6 var1160)
(declare-const var1792!4 String)
(declare-const var2359!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3941!4 var2418!2 var2459!2 var2359!2 var631!4 var2124!6 var1792!4 var2359!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3941!5 var788)
(declare-const var2418!3 var279)
(declare-const var2459!3 ClassObject)
(declare-const var2359!3 Int)
(declare-const var631!5 var3948)
(declare-const var2124!7 var1160)
(declare-const var1792!5 String)
(declare-const var2359!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3941!5 var2418!3 "writeArrayMapping" var2459!3 var2359!4 var631!5 var2124!7 var1792!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3941!6 var788)
(declare-const var2418!4 var279)
(declare-const var2506 String)
(declare-const var2459!4 ClassObject)
(declare-const var2359!5 Int)
(declare-const var631!6 var3948)
(declare-const var2124!8 var1160)
(declare-const var1792!6 String)
(assert true)
(define-const var649 (Array Int Int) (toByteArray/1561254549 var2124!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2723 var3911 (classLoader/1229018461 var3941!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2369 Int (getLength-Arr-Int-1 var649)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var366 ClassObject (defineClassPublic/-885393557 var2723 var2544 var649 0 var2369)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2794 var3186) ; Statement: $r35 := @caughtexception 
(assert (not (= var2794 null-var3186)))
(define-const var1659 var17 var17-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var629 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var629)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var629!1 String)
(assert (= var629!1 ""))
(assert true)
(define-const var1703 String (append/672562846 var629!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var629!2 String)
(assert (= var629!2 (str.++ var629!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1174 String (append/-1031950772 var1703 (cast-from-ClassObject-to-var117 var2459!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1703!1 String)
(assert (str.prefixof var1703 var1703!1))
(assert true)
(define-const var2382 String (toString/-2075883882 var1174)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1659 var2382 var2794)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1659!1 var17)
(declare-const var2382!1 String)
(declare-const var2794!1 var3186)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1160-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3948_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var17-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var117=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var788=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3941=r15, var2459=r7, var279=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2418=r16, var150=com.alibaba.fastjson2.codec.BeanInfo, var1407=r21, var3948=java.util.List, var631=r5, var2359=l3, var1160=com.alibaba.fastjson2.internal.asm.ClassWriter, var2124=$r49, var583=java.util.function.Function, var9=null, var2615=null_type, var2364=$r50, var734=$r3, var2863=java.util.concurrent.atomic.AtomicLong, var635=$r2, var2859=$l0, var308=$r4, var3967=$r6, var685=$i1, var3520=$r12, var1718=$r41, var3044=$r13, var1512=$r33, var905=$r14, var2845=java.lang.Package, var2003=$r34, var1792=r45, var2544=r44, var237=$i2, var765=com.alibaba.fastjson2.internal.asm.ASMUtils, var1033=r46, var3341=$r47, var1488=52, var1784=49, var1463=com.alibaba.fastjson2.JSONWriter$Feature, var914=$r48, var140=$l14, var3901=$l15, var318=$b16, var2506="writeArrayMapping", var649=$r27, var3911=com.alibaba.fastjson2.util.DynamicClassLoader, var2723=$r17, var2369=$i4, var366=$r28, var3186=java.lang.Throwable, var2794=$r35, var17=com.alibaba.fastjson2.JSONException, var1659=$r55, var629=$r54, var1703=$r38, var117=java.lang.Object, var1174=$r39, var2382=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var788, r15=var3941, r7=var2459, com.alibaba.fastjson2.writer.ObjectWriterProvider=var279, r16=var2418, com.alibaba.fastjson2.codec.BeanInfo=var150, r21=var1407, java.util.List=var3948, r5=var631, l3=var2359, com.alibaba.fastjson2.internal.asm.ClassWriter=var1160, $r49=var2124, java.util.function.Function=var583, null=var9, null_type=var2615, $r50=var2364, $r3=var734, java.util.concurrent.atomic.AtomicLong=var2863, $r2=var635, $l0=var2859, $r4=var308, $r6=var3967, $i1=var685, $r12=var3520, $r41=var1718, $r13=var3044, $r33=var1512, $r14=var905, java.lang.Package=var2845, $r34=var2003, r45=var1792, r44=var2544, $i2=var237, com.alibaba.fastjson2.internal.asm.ASMUtils=var765, r46=var1033, $r47=var3341, 52=var1488, 49=var1784, com.alibaba.fastjson2.JSONWriter$Feature=var1463, $r48=var914, $l14=var140, $l15=var3901, $b16=var318, "writeArrayMapping"=var2506, $r27=var649, com.alibaba.fastjson2.util.DynamicClassLoader=var3911, $r17=var2723, $i4=var2369, $r28=var366, java.lang.Throwable=var3186, $r35=var2794, com.alibaba.fastjson2.JSONException=var17, $r55=var1659, $r54=var629, $r38=var1703, java.lang.Object=var117, $r39=var1174, $r40=var2382}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10