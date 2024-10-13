(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3631 0)
(declare-sort var2177 0)
(declare-sort var616 0)
(declare-sort var443 0)
(declare-sort var2832 0)
(declare-sort var2059 0)
(declare-sort var938 0)
(declare-sort var3367 0)
(declare-sort var1512 0)
(declare-sort var1995 0)
(declare-sort var3472 0)
(declare-sort var3509 0)
(declare-sort var2934 0)
(declare-sort var963 0)
(declare-sort var3875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3631!class ClassObject)
(declare-fun var2832-init () var2832)
(declare-fun <init>/1561585841 (var2832 var2059) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3367) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var443_size/-959786421 (var443) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1512)
(declare-fun visit/1245821975 (var2832 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3631 var443 var2832 String) void)
(declare-fun genMethodInit/736566045 (var3631 var443 var2832 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3631 var2177 ClassObject var443 var2832 String Int) void)
(declare-fun mask/-2077367092 (var3472) Int)
(declare-fun genMethodWrite/551741206 (var3631 var2177 ClassObject var443 var2832 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3631 var2177 ClassObject Int var443 var2832 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3631 var2177 String ClassObject Int var443 var2832 String) void)
(declare-fun toByteArray/1561254549 (var2832) (Array Int Int))
(declare-fun classLoader/1229018461 (var3631) var3509)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3509 String (Array Int Int) Int Int) ClassObject)
(declare-fun var963-init () var963)
(declare-fun append/-1031950772 (String var3875) String)
(declare-fun cast-from-ClassObject-to-var3875 (ClassObject) var3875)
(declare-fun <init>/-743866570 (var963 String var2934) void)
(declare-const null-var3631 var3631)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2177 var2177)
(declare-const null-var616 var616)
(declare-const null-var443 var443)
(declare-const null-Int Int)
(declare-const null-NullType var938)
(declare-const null-var2059 var2059)
(declare-const var3631-seed var3367)
(declare-const null-var1512 var1512)
(declare-const var1995-TYPE_OBJECT_WRITER_8 String)
(declare-const var3631-INTERFACES (Array Int String))
(declare-const var3472-BeanToArray var3472)
(declare-const null-var2934 var2934)
(declare-const var1470 var3631) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1470 null-var3631)))
(declare-const var3649 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3649 null-ClassObject)))
(declare-const var3315 var2177) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3315 null-var2177)))
(declare-const var2858 var616) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2858 null-var616)))
(declare-const var3719 var443) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3719 null-var443)))
(declare-const var3037 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3037 null-Int)))
(define-const var1716 var2832 var2832-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1716 null-var2059)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1716!1 var2832)
(declare-const var2701 var938)
(define-const var514 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var514)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var514!1 String)
(assert (= var514!1 ""))
(assert true)
(define-const var1283 String (append/672562846 var514!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var514!2 String)
(assert (= var514!2 (str.++ var514!1 "OWG_")))
(define-const var1585 var3367 var3631-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var288 Int (incrementAndGet/636047358 var1585)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var285 String (append/-901862667 var1283 var288)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1283!1 String)
(assert (str.prefixof var1283 var1283!1))
(assert true)
(define-const var3144 String (append/672562846 var285 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 "_")))
(define-const var3473 Int (var443_size/-959786421 var3719)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var385 String (append/-1001720160 var3144 var3473)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3144!1 String)
(assert (str.prefixof var3144 var3144!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3649 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2390 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3926 String (append/672562846 var385 var2390)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var385!1 String)
(assert (= var385!1 (str.++ var385 var2390)))
(assert true)
(define-const var1058 String (toString/-2075883882 var3926)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var369 ClassObject var3631!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3191 var1512 (getPackage/-1841711535 var369)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3191 null-var1512)) ; Cond: $r34 == null 
(define-const var293 String var1058) ; Statement: r45 = $r33 
(define-const var703 String var1058) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2241 Int (var443_size/-959786421 var3719)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2241 8) (and (not (= var2241 7)) (and (not (= var2241 6)) (and (not (= var2241 5)) (and (not (= var2241 4)) (and (not (= var2241 3)) (and (not (= var2241 2)) (and (not (= var2241 1)) true))))))))) ; Intersect: Cond: $i2 == 8  and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional        
(define-const var537 String var1995-TYPE_OBJECT_WRITER_8) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2575 (Array Int String) var3631-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1716!1 52 49 var293 var537 var2575)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1716!2 var2832)
(declare-const var833 Int)
(declare-const var229 Int)
(declare-const var293!1 String)
(declare-const var537!1 String)
(declare-const var2575!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1470 var3719 var1716!2 var537!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1470!1 var3631)
(declare-const var3719!1 var443)
(declare-const var1716!3 var2832)
(declare-const var537!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1470!1 var3719!1 var1716!3 var293!1 var537!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1470!2 var3631)
(declare-const var3719!2 var443)
(declare-const var1716!4 var2832)
(declare-const var293!2 String)
(declare-const var537!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1470!2 var3315 var3649 var3719!2 var1716!4 var293!2 var3037)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1470!3 var3631)
(declare-const var3315!1 var2177)
(declare-const var3649!1 ClassObject)
(declare-const var3719!3 var443)
(declare-const var1716!5 var2832)
(declare-const var293!3 String)
(declare-const var3037!1 Int)
(define-const var3461 var3472 var3472-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2924 Int (mask/-2077367092 var3461)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var355 Int (bv2nat (bvand ((_ int2bv 64) var3037!1) ((_ int2bv 64) var2924)))) ; Statement: $l15 = l3 & $l14 
(define-const var427 Int (ite (> var355 0) 1 (ite (< var355 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var427 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var1470!3 var3315!1 var3649!1 var3719!3 var1716!5 var293!3 var3037!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1470!4 var3631)
(declare-const var3315!2 var2177)
(declare-const var3649!2 ClassObject)
(declare-const var3719!4 var443)
(declare-const var1716!6 var2832)
(declare-const var293!4 String)
(declare-const var3037!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1470!4 var3315!2 var3649!2 var3037!2 var3719!4 var1716!6 var293!4 var3037!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1470!5 var3631)
(declare-const var3315!3 var2177)
(declare-const var3649!3 ClassObject)
(declare-const var3037!3 Int)
(declare-const var3719!5 var443)
(declare-const var1716!7 var2832)
(declare-const var293!5 String)
(declare-const var3037!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1470!5 var3315!3 "writeArrayMapping" var3649!3 var3037!4 var3719!5 var1716!7 var293!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1470!6 var3631)
(declare-const var3315!4 var2177)
(declare-const var1193 String)
(declare-const var3649!4 ClassObject)
(declare-const var3037!5 Int)
(declare-const var3719!6 var443)
(declare-const var1716!8 var2832)
(declare-const var293!6 String)
(assert true)
(define-const var1679 (Array Int Int) (toByteArray/1561254549 var1716!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1017 var3509 (classLoader/1229018461 var1470!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var118 Int (getLength-Arr-Int-1 var1679)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1001 ClassObject (defineClassPublic/-885393557 var1017 var703 var1679 0 var118)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1515 var2934) ; Statement: $r35 := @caughtexception 
(assert (not (= var1515 null-var2934)))
(define-const var3407 var963 var963-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var684 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var684)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var684!1 String)
(assert (= var684!1 ""))
(assert true)
(define-const var3098 String (append/672562846 var684!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var684!2 String)
(assert (= var684!2 (str.++ var684!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2990 String (append/-1031950772 var3098 (cast-from-ClassObject-to-var3875 var3649!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3098!1 String)
(assert (str.prefixof var3098 var3098!1))
(assert true)
(define-const var3573 String (toString/-2075883882 var2990)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3407 var3573 var1515)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3407!1 var963)
(declare-const var3573!1 String)
(declare-const var1515!1 var2934)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2832-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var443_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var963-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3875=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3631=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1470=r15, var3649=r7, var2177=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3315=r16, var616=com.alibaba.fastjson2.codec.BeanInfo, var2858=r21, var443=java.util.List, var3719=r5, var3037=l3, var2832=com.alibaba.fastjson2.internal.asm.ClassWriter, var1716=$r49, var2059=java.util.function.Function, var2701=null, var938=null_type, var514=$r50, var1283=$r3, var3367=java.util.concurrent.atomic.AtomicLong, var1585=$r2, var288=$l0, var285=$r4, var3144=$r6, var3473=$i1, var385=$r12, var2390=$r41, var3926=$r13, var1058=$r33, var369=$r14, var1512=java.lang.Package, var3191=$r34, var293=r45, var703=r44, var2241=$i2, var1995=com.alibaba.fastjson2.internal.asm.ASMUtils, var537=r46, var2575=$r47, var833=52, var229=49, var3472=com.alibaba.fastjson2.JSONWriter$Feature, var3461=$r48, var2924=$l14, var355=$l15, var427=$b16, var1193="writeArrayMapping", var1679=$r27, var3509=com.alibaba.fastjson2.util.DynamicClassLoader, var1017=$r17, var118=$i4, var1001=$r28, var2934=java.lang.Throwable, var1515=$r35, var963=com.alibaba.fastjson2.JSONException, var3407=$r55, var684=$r54, var3098=$r38, var3875=java.lang.Object, var2990=$r39, var3573=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3631, r15=var1470, r7=var3649, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2177, r16=var3315, com.alibaba.fastjson2.codec.BeanInfo=var616, r21=var2858, java.util.List=var443, r5=var3719, l3=var3037, com.alibaba.fastjson2.internal.asm.ClassWriter=var2832, $r49=var1716, java.util.function.Function=var2059, null=var2701, null_type=var938, $r50=var514, $r3=var1283, java.util.concurrent.atomic.AtomicLong=var3367, $r2=var1585, $l0=var288, $r4=var285, $r6=var3144, $i1=var3473, $r12=var385, $r41=var2390, $r13=var3926, $r33=var1058, $r14=var369, java.lang.Package=var1512, $r34=var3191, r45=var293, r44=var703, $i2=var2241, com.alibaba.fastjson2.internal.asm.ASMUtils=var1995, r46=var537, $r47=var2575, 52=var833, 49=var229, com.alibaba.fastjson2.JSONWriter$Feature=var3472, $r48=var3461, $l14=var2924, $l15=var355, $b16=var427, "writeArrayMapping"=var1193, $r27=var1679, com.alibaba.fastjson2.util.DynamicClassLoader=var3509, $r17=var1017, $i4=var118, $r28=var1001, java.lang.Throwable=var2934, $r35=var1515, com.alibaba.fastjson2.JSONException=var963, $r55=var3407, $r54=var684, $r38=var3098, java.lang.Object=var3875, $r39=var2990, $r40=var3573}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10