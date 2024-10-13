(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var3722 0)
(declare-sort var3114 0)
(declare-sort var176 0)
(declare-sort var3283 0)
(declare-sort var3869 0)
(declare-sort var2837 0)
(declare-sort var3068 0)
(declare-sort var477 0)
(declare-sort var96 0)
(declare-sort var3043 0)
(declare-sort var3021 0)
(declare-sort var2738 0)
(declare-sort var2979 0)
(declare-sort var2594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var210!class ClassObject)
(declare-fun var3283-init () var3283)
(declare-fun <init>/1561585841 (var3283 var3869) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3068) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var176_size/-959786421 (var176) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var477)
(declare-fun visit/1245821975 (var3283 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var210 var176 var3283 String) void)
(declare-fun genMethodInit/736566045 (var210 var176 var3283 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var210 var3722 ClassObject var176 var3283 String Int) void)
(declare-fun mask/-2077367092 (var3043) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var210 var3722 String ClassObject Int var176 var3283 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var210 var3722 ClassObject Int var176 var3283 String Int) void)
(declare-fun toByteArray/1561254549 (var3283) (Array Int Int))
(declare-fun classLoader/1229018461 (var210) var3021)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3021 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2979-init () var2979)
(declare-fun append/-1031950772 (String var2594) String)
(declare-fun cast-from-ClassObject-to-var2594 (ClassObject) var2594)
(declare-fun <init>/-743866570 (var2979 String var2738) void)
(declare-const null-var210 var210)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3722 var3722)
(declare-const null-var3114 var3114)
(declare-const null-var176 var176)
(declare-const null-Int Int)
(declare-const null-NullType var2837)
(declare-const null-var3869 var3869)
(declare-const var210-seed var3068)
(declare-const null-var477 var477)
(declare-const var96-TYPE_OBJECT_WRITER_1 String)
(declare-const var210-INTERFACES (Array Int String))
(declare-const var3043-BeanToArray var3043)
(declare-const null-var2738 var2738)
(declare-const var1121 var210) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1121 null-var210)))
(declare-const var680 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var680 null-ClassObject)))
(declare-const var2341 var3722) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2341 null-var3722)))
(declare-const var1147 var3114) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1147 null-var3114)))
(declare-const var516 var176) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var516 null-var176)))
(declare-const var2821 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2821 null-Int)))
(define-const var1441 var3283 var3283-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1441 null-var3869)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1441!1 var3283)
(declare-const var2753 var2837)
(define-const var3074 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3074)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3074!1 String)
(assert (= var3074!1 ""))
(assert true)
(define-const var960 String (append/672562846 var3074!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3074!2 String)
(assert (= var3074!2 (str.++ var3074!1 "OWG_")))
(define-const var2723 var3068 var210-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1662 Int (incrementAndGet/636047358 var2723)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2694 String (append/-901862667 var960 var1662)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var960!1 String)
(assert (str.prefixof var960 var960!1))
(assert true)
(define-const var110 String (append/672562846 var2694 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2694!1 String)
(assert (= var2694!1 (str.++ var2694 "_")))
(define-const var3749 Int (var176_size/-959786421 var516)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var187 String (append/-1001720160 var110 var3749)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var110!1 String)
(assert (str.prefixof var110 var110!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var680 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2826 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3276 String (append/672562846 var187 var2826)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var187!1 String)
(assert (= var187!1 (str.++ var187 var2826)))
(assert true)
(define-const var3100 String (toString/-2075883882 var3276)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var985 ClassObject var210!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2007 var477 (getPackage/-1841711535 var985)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2007 null-var477)) ; Cond: $r34 == null 
(define-const var569 String var3100) ; Statement: r45 = $r33 
(define-const var646 String var3100) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1281 Int (var176_size/-959786421 var516)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1281 1) true)) ; Intersect: Cond: $i2 == 1  and Non Conditional 
(define-const var3342 String var96-TYPE_OBJECT_WRITER_1) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3652 (Array Int String) var210-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1441!1 52 49 var569 var3342 var3652)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1441!2 var3283)
(declare-const var172 Int)
(declare-const var2981 Int)
(declare-const var569!1 String)
(declare-const var3342!1 String)
(declare-const var3652!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1121 var516 var1441!2 var3342!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1121!1 var210)
(declare-const var516!1 var176)
(declare-const var1441!3 var3283)
(declare-const var3342!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1121!1 var516!1 var1441!3 var569!1 var3342!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1121!2 var210)
(declare-const var516!2 var176)
(declare-const var1441!4 var3283)
(declare-const var569!2 String)
(declare-const var3342!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1121!2 var2341 var680 var516!2 var1441!4 var569!2 var2821)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1121!3 var210)
(declare-const var2341!1 var3722)
(declare-const var680!1 ClassObject)
(declare-const var516!3 var176)
(declare-const var1441!5 var3283)
(declare-const var569!3 String)
(declare-const var2821!1 Int)
(define-const var3115 var3043 var3043-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1239 Int (mask/-2077367092 var3115)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3349 Int (bv2nat (bvand ((_ int2bv 64) var2821!1) ((_ int2bv 64) var1239)))) ; Statement: $l15 = l3 & $l14 
(define-const var1767 Int (ite (> var3349 0) 1 (ite (< var3349 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1767 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1121!3 var2341!1 "write" var680!1 var2821!1 var516!3 var1441!5 var569!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var1121!4 var210)
(declare-const var2341!2 var3722)
(declare-const var1654 String)
(declare-const var680!2 ClassObject)
(declare-const var2821!2 Int)
(declare-const var516!4 var176)
(declare-const var1441!6 var3283)
(declare-const var569!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1121!4 var2341!2 var680!2 var2821!2 var516!4 var1441!6 var569!4 var2821!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1121!5 var210)
(declare-const var2341!3 var3722)
(declare-const var680!3 ClassObject)
(declare-const var2821!3 Int)
(declare-const var516!5 var176)
(declare-const var1441!7 var3283)
(declare-const var569!5 String)
(declare-const var2821!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1121!5 var2341!3 "writeArrayMapping" var680!3 var2821!4 var516!5 var1441!7 var569!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1121!6 var210)
(declare-const var2341!4 var3722)
(declare-const var732 String)
(declare-const var680!4 ClassObject)
(declare-const var2821!5 Int)
(declare-const var516!6 var176)
(declare-const var1441!8 var3283)
(declare-const var569!6 String)
(assert true)
(define-const var1120 (Array Int Int) (toByteArray/1561254549 var1441!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3287 var3021 (classLoader/1229018461 var1121!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3971 Int (getLength-Arr-Int-1 var1120)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3741 ClassObject (defineClassPublic/-885393557 var3287 var646 var1120 0 var3971)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2141 var2738) ; Statement: $r35 := @caughtexception 
(assert (not (= var2141 null-var2738)))
(define-const var1858 var2979 var2979-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1218 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1218)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1218!1 String)
(assert (= var1218!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var1218!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1218!2 String)
(assert (= var1218!2 (str.++ var1218!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3728 String (append/-1031950772 var1931 (cast-from-ClassObject-to-var2594 var680!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1931!1 String)
(assert (str.prefixof var1931 var1931!1))
(assert true)
(define-const var1418 String (toString/-2075883882 var3728)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1858 var1418 var2141)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1858!1 var2979)
(declare-const var1418!1 String)
(declare-const var2141!1 var2738)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3283-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var176_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2979-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2594=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var210=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1121=r15, var680=r7, var3722=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2341=r16, var3114=com.alibaba.fastjson2.codec.BeanInfo, var1147=r21, var176=java.util.List, var516=r5, var2821=l3, var3283=com.alibaba.fastjson2.internal.asm.ClassWriter, var1441=$r49, var3869=java.util.function.Function, var2753=null, var2837=null_type, var3074=$r50, var960=$r3, var3068=java.util.concurrent.atomic.AtomicLong, var2723=$r2, var1662=$l0, var2694=$r4, var110=$r6, var3749=$i1, var187=$r12, var2826=$r41, var3276=$r13, var3100=$r33, var985=$r14, var477=java.lang.Package, var2007=$r34, var569=r45, var646=r44, var1281=$i2, var96=com.alibaba.fastjson2.internal.asm.ASMUtils, var3342=r46, var3652=$r47, var172=52, var2981=49, var3043=com.alibaba.fastjson2.JSONWriter$Feature, var3115=$r48, var1239=$l14, var3349=$l15, var1767=$b16, var1654="write", var732="writeArrayMapping", var1120=$r27, var3021=com.alibaba.fastjson2.util.DynamicClassLoader, var3287=$r17, var3971=$i4, var3741=$r28, var2738=java.lang.Throwable, var2141=$r35, var2979=com.alibaba.fastjson2.JSONException, var1858=$r55, var1218=$r54, var1931=$r38, var2594=java.lang.Object, var3728=$r39, var1418=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var210, r15=var1121, r7=var680, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3722, r16=var2341, com.alibaba.fastjson2.codec.BeanInfo=var3114, r21=var1147, java.util.List=var176, r5=var516, l3=var2821, com.alibaba.fastjson2.internal.asm.ClassWriter=var3283, $r49=var1441, java.util.function.Function=var3869, null=var2753, null_type=var2837, $r50=var3074, $r3=var960, java.util.concurrent.atomic.AtomicLong=var3068, $r2=var2723, $l0=var1662, $r4=var2694, $r6=var110, $i1=var3749, $r12=var187, $r41=var2826, $r13=var3276, $r33=var3100, $r14=var985, java.lang.Package=var477, $r34=var2007, r45=var569, r44=var646, $i2=var1281, com.alibaba.fastjson2.internal.asm.ASMUtils=var96, r46=var3342, $r47=var3652, 52=var172, 49=var2981, com.alibaba.fastjson2.JSONWriter$Feature=var3043, $r48=var3115, $l14=var1239, $l15=var3349, $b16=var1767, "write"=var1654, "writeArrayMapping"=var732, $r27=var1120, com.alibaba.fastjson2.util.DynamicClassLoader=var3021, $r17=var3287, $i4=var3971, $r28=var3741, java.lang.Throwable=var2738, $r35=var2141, com.alibaba.fastjson2.JSONException=var2979, $r55=var1858, $r54=var1218, $r38=var1931, java.lang.Object=var2594, $r39=var3728, $r40=var1418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10