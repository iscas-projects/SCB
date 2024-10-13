(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort var3003 0)
(declare-sort var2697 0)
(declare-sort var1226 0)
(declare-sort var730 0)
(declare-sort var1554 0)
(declare-sort var2495 0)
(declare-sort var3347 0)
(declare-sort var1646 0)
(declare-sort var1304 0)
(declare-sort var3200 0)
(declare-sort var803 0)
(declare-sort var1789 0)
(declare-sort var3214 0)
(declare-sort var256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3888!class ClassObject)
(declare-fun var730-init () var730)
(declare-fun <init>/1561585841 (var730 var1554) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3347) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1226_size/-959786421 (var1226) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1646)
(declare-fun visit/1245821975 (var730 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3888 var1226 var730 String) void)
(declare-fun genMethodInit/736566045 (var3888 var1226 var730 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3888 var3003 ClassObject var1226 var730 String Int) void)
(declare-fun mask/-2077367092 (var3200) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3888 var3003 String ClassObject Int var1226 var730 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3888 var3003 ClassObject Int var1226 var730 String Int) void)
(declare-fun toByteArray/1561254549 (var730) (Array Int Int))
(declare-fun classLoader/1229018461 (var3888) var803)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var803 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3214-init () var3214)
(declare-fun append/-1031950772 (String var256) String)
(declare-fun cast-from-ClassObject-to-var256 (ClassObject) var256)
(declare-fun <init>/-743866570 (var3214 String var1789) void)
(declare-const null-var3888 var3888)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3003 var3003)
(declare-const null-var2697 var2697)
(declare-const null-var1226 var1226)
(declare-const null-Int Int)
(declare-const null-NullType var2495)
(declare-const null-var1554 var1554)
(declare-const var3888-seed var3347)
(declare-const null-var1646 var1646)
(declare-const var1304-TYPE_OBJECT_WRITER_1 String)
(declare-const var3888-INTERFACES (Array Int String))
(declare-const var3200-BeanToArray var3200)
(declare-const null-var1789 var1789)
(declare-const var817 var3888) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var817 null-var3888)))
(declare-const var3526 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3526 null-ClassObject)))
(declare-const var2889 var3003) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2889 null-var3003)))
(declare-const var3805 var2697) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3805 null-var2697)))
(declare-const var3851 var1226) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3851 null-var1226)))
(declare-const var350 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var350 null-Int)))
(define-const var3206 var730 var730-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3206 null-var1554)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3206!1 var730)
(declare-const var2487 var2495)
(define-const var591 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var2226 String (append/672562846 var591!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 "OWG_")))
(define-const var1585 var3347 var3888-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2418 Int (incrementAndGet/636047358 var1585)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3360 String (append/-901862667 var2226 var2418)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2226!1 String)
(assert (str.prefixof var2226 var2226!1))
(assert true)
(define-const var3941 String (append/672562846 var3360 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3360!1 String)
(assert (= var3360!1 (str.++ var3360 "_")))
(define-const var1280 Int (var1226_size/-959786421 var3851)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3034 String (append/-1001720160 var3941 var1280)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3941!1 String)
(assert (str.prefixof var3941 var3941!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3526 null-ClassObject))) ; Cond: r7 != null 
(define-const var2758 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2758)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2758!1 String)
(assert (= var2758!1 ""))
(assert true)
(define-const var3977 String (append/672562846 var2758!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2758!2 String)
(assert (= var2758!2 (str.++ var2758!1 "_")))
(assert true)
(define-const var2093 String (getSimpleName/-390194377 var3526)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2897 String (append/672562846 var3977 var2093)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3977!1 String)
(assert (= var3977!1 (str.++ var3977 var2093)))
(assert true)
(define-const var1297 String (toString/-2075883882 var2897)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var330 String (append/672562846 var3034 var1297)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3034!1 String)
(assert (= var3034!1 (str.++ var3034 var1297)))
(assert true)
(define-const var96 String (toString/-2075883882 var330)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1916 ClassObject var3888!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3507 var1646 (getPackage/-1841711535 var1916)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3507 null-var1646)) ; Cond: $r34 == null 
(define-const var881 String var96) ; Statement: r45 = $r33 
(define-const var1122 String var96) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3937 Int (var1226_size/-959786421 var3851)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3937 1) true)) ; Intersect: Cond: $i2 == 1  and Non Conditional 
(define-const var3731 String var1304-TYPE_OBJECT_WRITER_1) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var781 (Array Int String) var3888-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3206!1 52 49 var881 var3731 var781)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3206!2 var730)
(declare-const var3361 Int)
(declare-const var2678 Int)
(declare-const var881!1 String)
(declare-const var3731!1 String)
(declare-const var781!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var817 var3851 var3206!2 var3731!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var817!1 var3888)
(declare-const var3851!1 var1226)
(declare-const var3206!3 var730)
(declare-const var3731!2 String)
(assert true)
;(assert (genMethodInit/736566045 var817!1 var3851!1 var3206!3 var881!1 var3731!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var817!2 var3888)
(declare-const var3851!2 var1226)
(declare-const var3206!4 var730)
(declare-const var881!2 String)
(declare-const var3731!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var817!2 var2889 var3526 var3851!2 var3206!4 var881!2 var350)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var817!3 var3888)
(declare-const var2889!1 var3003)
(declare-const var3526!1 ClassObject)
(declare-const var3851!3 var1226)
(declare-const var3206!5 var730)
(declare-const var881!3 String)
(declare-const var350!1 Int)
(define-const var2662 var3200 var3200-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var988 Int (mask/-2077367092 var2662)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var479 Int (bv2nat (bvand ((_ int2bv 64) var350!1) ((_ int2bv 64) var988)))) ; Statement: $l15 = l3 & $l14 
(define-const var856 Int (ite (> var479 0) 1 (ite (< var479 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var856 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var817!3 var2889!1 "write" var3526!1 var350!1 var3851!3 var3206!5 var881!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var817!4 var3888)
(declare-const var2889!2 var3003)
(declare-const var2930 String)
(declare-const var3526!2 ClassObject)
(declare-const var350!2 Int)
(declare-const var3851!4 var1226)
(declare-const var3206!6 var730)
(declare-const var881!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var817!4 var2889!2 var3526!2 var350!2 var3851!4 var3206!6 var881!4 var350!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var817!5 var3888)
(declare-const var2889!3 var3003)
(declare-const var3526!3 ClassObject)
(declare-const var350!3 Int)
(declare-const var3851!5 var1226)
(declare-const var3206!7 var730)
(declare-const var881!5 String)
(declare-const var350!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var817!5 var2889!3 "writeArrayMapping" var3526!3 var350!4 var3851!5 var3206!7 var881!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var817!6 var3888)
(declare-const var2889!4 var3003)
(declare-const var2989 String)
(declare-const var3526!4 ClassObject)
(declare-const var350!5 Int)
(declare-const var3851!6 var1226)
(declare-const var3206!8 var730)
(declare-const var881!6 String)
(assert true)
(define-const var1259 (Array Int Int) (toByteArray/1561254549 var3206!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3322 var803 (classLoader/1229018461 var817!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var404 Int (getLength-Arr-Int-1 var1259)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1247 ClassObject (defineClassPublic/-885393557 var3322 var1122 var1259 0 var404)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var944 var1789) ; Statement: $r35 := @caughtexception 
(assert (not (= var944 null-var1789)))
(define-const var1446 var3214 var3214-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var475 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var475)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var475!1 String)
(assert (= var475!1 ""))
(assert true)
(define-const var2163 String (append/672562846 var475!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var475!2 String)
(assert (= var475!2 (str.++ var475!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var205 String (append/-1031950772 var2163 (cast-from-ClassObject-to-var256 var3526!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2163!1 String)
(assert (str.prefixof var2163 var2163!1))
(assert true)
(define-const var331 String (toString/-2075883882 var205)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1446 var331 var944)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1446!1 var3214)
(declare-const var331!1 String)
(declare-const var944!1 var1789)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var730-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1226_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3214-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var256=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3888=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var817=r15, var3526=r7, var3003=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2889=r16, var2697=com.alibaba.fastjson2.codec.BeanInfo, var3805=r21, var1226=java.util.List, var3851=r5, var350=l3, var730=com.alibaba.fastjson2.internal.asm.ClassWriter, var3206=$r49, var1554=java.util.function.Function, var2487=null, var2495=null_type, var591=$r50, var2226=$r3, var3347=java.util.concurrent.atomic.AtomicLong, var1585=$r2, var2418=$l0, var3360=$r4, var3941=$r6, var1280=$i1, var3034=$r12, var2758=$r51, var3977=$r10, var2093=$r9, var2897=$r11, var1297=$r41, var330=$r13, var96=$r33, var1916=$r14, var1646=java.lang.Package, var3507=$r34, var881=r45, var1122=r44, var3937=$i2, var1304=com.alibaba.fastjson2.internal.asm.ASMUtils, var3731=r46, var781=$r47, var3361=52, var2678=49, var3200=com.alibaba.fastjson2.JSONWriter$Feature, var2662=$r48, var988=$l14, var479=$l15, var856=$b16, var2930="write", var2989="writeArrayMapping", var1259=$r27, var803=com.alibaba.fastjson2.util.DynamicClassLoader, var3322=$r17, var404=$i4, var1247=$r28, var1789=java.lang.Throwable, var944=$r35, var3214=com.alibaba.fastjson2.JSONException, var1446=$r55, var475=$r54, var2163=$r38, var256=java.lang.Object, var205=$r39, var331=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3888, r15=var817, r7=var3526, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3003, r16=var2889, com.alibaba.fastjson2.codec.BeanInfo=var2697, r21=var3805, java.util.List=var1226, r5=var3851, l3=var350, com.alibaba.fastjson2.internal.asm.ClassWriter=var730, $r49=var3206, java.util.function.Function=var1554, null=var2487, null_type=var2495, $r50=var591, $r3=var2226, java.util.concurrent.atomic.AtomicLong=var3347, $r2=var1585, $l0=var2418, $r4=var3360, $r6=var3941, $i1=var1280, $r12=var3034, $r51=var2758, $r10=var3977, $r9=var2093, $r11=var2897, $r41=var1297, $r13=var330, $r33=var96, $r14=var1916, java.lang.Package=var1646, $r34=var3507, r45=var881, r44=var1122, $i2=var3937, com.alibaba.fastjson2.internal.asm.ASMUtils=var1304, r46=var3731, $r47=var781, 52=var3361, 49=var2678, com.alibaba.fastjson2.JSONWriter$Feature=var3200, $r48=var2662, $l14=var988, $l15=var479, $b16=var856, "write"=var2930, "writeArrayMapping"=var2989, $r27=var1259, com.alibaba.fastjson2.util.DynamicClassLoader=var803, $r17=var3322, $i4=var404, $r28=var1247, java.lang.Throwable=var1789, $r35=var944, com.alibaba.fastjson2.JSONException=var3214, $r55=var1446, $r54=var475, $r38=var2163, java.lang.Object=var256, $r39=var205, $r40=var331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10