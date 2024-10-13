(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1531 0)
(declare-sort var1165 0)
(declare-sort var3480 0)
(declare-sort var1054 0)
(declare-sort var2347 0)
(declare-sort var1813 0)
(declare-sort var717 0)
(declare-sort var620 0)
(declare-sort var2219 0)
(declare-sort var1240 0)
(declare-sort var178 0)
(declare-sort var790 0)
(declare-sort var3395 0)
(declare-sort var3706 0)
(declare-sort var3015 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1531!class ClassObject)
(declare-fun var2347-init () var2347)
(declare-fun <init>/1561585841 (var2347 var1813) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var620) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1054_size/-959786421 (var1054) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2219)
(declare-fun visit/1245821975 (var2347 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1531 var1054 var2347 String) void)
(declare-fun genMethodInit/736566045 (var1531 var1054 var2347 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1531 var1165 ClassObject var1054 var2347 String Int) void)
(declare-fun mask/-2077367092 (var178) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1531 var1165 String ClassObject Int var1054 var2347 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1531 var1165 ClassObject Int var1054 var2347 String Int) void)
(declare-fun toByteArray/1561254549 (var2347) (Array Int Int))
(declare-fun classLoader/1229018461 (var1531) var790)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var790 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3706-init () var3706)
(declare-fun append/-1031950772 (String var3015) String)
(declare-fun cast-from-ClassObject-to-var3015 (ClassObject) var3015)
(declare-fun <init>/-743866570 (var3706 String var3395) void)
(declare-const null-var1531 var1531)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1165 var1165)
(declare-const null-var3480 var3480)
(declare-const null-var1054 var1054)
(declare-const null-Int Int)
(declare-const null-NullType var717)
(declare-const null-var1813 var1813)
(declare-const var1531-seed var620)
(declare-const null-var2219 var2219)
(declare-const var1240-TYPE_OBJECT_WRITER_5 String)
(declare-const var1531-INTERFACES (Array Int String))
(declare-const var178-BeanToArray var178)
(declare-const null-var3395 var3395)
(declare-const var2136 var1531) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2136 null-var1531)))
(declare-const var3230 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3230 null-ClassObject)))
(declare-const var1022 var1165) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1022 null-var1165)))
(declare-const var3541 var3480) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3541 null-var3480)))
(declare-const var712 var1054) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var712 null-var1054)))
(declare-const var1989 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1989 null-Int)))
(define-const var2434 var2347 var2347-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2434 null-var1813)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2434!1 var2347)
(declare-const var3595 var717)
(define-const var850 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var850)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var850!1 String)
(assert (= var850!1 ""))
(assert true)
(define-const var2408 String (append/672562846 var850!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var850!2 String)
(assert (= var850!2 (str.++ var850!1 "OWG_")))
(define-const var3571 var620 var1531-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2439 Int (incrementAndGet/636047358 var3571)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3860 String (append/-901862667 var2408 var2439)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2408!1 String)
(assert (str.prefixof var2408 var2408!1))
(assert true)
(define-const var905 String (append/672562846 var3860 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 "_")))
(define-const var2650 Int (var1054_size/-959786421 var712)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1305 String (append/-1001720160 var905 var2650)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var905!1 String)
(assert (str.prefixof var905 var905!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3230 null-ClassObject))) ; Cond: r7 != null 
(define-const var3419 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3419)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3419!1 String)
(assert (= var3419!1 ""))
(assert true)
(define-const var3089 String (append/672562846 var3419!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3419!2 String)
(assert (= var3419!2 (str.++ var3419!1 "_")))
(assert true)
(define-const var3207 String (getSimpleName/-390194377 var3230)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var515 String (append/672562846 var3089 var3207)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3089!1 String)
(assert (= var3089!1 (str.++ var3089 var3207)))
(assert true)
(define-const var3124 String (toString/-2075883882 var515)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var348 String (append/672562846 var1305 var3124)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 var3124)))
(assert true)
(define-const var1308 String (toString/-2075883882 var348)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2984 ClassObject var1531!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1565 var2219 (getPackage/-1841711535 var2984)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1565 null-var2219)) ; Cond: $r34 == null 
(define-const var3241 String var1308) ; Statement: r45 = $r33 
(define-const var3256 String var1308) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1384 Int (var1054_size/-959786421 var712)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1384 5) (and (not (= var1384 4)) (and (not (= var1384 3)) (and (not (= var1384 2)) (and (not (= var1384 1)) true)))))) ; Intersect: Cond: $i2 == 5  and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional     
(define-const var3042 String var1240-TYPE_OBJECT_WRITER_5) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var431 (Array Int String) var1531-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2434!1 52 49 var3241 var3042 var431)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2434!2 var2347)
(declare-const var517 Int)
(declare-const var1018 Int)
(declare-const var3241!1 String)
(declare-const var3042!1 String)
(declare-const var431!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2136 var712 var2434!2 var3042!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2136!1 var1531)
(declare-const var712!1 var1054)
(declare-const var2434!3 var2347)
(declare-const var3042!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2136!1 var712!1 var2434!3 var3241!1 var3042!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2136!2 var1531)
(declare-const var712!2 var1054)
(declare-const var2434!4 var2347)
(declare-const var3241!2 String)
(declare-const var3042!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2136!2 var1022 var3230 var712!2 var2434!4 var3241!2 var1989)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2136!3 var1531)
(declare-const var1022!1 var1165)
(declare-const var3230!1 ClassObject)
(declare-const var712!3 var1054)
(declare-const var2434!5 var2347)
(declare-const var3241!3 String)
(declare-const var1989!1 Int)
(define-const var775 var178 var178-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3325 Int (mask/-2077367092 var775)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2456 Int (bv2nat (bvand ((_ int2bv 64) var1989!1) ((_ int2bv 64) var3325)))) ; Statement: $l15 = l3 & $l14 
(define-const var1519 Int (ite (> var2456 0) 1 (ite (< var2456 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1519 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2136!3 var1022!1 "write" var3230!1 var1989!1 var712!3 var2434!5 var3241!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2136!4 var1531)
(declare-const var1022!2 var1165)
(declare-const var2515 String)
(declare-const var3230!2 ClassObject)
(declare-const var1989!2 Int)
(declare-const var712!4 var1054)
(declare-const var2434!6 var2347)
(declare-const var3241!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2136!4 var1022!2 var3230!2 var1989!2 var712!4 var2434!6 var3241!4 var1989!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2136!5 var1531)
(declare-const var1022!3 var1165)
(declare-const var3230!3 ClassObject)
(declare-const var1989!3 Int)
(declare-const var712!5 var1054)
(declare-const var2434!7 var2347)
(declare-const var3241!5 String)
(declare-const var1989!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2136!5 var1022!3 "writeArrayMapping" var3230!3 var1989!4 var712!5 var2434!7 var3241!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2136!6 var1531)
(declare-const var1022!4 var1165)
(declare-const var1654 String)
(declare-const var3230!4 ClassObject)
(declare-const var1989!5 Int)
(declare-const var712!6 var1054)
(declare-const var2434!8 var2347)
(declare-const var3241!6 String)
(assert true)
(define-const var2748 (Array Int Int) (toByteArray/1561254549 var2434!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3613 var790 (classLoader/1229018461 var2136!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1218 Int (getLength-Arr-Int-1 var2748)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var778 ClassObject (defineClassPublic/-885393557 var3613 var3256 var2748 0 var1218)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1730 var3395) ; Statement: $r35 := @caughtexception 
(assert (not (= var1730 null-var3395)))
(define-const var3580 var3706 var3706-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var347 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var347)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var347!1 String)
(assert (= var347!1 ""))
(assert true)
(define-const var3937 String (append/672562846 var347!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var347!2 String)
(assert (= var347!2 (str.++ var347!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var809 String (append/-1031950772 var3937 (cast-from-ClassObject-to-var3015 var3230!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3937!1 String)
(assert (str.prefixof var3937 var3937!1))
(assert true)
(define-const var3206 String (toString/-2075883882 var809)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3580 var3206 var1730)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3580!1 var3706)
(declare-const var3206!1 String)
(declare-const var1730!1 var3395)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2347-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1054_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3706-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3015=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1531=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2136=r15, var3230=r7, var1165=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1022=r16, var3480=com.alibaba.fastjson2.codec.BeanInfo, var3541=r21, var1054=java.util.List, var712=r5, var1989=l3, var2347=com.alibaba.fastjson2.internal.asm.ClassWriter, var2434=$r49, var1813=java.util.function.Function, var3595=null, var717=null_type, var850=$r50, var2408=$r3, var620=java.util.concurrent.atomic.AtomicLong, var3571=$r2, var2439=$l0, var3860=$r4, var905=$r6, var2650=$i1, var1305=$r12, var3419=$r51, var3089=$r10, var3207=$r9, var515=$r11, var3124=$r41, var348=$r13, var1308=$r33, var2984=$r14, var2219=java.lang.Package, var1565=$r34, var3241=r45, var3256=r44, var1384=$i2, var1240=com.alibaba.fastjson2.internal.asm.ASMUtils, var3042=r46, var431=$r47, var517=52, var1018=49, var178=com.alibaba.fastjson2.JSONWriter$Feature, var775=$r48, var3325=$l14, var2456=$l15, var1519=$b16, var2515="write", var1654="writeArrayMapping", var2748=$r27, var790=com.alibaba.fastjson2.util.DynamicClassLoader, var3613=$r17, var1218=$i4, var778=$r28, var3395=java.lang.Throwable, var1730=$r35, var3706=com.alibaba.fastjson2.JSONException, var3580=$r55, var347=$r54, var3937=$r38, var3015=java.lang.Object, var809=$r39, var3206=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1531, r15=var2136, r7=var3230, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1165, r16=var1022, com.alibaba.fastjson2.codec.BeanInfo=var3480, r21=var3541, java.util.List=var1054, r5=var712, l3=var1989, com.alibaba.fastjson2.internal.asm.ClassWriter=var2347, $r49=var2434, java.util.function.Function=var1813, null=var3595, null_type=var717, $r50=var850, $r3=var2408, java.util.concurrent.atomic.AtomicLong=var620, $r2=var3571, $l0=var2439, $r4=var3860, $r6=var905, $i1=var2650, $r12=var1305, $r51=var3419, $r10=var3089, $r9=var3207, $r11=var515, $r41=var3124, $r13=var348, $r33=var1308, $r14=var2984, java.lang.Package=var2219, $r34=var1565, r45=var3241, r44=var3256, $i2=var1384, com.alibaba.fastjson2.internal.asm.ASMUtils=var1240, r46=var3042, $r47=var431, 52=var517, 49=var1018, com.alibaba.fastjson2.JSONWriter$Feature=var178, $r48=var775, $l14=var3325, $l15=var2456, $b16=var1519, "write"=var2515, "writeArrayMapping"=var1654, $r27=var2748, com.alibaba.fastjson2.util.DynamicClassLoader=var790, $r17=var3613, $i4=var1218, $r28=var778, java.lang.Throwable=var3395, $r35=var1730, com.alibaba.fastjson2.JSONException=var3706, $r55=var3580, $r54=var347, $r38=var3937, java.lang.Object=var3015, $r39=var809, $r40=var3206}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10