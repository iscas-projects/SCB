(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1732 0)
(declare-sort var2467 0)
(declare-sort var1452 0)
(declare-sort var950 0)
(declare-sort var3479 0)
(declare-sort var2297 0)
(declare-sort var3758 0)
(declare-sort var1122 0)
(declare-sort var2955 0)
(declare-sort var1564 0)
(declare-sort var3700 0)
(declare-sort var3837 0)
(declare-sort var154 0)
(declare-sort var1874 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1732!class ClassObject)
(declare-fun var3479-init () var3479)
(declare-fun <init>/1561585841 (var3479 var2297) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1122) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var950_size/-959786421 (var950) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2955)
(declare-fun visit/1245821975 (var3479 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1732 var950 var3479 String) void)
(declare-fun genMethodInit/736566045 (var1732 var950 var3479 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1732 var2467 ClassObject var950 var3479 String Int) void)
(declare-fun mask/-2077367092 (var3700) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1732 var2467 String ClassObject Int var950 var3479 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1732 var2467 ClassObject Int var950 var3479 String Int) void)
(declare-fun toByteArray/1561254549 (var3479) (Array Int Int))
(declare-fun classLoader/1229018461 (var1732) var3837)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3837 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1874-init () var1874)
(declare-fun append/-1031950772 (String var609) String)
(declare-fun cast-from-ClassObject-to-var609 (ClassObject) var609)
(declare-fun <init>/-743866570 (var1874 String var154) void)
(declare-const null-var1732 var1732)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2467 var2467)
(declare-const null-var1452 var1452)
(declare-const null-var950 var950)
(declare-const null-Int Int)
(declare-const null-NullType var3758)
(declare-const null-var2297 var2297)
(declare-const var1732-seed var1122)
(declare-const null-var2955 var2955)
(declare-const var1564-TYPE_OBJECT_WRITER_10 String)
(declare-const var1732-INTERFACES (Array Int String))
(declare-const var3700-BeanToArray var3700)
(declare-const null-var154 var154)
(declare-const var1447 var1732) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1447 null-var1732)))
(declare-const var2080 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2080 null-ClassObject)))
(declare-const var1720 var2467) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1720 null-var2467)))
(declare-const var2423 var1452) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2423 null-var1452)))
(declare-const var1945 var950) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1945 null-var950)))
(declare-const var195 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var195 null-Int)))
(define-const var913 var3479 var3479-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var913 null-var2297)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var913!1 var3479)
(declare-const var2547 var3758)
(define-const var1046 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1046)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1046!1 String)
(assert (= var1046!1 ""))
(assert true)
(define-const var1348 String (append/672562846 var1046!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1046!2 String)
(assert (= var1046!2 (str.++ var1046!1 "OWG_")))
(define-const var172 var1122 var1732-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2743 Int (incrementAndGet/636047358 var172)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1965 String (append/-901862667 var1348 var2743)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1348!1 String)
(assert (str.prefixof var1348 var1348!1))
(assert true)
(define-const var731 String (append/672562846 var1965 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 "_")))
(define-const var3065 Int (var950_size/-959786421 var1945)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3492 String (append/-1001720160 var731 var3065)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var731!1 String)
(assert (str.prefixof var731 var731!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2080 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var3822 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1249 String (append/672562846 var3492 var3822)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3492!1 String)
(assert (= var3492!1 (str.++ var3492 var3822)))
(assert true)
(define-const var2510 String (toString/-2075883882 var1249)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3714 ClassObject var1732!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2150 var2955 (getPackage/-1841711535 var3714)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2150 null-var2955)) ; Cond: $r34 == null 
(define-const var3894 String var2510) ; Statement: r45 = $r33 
(define-const var1337 String var2510) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var630 Int (var950_size/-959786421 var1945)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var630 10) (and (not (= var630 9)) (and (not (= var630 8)) (and (not (= var630 7)) (and (not (= var630 6)) (and (not (= var630 5)) (and (not (= var630 4)) (and (not (= var630 3)) (and (not (= var630 2)) (and (not (= var630 1)) true))))))))))) ; Intersect: Cond: $i2 == 10  and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional          
(define-const var2082 String var1564-TYPE_OBJECT_WRITER_10) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1496 (Array Int String) var1732-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var913!1 52 49 var3894 var2082 var1496)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var913!2 var3479)
(declare-const var1039 Int)
(declare-const var299 Int)
(declare-const var3894!1 String)
(declare-const var2082!1 String)
(declare-const var1496!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1447 var1945 var913!2 var2082!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1447!1 var1732)
(declare-const var1945!1 var950)
(declare-const var913!3 var3479)
(declare-const var2082!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1447!1 var1945!1 var913!3 var3894!1 var2082!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1447!2 var1732)
(declare-const var1945!2 var950)
(declare-const var913!4 var3479)
(declare-const var3894!2 String)
(declare-const var2082!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1447!2 var1720 var2080 var1945!2 var913!4 var3894!2 var195)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1447!3 var1732)
(declare-const var1720!1 var2467)
(declare-const var2080!1 ClassObject)
(declare-const var1945!3 var950)
(declare-const var913!5 var3479)
(declare-const var3894!3 String)
(declare-const var195!1 Int)
(define-const var3959 var3700 var3700-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1726 Int (mask/-2077367092 var3959)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3118 Int (bv2nat (bvand ((_ int2bv 64) var195!1) ((_ int2bv 64) var1726)))) ; Statement: $l15 = l3 & $l14 
(define-const var565 Int (ite (> var3118 0) 1 (ite (< var3118 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var565 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1447!3 var1720!1 "write" var2080!1 var195!1 var1945!3 var913!5 var3894!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var1447!4 var1732)
(declare-const var1720!2 var2467)
(declare-const var226 String)
(declare-const var2080!2 ClassObject)
(declare-const var195!2 Int)
(declare-const var1945!4 var950)
(declare-const var913!6 var3479)
(declare-const var3894!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1447!4 var1720!2 var2080!2 var195!2 var1945!4 var913!6 var3894!4 var195!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1447!5 var1732)
(declare-const var1720!3 var2467)
(declare-const var2080!3 ClassObject)
(declare-const var195!3 Int)
(declare-const var1945!5 var950)
(declare-const var913!7 var3479)
(declare-const var3894!5 String)
(declare-const var195!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1447!5 var1720!3 "writeArrayMapping" var2080!3 var195!4 var1945!5 var913!7 var3894!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1447!6 var1732)
(declare-const var1720!4 var2467)
(declare-const var146 String)
(declare-const var2080!4 ClassObject)
(declare-const var195!5 Int)
(declare-const var1945!6 var950)
(declare-const var913!8 var3479)
(declare-const var3894!6 String)
(assert true)
(define-const var3435 (Array Int Int) (toByteArray/1561254549 var913!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3745 var3837 (classLoader/1229018461 var1447!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2392 Int (getLength-Arr-Int-1 var3435)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3634 ClassObject (defineClassPublic/-885393557 var3745 var1337 var3435 0 var2392)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2243 var154) ; Statement: $r35 := @caughtexception 
(assert (not (= var2243 null-var154)))
(define-const var1391 var1874 var1874-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3842 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3842)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3842!1 String)
(assert (= var3842!1 ""))
(assert true)
(define-const var947 String (append/672562846 var3842!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3842!2 String)
(assert (= var3842!2 (str.++ var3842!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2648 String (append/-1031950772 var947 (cast-from-ClassObject-to-var609 var2080!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var947!1 String)
(assert (str.prefixof var947 var947!1))
(assert true)
(define-const var1228 String (toString/-2075883882 var2648)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1391 var1228 var2243)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1391!1 var1874)
(declare-const var1228!1 String)
(declare-const var2243!1 var154)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3479-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var950_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1874-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var609=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1732=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1447=r15, var2080=r7, var2467=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1720=r16, var1452=com.alibaba.fastjson2.codec.BeanInfo, var2423=r21, var950=java.util.List, var1945=r5, var195=l3, var3479=com.alibaba.fastjson2.internal.asm.ClassWriter, var913=$r49, var2297=java.util.function.Function, var2547=null, var3758=null_type, var1046=$r50, var1348=$r3, var1122=java.util.concurrent.atomic.AtomicLong, var172=$r2, var2743=$l0, var1965=$r4, var731=$r6, var3065=$i1, var3492=$r12, var3822=$r41, var1249=$r13, var2510=$r33, var3714=$r14, var2955=java.lang.Package, var2150=$r34, var3894=r45, var1337=r44, var630=$i2, var1564=com.alibaba.fastjson2.internal.asm.ASMUtils, var2082=r46, var1496=$r47, var1039=52, var299=49, var3700=com.alibaba.fastjson2.JSONWriter$Feature, var3959=$r48, var1726=$l14, var3118=$l15, var565=$b16, var226="write", var146="writeArrayMapping", var3435=$r27, var3837=com.alibaba.fastjson2.util.DynamicClassLoader, var3745=$r17, var2392=$i4, var3634=$r28, var154=java.lang.Throwable, var2243=$r35, var1874=com.alibaba.fastjson2.JSONException, var1391=$r55, var3842=$r54, var947=$r38, var609=java.lang.Object, var2648=$r39, var1228=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1732, r15=var1447, r7=var2080, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2467, r16=var1720, com.alibaba.fastjson2.codec.BeanInfo=var1452, r21=var2423, java.util.List=var950, r5=var1945, l3=var195, com.alibaba.fastjson2.internal.asm.ClassWriter=var3479, $r49=var913, java.util.function.Function=var2297, null=var2547, null_type=var3758, $r50=var1046, $r3=var1348, java.util.concurrent.atomic.AtomicLong=var1122, $r2=var172, $l0=var2743, $r4=var1965, $r6=var731, $i1=var3065, $r12=var3492, $r41=var3822, $r13=var1249, $r33=var2510, $r14=var3714, java.lang.Package=var2955, $r34=var2150, r45=var3894, r44=var1337, $i2=var630, com.alibaba.fastjson2.internal.asm.ASMUtils=var1564, r46=var2082, $r47=var1496, 52=var1039, 49=var299, com.alibaba.fastjson2.JSONWriter$Feature=var3700, $r48=var3959, $l14=var1726, $l15=var3118, $b16=var565, "write"=var226, "writeArrayMapping"=var146, $r27=var3435, com.alibaba.fastjson2.util.DynamicClassLoader=var3837, $r17=var3745, $i4=var2392, $r28=var3634, java.lang.Throwable=var154, $r35=var2243, com.alibaba.fastjson2.JSONException=var1874, $r55=var1391, $r54=var3842, $r38=var947, java.lang.Object=var609, $r39=var2648, $r40=var1228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10