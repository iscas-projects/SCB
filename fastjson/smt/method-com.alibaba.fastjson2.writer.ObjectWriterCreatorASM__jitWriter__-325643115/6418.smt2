(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2470 0)
(declare-sort var2271 0)
(declare-sort var3811 0)
(declare-sort var1216 0)
(declare-sort var3168 0)
(declare-sort var2190 0)
(declare-sort var2840 0)
(declare-sort var1036 0)
(declare-sort var3300 0)
(declare-sort var2868 0)
(declare-sort var1245 0)
(declare-sort var3347 0)
(declare-sort var1702 0)
(declare-sort var3731 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2470!class ClassObject)
(declare-fun var3168-init () var3168)
(declare-fun <init>/1561585841 (var3168 var2190) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1036) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1216_size/-959786421 (var1216) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3300)
(declare-fun visit/1245821975 (var3168 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2470 var1216 var3168 String) void)
(declare-fun genMethodInit/736566045 (var2470 var1216 var3168 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2470 var2271 ClassObject var1216 var3168 String Int) void)
(declare-fun mask/-2077367092 (var1245) Int)
(declare-fun genMethodWrite/551741206 (var2470 var2271 ClassObject var1216 var3168 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2470 var2271 ClassObject Int var1216 var3168 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2470 var2271 String ClassObject Int var1216 var3168 String) void)
(declare-fun toByteArray/1561254549 (var3168) (Array Int Int))
(declare-fun classLoader/1229018461 (var2470) var3347)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3347 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3731-init () var3731)
(declare-fun append/-1031950772 (String var3087) String)
(declare-fun cast-from-ClassObject-to-var3087 (ClassObject) var3087)
(declare-fun <init>/-743866570 (var3731 String var1702) void)
(declare-const null-var2470 var2470)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2271 var2271)
(declare-const null-var3811 var3811)
(declare-const null-var1216 var1216)
(declare-const null-Int Int)
(declare-const null-NullType var2840)
(declare-const null-var2190 var2190)
(declare-const var2470-seed var1036)
(declare-const null-var3300 var3300)
(declare-const var2868-TYPE_OBJECT_WRITER_10 String)
(declare-const var2470-INTERFACES (Array Int String))
(declare-const var1245-BeanToArray var1245)
(declare-const null-var1702 var1702)
(declare-const var3048 var2470) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3048 null-var2470)))
(declare-const var2932 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2932 null-ClassObject)))
(declare-const var2070 var2271) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2070 null-var2271)))
(declare-const var984 var3811) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var984 null-var3811)))
(declare-const var772 var1216) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var772 null-var1216)))
(declare-const var1555 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1555 null-Int)))
(define-const var3594 var3168 var3168-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3594 null-var2190)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3594!1 var3168)
(declare-const var2754 var2840)
(define-const var425 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var425)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var425!1 String)
(assert (= var425!1 ""))
(assert true)
(define-const var3980 String (append/672562846 var425!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var425!2 String)
(assert (= var425!2 (str.++ var425!1 "OWG_")))
(define-const var2260 var1036 var2470-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3252 Int (incrementAndGet/636047358 var2260)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var515 String (append/-901862667 var3980 var3252)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3980!1 String)
(assert (str.prefixof var3980 var3980!1))
(assert true)
(define-const var2401 String (append/672562846 var515 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var515!1 String)
(assert (= var515!1 (str.++ var515 "_")))
(define-const var202 Int (var1216_size/-959786421 var772)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3508 String (append/-1001720160 var2401 var202)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2401!1 String)
(assert (str.prefixof var2401 var2401!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2932 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2670 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var816 String (append/672562846 var3508 var2670)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3508!1 String)
(assert (= var3508!1 (str.++ var3508 var2670)))
(assert true)
(define-const var2197 String (toString/-2075883882 var816)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var413 ClassObject var2470!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2237 var3300 (getPackage/-1841711535 var413)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2237 null-var3300)) ; Cond: $r34 == null 
(define-const var1060 String var2197) ; Statement: r45 = $r33 
(define-const var571 String var2197) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3364 Int (var1216_size/-959786421 var772)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3364 10) (and (not (= var3364 9)) (and (not (= var3364 8)) (and (not (= var3364 7)) (and (not (= var3364 6)) (and (not (= var3364 5)) (and (not (= var3364 4)) (and (not (= var3364 3)) (and (not (= var3364 2)) (and (not (= var3364 1)) true))))))))))) ; Intersect: Cond: $i2 == 10  and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional          
(define-const var2753 String var2868-TYPE_OBJECT_WRITER_10) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3770 (Array Int String) var2470-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3594!1 52 49 var1060 var2753 var3770)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3594!2 var3168)
(declare-const var3179 Int)
(declare-const var3416 Int)
(declare-const var1060!1 String)
(declare-const var2753!1 String)
(declare-const var3770!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3048 var772 var3594!2 var2753!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3048!1 var2470)
(declare-const var772!1 var1216)
(declare-const var3594!3 var3168)
(declare-const var2753!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3048!1 var772!1 var3594!3 var1060!1 var2753!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3048!2 var2470)
(declare-const var772!2 var1216)
(declare-const var3594!4 var3168)
(declare-const var1060!2 String)
(declare-const var2753!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3048!2 var2070 var2932 var772!2 var3594!4 var1060!2 var1555)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3048!3 var2470)
(declare-const var2070!1 var2271)
(declare-const var2932!1 ClassObject)
(declare-const var772!3 var1216)
(declare-const var3594!5 var3168)
(declare-const var1060!3 String)
(declare-const var1555!1 Int)
(define-const var2996 var1245 var1245-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3882 Int (mask/-2077367092 var2996)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2224 Int (bv2nat (bvand ((_ int2bv 64) var1555!1) ((_ int2bv 64) var3882)))) ; Statement: $l15 = l3 & $l14 
(define-const var3960 Int (ite (> var2224 0) 1 (ite (< var2224 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3960 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3048!3 var2070!1 var2932!1 var772!3 var3594!5 var1060!3 var1555!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3048!4 var2470)
(declare-const var2070!2 var2271)
(declare-const var2932!2 ClassObject)
(declare-const var772!4 var1216)
(declare-const var3594!6 var3168)
(declare-const var1060!4 String)
(declare-const var1555!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3048!4 var2070!2 var2932!2 var1555!2 var772!4 var3594!6 var1060!4 var1555!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3048!5 var2470)
(declare-const var2070!3 var2271)
(declare-const var2932!3 ClassObject)
(declare-const var1555!3 Int)
(declare-const var772!5 var1216)
(declare-const var3594!7 var3168)
(declare-const var1060!5 String)
(declare-const var1555!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3048!5 var2070!3 "writeArrayMapping" var2932!3 var1555!4 var772!5 var3594!7 var1060!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3048!6 var2470)
(declare-const var2070!4 var2271)
(declare-const var3237 String)
(declare-const var2932!4 ClassObject)
(declare-const var1555!5 Int)
(declare-const var772!6 var1216)
(declare-const var3594!8 var3168)
(declare-const var1060!6 String)
(assert true)
(define-const var1143 (Array Int Int) (toByteArray/1561254549 var3594!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2086 var3347 (classLoader/1229018461 var3048!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3220 Int (getLength-Arr-Int-1 var1143)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var146 ClassObject (defineClassPublic/-885393557 var2086 var571 var1143 0 var3220)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2636 var1702) ; Statement: $r35 := @caughtexception 
(assert (not (= var2636 null-var1702)))
(define-const var1438 var3731 var3731-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2466 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2466)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2466!1 String)
(assert (= var2466!1 ""))
(assert true)
(define-const var856 String (append/672562846 var2466!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2466!2 String)
(assert (= var2466!2 (str.++ var2466!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var6 String (append/-1031950772 var856 (cast-from-ClassObject-to-var3087 var2932!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var856!1 String)
(assert (str.prefixof var856 var856!1))
(assert true)
(define-const var2642 String (toString/-2075883882 var6)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1438 var2642 var2636)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1438!1 var3731)
(declare-const var2642!1 String)
(declare-const var2636!1 var1702)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3168-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1216_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3731-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3087=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2470=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3048=r15, var2932=r7, var2271=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2070=r16, var3811=com.alibaba.fastjson2.codec.BeanInfo, var984=r21, var1216=java.util.List, var772=r5, var1555=l3, var3168=com.alibaba.fastjson2.internal.asm.ClassWriter, var3594=$r49, var2190=java.util.function.Function, var2754=null, var2840=null_type, var425=$r50, var3980=$r3, var1036=java.util.concurrent.atomic.AtomicLong, var2260=$r2, var3252=$l0, var515=$r4, var2401=$r6, var202=$i1, var3508=$r12, var2670=$r41, var816=$r13, var2197=$r33, var413=$r14, var3300=java.lang.Package, var2237=$r34, var1060=r45, var571=r44, var3364=$i2, var2868=com.alibaba.fastjson2.internal.asm.ASMUtils, var2753=r46, var3770=$r47, var3179=52, var3416=49, var1245=com.alibaba.fastjson2.JSONWriter$Feature, var2996=$r48, var3882=$l14, var2224=$l15, var3960=$b16, var3237="writeArrayMapping", var1143=$r27, var3347=com.alibaba.fastjson2.util.DynamicClassLoader, var2086=$r17, var3220=$i4, var146=$r28, var1702=java.lang.Throwable, var2636=$r35, var3731=com.alibaba.fastjson2.JSONException, var1438=$r55, var2466=$r54, var856=$r38, var3087=java.lang.Object, var6=$r39, var2642=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2470, r15=var3048, r7=var2932, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2271, r16=var2070, com.alibaba.fastjson2.codec.BeanInfo=var3811, r21=var984, java.util.List=var1216, r5=var772, l3=var1555, com.alibaba.fastjson2.internal.asm.ClassWriter=var3168, $r49=var3594, java.util.function.Function=var2190, null=var2754, null_type=var2840, $r50=var425, $r3=var3980, java.util.concurrent.atomic.AtomicLong=var1036, $r2=var2260, $l0=var3252, $r4=var515, $r6=var2401, $i1=var202, $r12=var3508, $r41=var2670, $r13=var816, $r33=var2197, $r14=var413, java.lang.Package=var3300, $r34=var2237, r45=var1060, r44=var571, $i2=var3364, com.alibaba.fastjson2.internal.asm.ASMUtils=var2868, r46=var2753, $r47=var3770, 52=var3179, 49=var3416, com.alibaba.fastjson2.JSONWriter$Feature=var1245, $r48=var2996, $l14=var3882, $l15=var2224, $b16=var3960, "writeArrayMapping"=var3237, $r27=var1143, com.alibaba.fastjson2.util.DynamicClassLoader=var3347, $r17=var2086, $i4=var3220, $r28=var146, java.lang.Throwable=var1702, $r35=var2636, com.alibaba.fastjson2.JSONException=var3731, $r55=var1438, $r54=var2466, $r38=var856, java.lang.Object=var3087, $r39=var6, $r40=var2642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10