(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var434 0)
(declare-sort var1951 0)
(declare-sort var3380 0)
(declare-sort var998 0)
(declare-sort var159 0)
(declare-sort var3243 0)
(declare-sort var3343 0)
(declare-sort var118 0)
(declare-sort var1610 0)
(declare-sort var2250 0)
(declare-sort var1510 0)
(declare-sort var2452 0)
(declare-sort var1597 0)
(declare-sort var480 0)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var434!class ClassObject)
(declare-fun var159-init () var159)
(declare-fun <init>/1561585841 (var159 var3243) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var118) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var998_size/-959786421 (var998) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1610)
(declare-fun visit/1245821975 (var159 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var434 var998 var159 String) void)
(declare-fun genMethodInit/736566045 (var434 var998 var159 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var434 var1951 ClassObject var998 var159 String Int) void)
(declare-fun mask/-2077367092 (var1510) Int)
(declare-fun genMethodWrite/551741206 (var434 var1951 ClassObject var998 var159 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var434 var1951 ClassObject Int var998 var159 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var434 var1951 String ClassObject Int var998 var159 String) void)
(declare-fun toByteArray/1561254549 (var159) (Array Int Int))
(declare-fun classLoader/1229018461 (var434) var2452)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2452 String (Array Int Int) Int Int) ClassObject)
(declare-fun var480-init () var480)
(declare-fun append/-1031950772 (String var41) String)
(declare-fun cast-from-ClassObject-to-var41 (ClassObject) var41)
(declare-fun <init>/-743866570 (var480 String var1597) void)
(declare-const null-var434 var434)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1951 var1951)
(declare-const null-var3380 var3380)
(declare-const null-var998 var998)
(declare-const null-Int Int)
(declare-const null-NullType var3343)
(declare-const null-var3243 var3243)
(declare-const var434-seed var118)
(declare-const null-var1610 var1610)
(declare-const var2250-TYPE_OBJECT_WRITER_1 String)
(declare-const var434-INTERFACES (Array Int String))
(declare-const var1510-BeanToArray var1510)
(declare-const null-var1597 var1597)
(declare-const var3756 var434) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3756 null-var434)))
(declare-const var3766 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3766 null-ClassObject)))
(declare-const var2180 var1951) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2180 null-var1951)))
(declare-const var2328 var3380) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2328 null-var3380)))
(declare-const var1668 var998) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1668 null-var998)))
(declare-const var3950 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3950 null-Int)))
(define-const var3542 var159 var159-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3542 null-var3243)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3542!1 var159)
(declare-const var1578 var3343)
(define-const var2185 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2185)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2185!1 String)
(assert (= var2185!1 ""))
(assert true)
(define-const var1313 String (append/672562846 var2185!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2185!2 String)
(assert (= var2185!2 (str.++ var2185!1 "OWG_")))
(define-const var189 var118 var434-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1705 Int (incrementAndGet/636047358 var189)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3187 String (append/-901862667 var1313 var1705)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1313!1 String)
(assert (str.prefixof var1313 var1313!1))
(assert true)
(define-const var3397 String (append/672562846 var3187 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3187!1 String)
(assert (= var3187!1 (str.++ var3187 "_")))
(define-const var3260 Int (var998_size/-959786421 var1668)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3323 String (append/-1001720160 var3397 var3260)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3397!1 String)
(assert (str.prefixof var3397 var3397!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3766 null-ClassObject))) ; Cond: r7 != null 
(define-const var1791 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1791)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1791!1 String)
(assert (= var1791!1 ""))
(assert true)
(define-const var3849 String (append/672562846 var1791!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1791!2 String)
(assert (= var1791!2 (str.++ var1791!1 "_")))
(assert true)
(define-const var3317 String (getSimpleName/-390194377 var3766)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var30 String (append/672562846 var3849 var3317)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3849!1 String)
(assert (= var3849!1 (str.++ var3849 var3317)))
(assert true)
(define-const var3869 String (toString/-2075883882 var30)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2604 String (append/672562846 var3323 var3869)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3323!1 String)
(assert (= var3323!1 (str.++ var3323 var3869)))
(assert true)
(define-const var3835 String (toString/-2075883882 var2604)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3145 ClassObject var434!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3856 var1610 (getPackage/-1841711535 var3145)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3856 null-var1610)) ; Cond: $r34 == null 
(define-const var129 String var3835) ; Statement: r45 = $r33 
(define-const var3613 String var3835) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1182 Int (var998_size/-959786421 var1668)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1182 1) true)) ; Intersect: Cond: $i2 == 1  and Non Conditional 
(define-const var1037 String var2250-TYPE_OBJECT_WRITER_1) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2258 (Array Int String) var434-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3542!1 52 49 var129 var1037 var2258)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3542!2 var159)
(declare-const var1028 Int)
(declare-const var3002 Int)
(declare-const var129!1 String)
(declare-const var1037!1 String)
(declare-const var2258!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3756 var1668 var3542!2 var1037!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3756!1 var434)
(declare-const var1668!1 var998)
(declare-const var3542!3 var159)
(declare-const var1037!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3756!1 var1668!1 var3542!3 var129!1 var1037!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3756!2 var434)
(declare-const var1668!2 var998)
(declare-const var3542!4 var159)
(declare-const var129!2 String)
(declare-const var1037!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3756!2 var2180 var3766 var1668!2 var3542!4 var129!2 var3950)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3756!3 var434)
(declare-const var2180!1 var1951)
(declare-const var3766!1 ClassObject)
(declare-const var1668!3 var998)
(declare-const var3542!5 var159)
(declare-const var129!3 String)
(declare-const var3950!1 Int)
(define-const var3818 var1510 var1510-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3135 Int (mask/-2077367092 var3818)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3068 Int (bv2nat (bvand ((_ int2bv 64) var3950!1) ((_ int2bv 64) var3135)))) ; Statement: $l15 = l3 & $l14 
(define-const var320 Int (ite (> var3068 0) 1 (ite (< var3068 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var320 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3756!3 var2180!1 var3766!1 var1668!3 var3542!5 var129!3 var3950!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3756!4 var434)
(declare-const var2180!2 var1951)
(declare-const var3766!2 ClassObject)
(declare-const var1668!4 var998)
(declare-const var3542!6 var159)
(declare-const var129!4 String)
(declare-const var3950!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3756!4 var2180!2 var3766!2 var3950!2 var1668!4 var3542!6 var129!4 var3950!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3756!5 var434)
(declare-const var2180!3 var1951)
(declare-const var3766!3 ClassObject)
(declare-const var3950!3 Int)
(declare-const var1668!5 var998)
(declare-const var3542!7 var159)
(declare-const var129!5 String)
(declare-const var3950!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3756!5 var2180!3 "writeArrayMapping" var3766!3 var3950!4 var1668!5 var3542!7 var129!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3756!6 var434)
(declare-const var2180!4 var1951)
(declare-const var3376 String)
(declare-const var3766!4 ClassObject)
(declare-const var3950!5 Int)
(declare-const var1668!6 var998)
(declare-const var3542!8 var159)
(declare-const var129!6 String)
(assert true)
(define-const var1601 (Array Int Int) (toByteArray/1561254549 var3542!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2301 var2452 (classLoader/1229018461 var3756!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3867 Int (getLength-Arr-Int-1 var1601)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var544 ClassObject (defineClassPublic/-885393557 var2301 var3613 var1601 0 var3867)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3519 var1597) ; Statement: $r35 := @caughtexception 
(assert (not (= var3519 null-var1597)))
(define-const var3986 var480 var480-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2467 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2467)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2467!1 String)
(assert (= var2467!1 ""))
(assert true)
(define-const var2023 String (append/672562846 var2467!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2467!2 String)
(assert (= var2467!2 (str.++ var2467!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1148 String (append/-1031950772 var2023 (cast-from-ClassObject-to-var41 var3766!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2023!1 String)
(assert (str.prefixof var2023 var2023!1))
(assert true)
(define-const var3750 String (toString/-2075883882 var1148)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3986 var3750 var3519)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3986!1 var480)
(declare-const var3750!1 String)
(declare-const var3519!1 var1597)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var159-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var998_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var480-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var41=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var434=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3756=r15, var3766=r7, var1951=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2180=r16, var3380=com.alibaba.fastjson2.codec.BeanInfo, var2328=r21, var998=java.util.List, var1668=r5, var3950=l3, var159=com.alibaba.fastjson2.internal.asm.ClassWriter, var3542=$r49, var3243=java.util.function.Function, var1578=null, var3343=null_type, var2185=$r50, var1313=$r3, var118=java.util.concurrent.atomic.AtomicLong, var189=$r2, var1705=$l0, var3187=$r4, var3397=$r6, var3260=$i1, var3323=$r12, var1791=$r51, var3849=$r10, var3317=$r9, var30=$r11, var3869=$r41, var2604=$r13, var3835=$r33, var3145=$r14, var1610=java.lang.Package, var3856=$r34, var129=r45, var3613=r44, var1182=$i2, var2250=com.alibaba.fastjson2.internal.asm.ASMUtils, var1037=r46, var2258=$r47, var1028=52, var3002=49, var1510=com.alibaba.fastjson2.JSONWriter$Feature, var3818=$r48, var3135=$l14, var3068=$l15, var320=$b16, var3376="writeArrayMapping", var1601=$r27, var2452=com.alibaba.fastjson2.util.DynamicClassLoader, var2301=$r17, var3867=$i4, var544=$r28, var1597=java.lang.Throwable, var3519=$r35, var480=com.alibaba.fastjson2.JSONException, var3986=$r55, var2467=$r54, var2023=$r38, var41=java.lang.Object, var1148=$r39, var3750=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var434, r15=var3756, r7=var3766, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1951, r16=var2180, com.alibaba.fastjson2.codec.BeanInfo=var3380, r21=var2328, java.util.List=var998, r5=var1668, l3=var3950, com.alibaba.fastjson2.internal.asm.ClassWriter=var159, $r49=var3542, java.util.function.Function=var3243, null=var1578, null_type=var3343, $r50=var2185, $r3=var1313, java.util.concurrent.atomic.AtomicLong=var118, $r2=var189, $l0=var1705, $r4=var3187, $r6=var3397, $i1=var3260, $r12=var3323, $r51=var1791, $r10=var3849, $r9=var3317, $r11=var30, $r41=var3869, $r13=var2604, $r33=var3835, $r14=var3145, java.lang.Package=var1610, $r34=var3856, r45=var129, r44=var3613, $i2=var1182, com.alibaba.fastjson2.internal.asm.ASMUtils=var2250, r46=var1037, $r47=var2258, 52=var1028, 49=var3002, com.alibaba.fastjson2.JSONWriter$Feature=var1510, $r48=var3818, $l14=var3135, $l15=var3068, $b16=var320, "writeArrayMapping"=var3376, $r27=var1601, com.alibaba.fastjson2.util.DynamicClassLoader=var2452, $r17=var2301, $i4=var3867, $r28=var544, java.lang.Throwable=var1597, $r35=var3519, com.alibaba.fastjson2.JSONException=var480, $r55=var3986, $r54=var2467, $r38=var2023, java.lang.Object=var41, $r39=var1148, $r40=var3750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10