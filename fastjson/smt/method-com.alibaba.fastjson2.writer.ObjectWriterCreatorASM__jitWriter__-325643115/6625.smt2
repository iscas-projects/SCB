(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3226 0)
(declare-sort var613 0)
(declare-sort var399 0)
(declare-sort var104 0)
(declare-sort var3425 0)
(declare-sort var1479 0)
(declare-sort var1678 0)
(declare-sort var22 0)
(declare-sort var1618 0)
(declare-sort var309 0)
(declare-sort var2668 0)
(declare-sort var233 0)
(declare-sort var2187 0)
(declare-sort var291 0)
(declare-sort var1654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3226!class ClassObject)
(declare-fun var3425-init () var3425)
(declare-fun <init>/1561585841 (var3425 var1479) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var22) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var104_size/-959786421 (var104) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1618)
(declare-fun visit/1245821975 (var3425 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3226 var104 var3425 String) void)
(declare-fun genMethodInit/736566045 (var3226 var104 var3425 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3226 var613 ClassObject var104 var3425 String Int) void)
(declare-fun mask/-2077367092 (var2668) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3226 var613 String ClassObject Int var104 var3425 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3226 var613 ClassObject Int var104 var3425 String Int) void)
(declare-fun toByteArray/1561254549 (var3425) (Array Int Int))
(declare-fun classLoader/1229018461 (var3226) var233)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var233 String (Array Int Int) Int Int) ClassObject)
(declare-fun var291-init () var291)
(declare-fun append/-1031950772 (String var1654) String)
(declare-fun cast-from-ClassObject-to-var1654 (ClassObject) var1654)
(declare-fun <init>/-743866570 (var291 String var2187) void)
(declare-const null-var3226 var3226)
(declare-const null-ClassObject ClassObject)
(declare-const null-var613 var613)
(declare-const null-var399 var399)
(declare-const null-var104 var104)
(declare-const null-Int Int)
(declare-const null-NullType var1678)
(declare-const null-var1479 var1479)
(declare-const var3226-seed var22)
(declare-const null-var1618 var1618)
(declare-const var309-TYPE_OBJECT_WRITER_2 String)
(declare-const var3226-INTERFACES (Array Int String))
(declare-const var2668-BeanToArray var2668)
(declare-const null-var2187 var2187)
(declare-const var3862 var3226) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3862 null-var3226)))
(declare-const var338 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var338 null-ClassObject)))
(declare-const var3179 var613) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3179 null-var613)))
(declare-const var2608 var399) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2608 null-var399)))
(declare-const var3105 var104) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3105 null-var104)))
(declare-const var766 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var766 null-Int)))
(define-const var145 var3425 var3425-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var145 null-var1479)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var145!1 var3425)
(declare-const var2386 var1678)
(define-const var1710 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1710)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1710!1 String)
(assert (= var1710!1 ""))
(assert true)
(define-const var1133 String (append/672562846 var1710!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1710!2 String)
(assert (= var1710!2 (str.++ var1710!1 "OWG_")))
(define-const var2868 var22 var3226-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3111 Int (incrementAndGet/636047358 var2868)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3312 String (append/-901862667 var1133 var3111)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1133!1 String)
(assert (str.prefixof var1133 var1133!1))
(assert true)
(define-const var3660 String (append/672562846 var3312 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 "_")))
(define-const var2434 Int (var104_size/-959786421 var3105)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2340 String (append/-1001720160 var3660 var2434)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3660!1 String)
(assert (str.prefixof var3660 var3660!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var338 null-ClassObject))) ; Cond: r7 != null 
(define-const var669 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var669)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var669!1 String)
(assert (= var669!1 ""))
(assert true)
(define-const var1797 String (append/672562846 var669!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var669!2 String)
(assert (= var669!2 (str.++ var669!1 "_")))
(assert true)
(define-const var1208 String (getSimpleName/-390194377 var338)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3254 String (append/672562846 var1797 var1208)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1797!1 String)
(assert (= var1797!1 (str.++ var1797 var1208)))
(assert true)
(define-const var1017 String (toString/-2075883882 var3254)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2925 String (append/672562846 var2340 var1017)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2340!1 String)
(assert (= var2340!1 (str.++ var2340 var1017)))
(assert true)
(define-const var2165 String (toString/-2075883882 var2925)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2330 ClassObject var3226!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2382 var1618 (getPackage/-1841711535 var2330)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2382 null-var1618)) ; Cond: $r34 == null 
(define-const var687 String var2165) ; Statement: r45 = $r33 
(define-const var671 String var2165) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var935 Int (var104_size/-959786421 var3105)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var935 2) (and (not (= var935 1)) true))) ; Intersect: Cond: $i2 == 2  and Intersect: Negate: Cond: $i2 == 1   and Non Conditional  
(define-const var733 String var309-TYPE_OBJECT_WRITER_2) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var75 (Array Int String) var3226-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var145!1 52 49 var687 var733 var75)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var145!2 var3425)
(declare-const var1024 Int)
(declare-const var3098 Int)
(declare-const var687!1 String)
(declare-const var733!1 String)
(declare-const var75!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3862 var3105 var145!2 var733!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3862!1 var3226)
(declare-const var3105!1 var104)
(declare-const var145!3 var3425)
(declare-const var733!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3862!1 var3105!1 var145!3 var687!1 var733!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3862!2 var3226)
(declare-const var3105!2 var104)
(declare-const var145!4 var3425)
(declare-const var687!2 String)
(declare-const var733!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3862!2 var3179 var338 var3105!2 var145!4 var687!2 var766)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3862!3 var3226)
(declare-const var3179!1 var613)
(declare-const var338!1 ClassObject)
(declare-const var3105!3 var104)
(declare-const var145!5 var3425)
(declare-const var687!3 String)
(declare-const var766!1 Int)
(define-const var2142 var2668 var2668-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3121 Int (mask/-2077367092 var2142)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3485 Int (bv2nat (bvand ((_ int2bv 64) var766!1) ((_ int2bv 64) var3121)))) ; Statement: $l15 = l3 & $l14 
(define-const var2893 Int (ite (> var3485 0) 1 (ite (< var3485 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var2893 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3862!3 var3179!1 "write" var338!1 var766!1 var3105!3 var145!5 var687!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3862!4 var3226)
(declare-const var3179!2 var613)
(declare-const var1020 String)
(declare-const var338!2 ClassObject)
(declare-const var766!2 Int)
(declare-const var3105!4 var104)
(declare-const var145!6 var3425)
(declare-const var687!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3862!4 var3179!2 var338!2 var766!2 var3105!4 var145!6 var687!4 var766!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3862!5 var3226)
(declare-const var3179!3 var613)
(declare-const var338!3 ClassObject)
(declare-const var766!3 Int)
(declare-const var3105!5 var104)
(declare-const var145!7 var3425)
(declare-const var687!5 String)
(declare-const var766!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3862!5 var3179!3 "writeArrayMapping" var338!3 var766!4 var3105!5 var145!7 var687!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3862!6 var3226)
(declare-const var3179!4 var613)
(declare-const var2695 String)
(declare-const var338!4 ClassObject)
(declare-const var766!5 Int)
(declare-const var3105!6 var104)
(declare-const var145!8 var3425)
(declare-const var687!6 String)
(assert true)
(define-const var1984 (Array Int Int) (toByteArray/1561254549 var145!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3460 var233 (classLoader/1229018461 var3862!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1991 Int (getLength-Arr-Int-1 var1984)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2204 ClassObject (defineClassPublic/-885393557 var3460 var671 var1984 0 var1991)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1544 var2187) ; Statement: $r35 := @caughtexception 
(assert (not (= var1544 null-var2187)))
(define-const var657 var291 var291-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var490 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var490)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var490!1 String)
(assert (= var490!1 ""))
(assert true)
(define-const var202 String (append/672562846 var490!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var490!2 String)
(assert (= var490!2 (str.++ var490!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3531 String (append/-1031950772 var202 (cast-from-ClassObject-to-var1654 var338!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var202!1 String)
(assert (str.prefixof var202 var202!1))
(assert true)
(define-const var143 String (toString/-2075883882 var3531)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var657 var143 var1544)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var657!1 var291)
(declare-const var143!1 String)
(declare-const var1544!1 var2187)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3425-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var104_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var291-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1654=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3226=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3862=r15, var338=r7, var613=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3179=r16, var399=com.alibaba.fastjson2.codec.BeanInfo, var2608=r21, var104=java.util.List, var3105=r5, var766=l3, var3425=com.alibaba.fastjson2.internal.asm.ClassWriter, var145=$r49, var1479=java.util.function.Function, var2386=null, var1678=null_type, var1710=$r50, var1133=$r3, var22=java.util.concurrent.atomic.AtomicLong, var2868=$r2, var3111=$l0, var3312=$r4, var3660=$r6, var2434=$i1, var2340=$r12, var669=$r51, var1797=$r10, var1208=$r9, var3254=$r11, var1017=$r41, var2925=$r13, var2165=$r33, var2330=$r14, var1618=java.lang.Package, var2382=$r34, var687=r45, var671=r44, var935=$i2, var309=com.alibaba.fastjson2.internal.asm.ASMUtils, var733=r46, var75=$r47, var1024=52, var3098=49, var2668=com.alibaba.fastjson2.JSONWriter$Feature, var2142=$r48, var3121=$l14, var3485=$l15, var2893=$b16, var1020="write", var2695="writeArrayMapping", var1984=$r27, var233=com.alibaba.fastjson2.util.DynamicClassLoader, var3460=$r17, var1991=$i4, var2204=$r28, var2187=java.lang.Throwable, var1544=$r35, var291=com.alibaba.fastjson2.JSONException, var657=$r55, var490=$r54, var202=$r38, var1654=java.lang.Object, var3531=$r39, var143=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3226, r15=var3862, r7=var338, com.alibaba.fastjson2.writer.ObjectWriterProvider=var613, r16=var3179, com.alibaba.fastjson2.codec.BeanInfo=var399, r21=var2608, java.util.List=var104, r5=var3105, l3=var766, com.alibaba.fastjson2.internal.asm.ClassWriter=var3425, $r49=var145, java.util.function.Function=var1479, null=var2386, null_type=var1678, $r50=var1710, $r3=var1133, java.util.concurrent.atomic.AtomicLong=var22, $r2=var2868, $l0=var3111, $r4=var3312, $r6=var3660, $i1=var2434, $r12=var2340, $r51=var669, $r10=var1797, $r9=var1208, $r11=var3254, $r41=var1017, $r13=var2925, $r33=var2165, $r14=var2330, java.lang.Package=var1618, $r34=var2382, r45=var687, r44=var671, $i2=var935, com.alibaba.fastjson2.internal.asm.ASMUtils=var309, r46=var733, $r47=var75, 52=var1024, 49=var3098, com.alibaba.fastjson2.JSONWriter$Feature=var2668, $r48=var2142, $l14=var3121, $l15=var3485, $b16=var2893, "write"=var1020, "writeArrayMapping"=var2695, $r27=var1984, com.alibaba.fastjson2.util.DynamicClassLoader=var233, $r17=var3460, $i4=var1991, $r28=var2204, java.lang.Throwable=var2187, $r35=var1544, com.alibaba.fastjson2.JSONException=var291, $r55=var657, $r54=var490, $r38=var202, java.lang.Object=var1654, $r39=var3531, $r40=var143}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10