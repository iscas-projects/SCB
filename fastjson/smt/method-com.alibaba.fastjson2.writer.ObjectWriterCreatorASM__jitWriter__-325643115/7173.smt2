(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var3014 0)
(declare-sort var3727 0)
(declare-sort var272 0)
(declare-sort var2084 0)
(declare-sort var3869 0)
(declare-sort var78 0)
(declare-sort var589 0)
(declare-sort var951 0)
(declare-sort var3304 0)
(declare-sort var1968 0)
(declare-sort var3787 0)
(declare-sort var625 0)
(declare-sort var2863 0)
(declare-sort var921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3170!class ClassObject)
(declare-fun var2084-init () var2084)
(declare-fun <init>/1561585841 (var2084 var3869) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var589) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var272_size/-959786421 (var272) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var951)
(declare-fun visit/1245821975 (var2084 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3170 var272 var2084 String) void)
(declare-fun genMethodInit/736566045 (var3170 var272 var2084 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3170 var3014 ClassObject var272 var2084 String Int) void)
(declare-fun mask/-2077367092 (var1968) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3170 var3014 String ClassObject Int var272 var2084 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3170 var3014 ClassObject Int var272 var2084 String Int) void)
(declare-fun toByteArray/1561254549 (var2084) (Array Int Int))
(declare-fun classLoader/1229018461 (var3170) var3787)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3787 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2863-init () var2863)
(declare-fun append/-1031950772 (String var921) String)
(declare-fun cast-from-ClassObject-to-var921 (ClassObject) var921)
(declare-fun <init>/-743866570 (var2863 String var625) void)
(declare-const null-var3170 var3170)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3014 var3014)
(declare-const null-var3727 var3727)
(declare-const null-var272 var272)
(declare-const null-Int Int)
(declare-const null-NullType var78)
(declare-const null-var3869 var3869)
(declare-const var3170-seed var589)
(declare-const null-var951 var951)
(declare-const var3304-TYPE_OBJECT_WRITER_12 String)
(declare-const var3170-INTERFACES (Array Int String))
(declare-const var1968-BeanToArray var1968)
(declare-const null-var625 var625)
(declare-const var2260 var3170) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2260 null-var3170)))
(declare-const var1560 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1560 null-ClassObject)))
(declare-const var1373 var3014) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1373 null-var3014)))
(declare-const var3632 var3727) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3632 null-var3727)))
(declare-const var2889 var272) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2889 null-var272)))
(declare-const var3390 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3390 null-Int)))
(define-const var1192 var2084 var2084-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1192 null-var3869)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1192!1 var2084)
(declare-const var2620 var78)
(define-const var1185 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1185)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1185!1 String)
(assert (= var1185!1 ""))
(assert true)
(define-const var2599 String (append/672562846 var1185!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1185!2 String)
(assert (= var1185!2 (str.++ var1185!1 "OWG_")))
(define-const var2970 var589 var3170-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3732 Int (incrementAndGet/636047358 var2970)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1571 String (append/-901862667 var2599 var3732)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2599!1 String)
(assert (str.prefixof var2599 var2599!1))
(assert true)
(define-const var453 String (append/672562846 var1571 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1571!1 String)
(assert (= var1571!1 (str.++ var1571 "_")))
(define-const var280 Int (var272_size/-959786421 var2889)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2612 String (append/-1001720160 var453 var280)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var453!1 String)
(assert (str.prefixof var453 var453!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var1560 null-ClassObject))) ; Cond: r7 != null 
(define-const var2097 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2097)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2097!1 String)
(assert (= var2097!1 ""))
(assert true)
(define-const var3325 String (append/672562846 var2097!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2097!2 String)
(assert (= var2097!2 (str.++ var2097!1 "_")))
(assert true)
(define-const var1598 String (getSimpleName/-390194377 var1560)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2775 String (append/672562846 var3325 var1598)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3325!1 String)
(assert (= var3325!1 (str.++ var3325 var1598)))
(assert true)
(define-const var431 String (toString/-2075883882 var2775)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var856 String (append/672562846 var2612 var431)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 var431)))
(assert true)
(define-const var654 String (toString/-2075883882 var856)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2408 ClassObject var3170!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3985 var951 (getPackage/-1841711535 var2408)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3985 null-var951)) ; Cond: $r34 == null 
(define-const var958 String var654) ; Statement: r45 = $r33 
(define-const var557 String var654) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2678 Int (var272_size/-959786421 var2889)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2678 12) (and (not (= var2678 11)) (and (not (= var2678 10)) (and (not (= var2678 9)) (and (not (= var2678 8)) (and (not (= var2678 7)) (and (not (= var2678 6)) (and (not (= var2678 5)) (and (not (= var2678 4)) (and (not (= var2678 3)) (and (not (= var2678 2)) (and (not (= var2678 1)) true))))))))))))) ; Intersect: Cond: $i2 == 12  and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var3694 String var3304-TYPE_OBJECT_WRITER_12) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1615 (Array Int String) var3170-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1192!1 52 49 var958 var3694 var1615)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1192!2 var2084)
(declare-const var2255 Int)
(declare-const var1497 Int)
(declare-const var958!1 String)
(declare-const var3694!1 String)
(declare-const var1615!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2260 var2889 var1192!2 var3694!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2260!1 var3170)
(declare-const var2889!1 var272)
(declare-const var1192!3 var2084)
(declare-const var3694!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2260!1 var2889!1 var1192!3 var958!1 var3694!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2260!2 var3170)
(declare-const var2889!2 var272)
(declare-const var1192!4 var2084)
(declare-const var958!2 String)
(declare-const var3694!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2260!2 var1373 var1560 var2889!2 var1192!4 var958!2 var3390)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2260!3 var3170)
(declare-const var1373!1 var3014)
(declare-const var1560!1 ClassObject)
(declare-const var2889!3 var272)
(declare-const var1192!5 var2084)
(declare-const var958!3 String)
(declare-const var3390!1 Int)
(define-const var55 var1968 var1968-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1489 Int (mask/-2077367092 var55)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2424 Int (bv2nat (bvand ((_ int2bv 64) var3390!1) ((_ int2bv 64) var1489)))) ; Statement: $l15 = l3 & $l14 
(define-const var1033 Int (ite (> var2424 0) 1 (ite (< var2424 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1033 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2260!3 var1373!1 "write" var1560!1 var3390!1 var2889!3 var1192!5 var958!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2260!4 var3170)
(declare-const var1373!2 var3014)
(declare-const var1964 String)
(declare-const var1560!2 ClassObject)
(declare-const var3390!2 Int)
(declare-const var2889!4 var272)
(declare-const var1192!6 var2084)
(declare-const var958!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2260!4 var1373!2 var1560!2 var3390!2 var2889!4 var1192!6 var958!4 var3390!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2260!5 var3170)
(declare-const var1373!3 var3014)
(declare-const var1560!3 ClassObject)
(declare-const var3390!3 Int)
(declare-const var2889!5 var272)
(declare-const var1192!7 var2084)
(declare-const var958!5 String)
(declare-const var3390!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2260!5 var1373!3 "writeArrayMapping" var1560!3 var3390!4 var2889!5 var1192!7 var958!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2260!6 var3170)
(declare-const var1373!4 var3014)
(declare-const var2647 String)
(declare-const var1560!4 ClassObject)
(declare-const var3390!5 Int)
(declare-const var2889!6 var272)
(declare-const var1192!8 var2084)
(declare-const var958!6 String)
(assert true)
(define-const var686 (Array Int Int) (toByteArray/1561254549 var1192!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2266 var3787 (classLoader/1229018461 var2260!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3926 Int (getLength-Arr-Int-1 var686)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1881 ClassObject (defineClassPublic/-885393557 var2266 var557 var686 0 var3926)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3957 var625) ; Statement: $r35 := @caughtexception 
(assert (not (= var3957 null-var625)))
(define-const var1275 var2863 var2863-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2621 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2621)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2621!1 String)
(assert (= var2621!1 ""))
(assert true)
(define-const var2242 String (append/672562846 var2621!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2621!2 String)
(assert (= var2621!2 (str.++ var2621!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1216 String (append/-1031950772 var2242 (cast-from-ClassObject-to-var921 var1560!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2242!1 String)
(assert (str.prefixof var2242 var2242!1))
(assert true)
(define-const var1070 String (toString/-2075883882 var1216)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1275 var1070 var3957)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1275!1 var2863)
(declare-const var1070!1 String)
(declare-const var3957!1 var625)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2084-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var272_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2863-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var921=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3170=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2260=r15, var1560=r7, var3014=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1373=r16, var3727=com.alibaba.fastjson2.codec.BeanInfo, var3632=r21, var272=java.util.List, var2889=r5, var3390=l3, var2084=com.alibaba.fastjson2.internal.asm.ClassWriter, var1192=$r49, var3869=java.util.function.Function, var2620=null, var78=null_type, var1185=$r50, var2599=$r3, var589=java.util.concurrent.atomic.AtomicLong, var2970=$r2, var3732=$l0, var1571=$r4, var453=$r6, var280=$i1, var2612=$r12, var2097=$r51, var3325=$r10, var1598=$r9, var2775=$r11, var431=$r41, var856=$r13, var654=$r33, var2408=$r14, var951=java.lang.Package, var3985=$r34, var958=r45, var557=r44, var2678=$i2, var3304=com.alibaba.fastjson2.internal.asm.ASMUtils, var3694=r46, var1615=$r47, var2255=52, var1497=49, var1968=com.alibaba.fastjson2.JSONWriter$Feature, var55=$r48, var1489=$l14, var2424=$l15, var1033=$b16, var1964="write", var2647="writeArrayMapping", var686=$r27, var3787=com.alibaba.fastjson2.util.DynamicClassLoader, var2266=$r17, var3926=$i4, var1881=$r28, var625=java.lang.Throwable, var3957=$r35, var2863=com.alibaba.fastjson2.JSONException, var1275=$r55, var2621=$r54, var2242=$r38, var921=java.lang.Object, var1216=$r39, var1070=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3170, r15=var2260, r7=var1560, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3014, r16=var1373, com.alibaba.fastjson2.codec.BeanInfo=var3727, r21=var3632, java.util.List=var272, r5=var2889, l3=var3390, com.alibaba.fastjson2.internal.asm.ClassWriter=var2084, $r49=var1192, java.util.function.Function=var3869, null=var2620, null_type=var78, $r50=var1185, $r3=var2599, java.util.concurrent.atomic.AtomicLong=var589, $r2=var2970, $l0=var3732, $r4=var1571, $r6=var453, $i1=var280, $r12=var2612, $r51=var2097, $r10=var3325, $r9=var1598, $r11=var2775, $r41=var431, $r13=var856, $r33=var654, $r14=var2408, java.lang.Package=var951, $r34=var3985, r45=var958, r44=var557, $i2=var2678, com.alibaba.fastjson2.internal.asm.ASMUtils=var3304, r46=var3694, $r47=var1615, 52=var2255, 49=var1497, com.alibaba.fastjson2.JSONWriter$Feature=var1968, $r48=var55, $l14=var1489, $l15=var2424, $b16=var1033, "write"=var1964, "writeArrayMapping"=var2647, $r27=var686, com.alibaba.fastjson2.util.DynamicClassLoader=var3787, $r17=var2266, $i4=var3926, $r28=var1881, java.lang.Throwable=var625, $r35=var3957, com.alibaba.fastjson2.JSONException=var2863, $r55=var1275, $r54=var2621, $r38=var2242, java.lang.Object=var921, $r39=var1216, $r40=var1070}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10