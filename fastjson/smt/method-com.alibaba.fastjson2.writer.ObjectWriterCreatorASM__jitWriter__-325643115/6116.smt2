(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1924 0)
(declare-sort var2580 0)
(declare-sort var3875 0)
(declare-sort var3397 0)
(declare-sort var3573 0)
(declare-sort var3332 0)
(declare-sort var846 0)
(declare-sort var3399 0)
(declare-sort var2393 0)
(declare-sort var3204 0)
(declare-sort var3496 0)
(declare-sort var101 0)
(declare-sort var2505 0)
(declare-sort var1174 0)
(declare-sort var550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1924!class ClassObject)
(declare-fun var3573-init () var3573)
(declare-fun <init>/1561585841 (var3573 var3332) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3399) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3397_size/-959786421 (var3397) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2393)
(declare-fun visit/1245821975 (var3573 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1924 var3397 var3573 String) void)
(declare-fun genMethodInit/736566045 (var1924 var3397 var3573 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1924 var2580 ClassObject var3397 var3573 String Int) void)
(declare-fun mask/-2077367092 (var3496) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1924 var2580 String ClassObject Int var3397 var3573 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1924 var2580 ClassObject Int var3397 var3573 String Int) void)
(declare-fun toByteArray/1561254549 (var3573) (Array Int Int))
(declare-fun classLoader/1229018461 (var1924) var101)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var101 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1174-init () var1174)
(declare-fun append/-1031950772 (String var550) String)
(declare-fun cast-from-ClassObject-to-var550 (ClassObject) var550)
(declare-fun <init>/-743866570 (var1174 String var2505) void)
(declare-const null-var1924 var1924)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2580 var2580)
(declare-const null-var3875 var3875)
(declare-const null-var3397 var3397)
(declare-const null-Int Int)
(declare-const null-NullType var846)
(declare-const null-var3332 var3332)
(declare-const var1924-seed var3399)
(declare-const null-var2393 var2393)
(declare-const var3204-TYPE_OBJECT_WRITER_4 String)
(declare-const var1924-INTERFACES (Array Int String))
(declare-const var3496-BeanToArray var3496)
(declare-const null-var2505 var2505)
(declare-const var310 var1924) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var310 null-var1924)))
(declare-const var53 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var53 null-ClassObject)))
(declare-const var2224 var2580) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2224 null-var2580)))
(declare-const var1401 var3875) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1401 null-var3875)))
(declare-const var2924 var3397) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2924 null-var3397)))
(declare-const var784 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var784 null-Int)))
(define-const var80 var3573 var3573-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var80 null-var3332)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var80!1 var3573)
(declare-const var2298 var846)
(define-const var3937 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var123 String (append/672562846 var3937!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "OWG_")))
(define-const var2078 var3399 var1924-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1424 Int (incrementAndGet/636047358 var2078)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2861 String (append/-901862667 var123 var1424)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var123!1 String)
(assert (str.prefixof var123 var123!1))
(assert true)
(define-const var2243 String (append/672562846 var2861 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2861!1 String)
(assert (= var2861!1 (str.++ var2861 "_")))
(define-const var2719 Int (var3397_size/-959786421 var2924)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var598 String (append/-1001720160 var2243 var2719)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2243!1 String)
(assert (str.prefixof var2243 var2243!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var53 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2326 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2350 String (append/672562846 var598 var2326)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var598!1 String)
(assert (= var598!1 (str.++ var598 var2326)))
(assert true)
(define-const var1603 String (toString/-2075883882 var2350)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1558 ClassObject var1924!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var837 var2393 (getPackage/-1841711535 var1558)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var837 null-var2393)) ; Cond: $r34 == null 
(define-const var3021 String var1603) ; Statement: r45 = $r33 
(define-const var2277 String var1603) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1689 Int (var3397_size/-959786421 var2924)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1689 4) (and (not (= var1689 3)) (and (not (= var1689 2)) (and (not (= var1689 1)) true))))) ; Intersect: Cond: $i2 == 4  and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional    
(define-const var131 String var3204-TYPE_OBJECT_WRITER_4) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3257 (Array Int String) var1924-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var80!1 52 49 var3021 var131 var3257)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var80!2 var3573)
(declare-const var2475 Int)
(declare-const var1888 Int)
(declare-const var3021!1 String)
(declare-const var131!1 String)
(declare-const var3257!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var310 var2924 var80!2 var131!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var310!1 var1924)
(declare-const var2924!1 var3397)
(declare-const var80!3 var3573)
(declare-const var131!2 String)
(assert true)
;(assert (genMethodInit/736566045 var310!1 var2924!1 var80!3 var3021!1 var131!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var310!2 var1924)
(declare-const var2924!2 var3397)
(declare-const var80!4 var3573)
(declare-const var3021!2 String)
(declare-const var131!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var310!2 var2224 var53 var2924!2 var80!4 var3021!2 var784)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var310!3 var1924)
(declare-const var2224!1 var2580)
(declare-const var53!1 ClassObject)
(declare-const var2924!3 var3397)
(declare-const var80!5 var3573)
(declare-const var3021!3 String)
(declare-const var784!1 Int)
(define-const var622 var3496 var3496-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2141 Int (mask/-2077367092 var622)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var259 Int (bv2nat (bvand ((_ int2bv 64) var784!1) ((_ int2bv 64) var2141)))) ; Statement: $l15 = l3 & $l14 
(define-const var3147 Int (ite (> var259 0) 1 (ite (< var259 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var3147 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var310!3 var2224!1 "write" var53!1 var784!1 var2924!3 var80!5 var3021!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var310!4 var1924)
(declare-const var2224!2 var2580)
(declare-const var1386 String)
(declare-const var53!2 ClassObject)
(declare-const var784!2 Int)
(declare-const var2924!4 var3397)
(declare-const var80!6 var3573)
(declare-const var3021!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var310!4 var2224!2 var53!2 var784!2 var2924!4 var80!6 var3021!4 var784!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var310!5 var1924)
(declare-const var2224!3 var2580)
(declare-const var53!3 ClassObject)
(declare-const var784!3 Int)
(declare-const var2924!5 var3397)
(declare-const var80!7 var3573)
(declare-const var3021!5 String)
(declare-const var784!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var310!5 var2224!3 "writeArrayMapping" var53!3 var784!4 var2924!5 var80!7 var3021!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var310!6 var1924)
(declare-const var2224!4 var2580)
(declare-const var1033 String)
(declare-const var53!4 ClassObject)
(declare-const var784!5 Int)
(declare-const var2924!6 var3397)
(declare-const var80!8 var3573)
(declare-const var3021!6 String)
(assert true)
(define-const var893 (Array Int Int) (toByteArray/1561254549 var80!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2631 var101 (classLoader/1229018461 var310!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1916 Int (getLength-Arr-Int-1 var893)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3840 ClassObject (defineClassPublic/-885393557 var2631 var2277 var893 0 var1916)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3344 var2505) ; Statement: $r35 := @caughtexception 
(assert (not (= var3344 null-var2505)))
(define-const var2177 var1174 var1174-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1860 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1860)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1860!1 String)
(assert (= var1860!1 ""))
(assert true)
(define-const var133 String (append/672562846 var1860!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1860!2 String)
(assert (= var1860!2 (str.++ var1860!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3311 String (append/-1031950772 var133 (cast-from-ClassObject-to-var550 var53!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var133!1 String)
(assert (str.prefixof var133 var133!1))
(assert true)
(define-const var1008 String (toString/-2075883882 var3311)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2177 var1008 var3344)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2177!1 var1174)
(declare-const var1008!1 String)
(declare-const var3344!1 var2505)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3573-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3397_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1174-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var550=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1924=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var310=r15, var53=r7, var2580=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2224=r16, var3875=com.alibaba.fastjson2.codec.BeanInfo, var1401=r21, var3397=java.util.List, var2924=r5, var784=l3, var3573=com.alibaba.fastjson2.internal.asm.ClassWriter, var80=$r49, var3332=java.util.function.Function, var2298=null, var846=null_type, var3937=$r50, var123=$r3, var3399=java.util.concurrent.atomic.AtomicLong, var2078=$r2, var1424=$l0, var2861=$r4, var2243=$r6, var2719=$i1, var598=$r12, var2326=$r41, var2350=$r13, var1603=$r33, var1558=$r14, var2393=java.lang.Package, var837=$r34, var3021=r45, var2277=r44, var1689=$i2, var3204=com.alibaba.fastjson2.internal.asm.ASMUtils, var131=r46, var3257=$r47, var2475=52, var1888=49, var3496=com.alibaba.fastjson2.JSONWriter$Feature, var622=$r48, var2141=$l14, var259=$l15, var3147=$b16, var1386="write", var1033="writeArrayMapping", var893=$r27, var101=com.alibaba.fastjson2.util.DynamicClassLoader, var2631=$r17, var1916=$i4, var3840=$r28, var2505=java.lang.Throwable, var3344=$r35, var1174=com.alibaba.fastjson2.JSONException, var2177=$r55, var1860=$r54, var133=$r38, var550=java.lang.Object, var3311=$r39, var1008=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1924, r15=var310, r7=var53, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2580, r16=var2224, com.alibaba.fastjson2.codec.BeanInfo=var3875, r21=var1401, java.util.List=var3397, r5=var2924, l3=var784, com.alibaba.fastjson2.internal.asm.ClassWriter=var3573, $r49=var80, java.util.function.Function=var3332, null=var2298, null_type=var846, $r50=var3937, $r3=var123, java.util.concurrent.atomic.AtomicLong=var3399, $r2=var2078, $l0=var1424, $r4=var2861, $r6=var2243, $i1=var2719, $r12=var598, $r41=var2326, $r13=var2350, $r33=var1603, $r14=var1558, java.lang.Package=var2393, $r34=var837, r45=var3021, r44=var2277, $i2=var1689, com.alibaba.fastjson2.internal.asm.ASMUtils=var3204, r46=var131, $r47=var3257, 52=var2475, 49=var1888, com.alibaba.fastjson2.JSONWriter$Feature=var3496, $r48=var622, $l14=var2141, $l15=var259, $b16=var3147, "write"=var1386, "writeArrayMapping"=var1033, $r27=var893, com.alibaba.fastjson2.util.DynamicClassLoader=var101, $r17=var2631, $i4=var1916, $r28=var3840, java.lang.Throwable=var2505, $r35=var3344, com.alibaba.fastjson2.JSONException=var1174, $r55=var2177, $r54=var1860, $r38=var133, java.lang.Object=var550, $r39=var3311, $r40=var1008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10