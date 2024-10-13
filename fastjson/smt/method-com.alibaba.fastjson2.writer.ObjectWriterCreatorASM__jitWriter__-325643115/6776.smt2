(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3654 0)
(declare-sort var1510 0)
(declare-sort var3063 0)
(declare-sort var787 0)
(declare-sort var1370 0)
(declare-sort var1672 0)
(declare-sort var759 0)
(declare-sort var1641 0)
(declare-sort var2145 0)
(declare-sort var1716 0)
(declare-sort var521 0)
(declare-sort var3264 0)
(declare-sort var2529 0)
(declare-sort var1673 0)
(declare-sort var143 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3654!class ClassObject)
(declare-fun var1370-init () var1370)
(declare-fun <init>/1561585841 (var1370 var1672) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1641) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var787_size/-959786421 (var787) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2145)
(declare-fun visit/1245821975 (var1370 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3654 var787 var1370 String) void)
(declare-fun genMethodInit/736566045 (var3654 var787 var1370 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3654 var1510 ClassObject var787 var1370 String Int) void)
(declare-fun mask/-2077367092 (var521) Int)
(declare-fun genMethodWrite/551741206 (var3654 var1510 ClassObject var787 var1370 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3654 var1510 ClassObject Int var787 var1370 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3654 var1510 String ClassObject Int var787 var1370 String) void)
(declare-fun toByteArray/1561254549 (var1370) (Array Int Int))
(declare-fun classLoader/1229018461 (var3654) var3264)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3264 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1673-init () var1673)
(declare-fun append/-1031950772 (String var143) String)
(declare-fun cast-from-ClassObject-to-var143 (ClassObject) var143)
(declare-fun <init>/-743866570 (var1673 String var2529) void)
(declare-const null-var3654 var3654)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1510 var1510)
(declare-const null-var3063 var3063)
(declare-const null-var787 var787)
(declare-const null-Int Int)
(declare-const null-NullType var759)
(declare-const null-var1672 var1672)
(declare-const var3654-seed var1641)
(declare-const null-var2145 var2145)
(declare-const var1716-TYPE_OBJECT_WRITER_5 String)
(declare-const var3654-INTERFACES (Array Int String))
(declare-const var521-BeanToArray var521)
(declare-const null-var2529 var2529)
(declare-const var2055 var3654) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2055 null-var3654)))
(declare-const var3265 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3265 null-ClassObject)))
(declare-const var2311 var1510) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2311 null-var1510)))
(declare-const var2790 var3063) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2790 null-var3063)))
(declare-const var678 var787) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var678 null-var787)))
(declare-const var3737 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3737 null-Int)))
(define-const var2832 var1370 var1370-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2832 null-var1672)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2832!1 var1370)
(declare-const var3714 var759)
(define-const var1300 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1300)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1300!1 String)
(assert (= var1300!1 ""))
(assert true)
(define-const var1198 String (append/672562846 var1300!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1300!2 String)
(assert (= var1300!2 (str.++ var1300!1 "OWG_")))
(define-const var3803 var1641 var3654-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1828 Int (incrementAndGet/636047358 var3803)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2465 String (append/-901862667 var1198 var1828)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1198!1 String)
(assert (str.prefixof var1198 var1198!1))
(assert true)
(define-const var1965 String (append/672562846 var2465 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2465!1 String)
(assert (= var2465!1 (str.++ var2465 "_")))
(define-const var3820 Int (var787_size/-959786421 var678)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3305 String (append/-1001720160 var1965 var3820)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1965!1 String)
(assert (str.prefixof var1965 var1965!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var3265 null-ClassObject))) ; Cond: r7 != null 
(define-const var2497 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2497)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2497!1 String)
(assert (= var2497!1 ""))
(assert true)
(define-const var2727 String (append/672562846 var2497!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2497!2 String)
(assert (= var2497!2 (str.++ var2497!1 "_")))
(assert true)
(define-const var1424 String (getSimpleName/-390194377 var3265)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2411 String (append/672562846 var2727 var1424)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2727!1 String)
(assert (= var2727!1 (str.++ var2727 var1424)))
(assert true)
(define-const var297 String (toString/-2075883882 var2411)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2294 String (append/672562846 var3305 var297)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3305!1 String)
(assert (= var3305!1 (str.++ var3305 var297)))
(assert true)
(define-const var2661 String (toString/-2075883882 var2294)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2344 ClassObject var3654!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3449 var2145 (getPackage/-1841711535 var2344)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3449 null-var2145)) ; Cond: $r34 == null 
(define-const var1336 String var2661) ; Statement: r45 = $r33 
(define-const var605 String var2661) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var658 Int (var787_size/-959786421 var678)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var658 5) (and (not (= var658 4)) (and (not (= var658 3)) (and (not (= var658 2)) (and (not (= var658 1)) true)))))) ; Intersect: Cond: $i2 == 5  and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional     
(define-const var2646 String var1716-TYPE_OBJECT_WRITER_5) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2826 (Array Int String) var3654-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2832!1 52 49 var1336 var2646 var2826)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2832!2 var1370)
(declare-const var452 Int)
(declare-const var1508 Int)
(declare-const var1336!1 String)
(declare-const var2646!1 String)
(declare-const var2826!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2055 var678 var2832!2 var2646!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2055!1 var3654)
(declare-const var678!1 var787)
(declare-const var2832!3 var1370)
(declare-const var2646!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2055!1 var678!1 var2832!3 var1336!1 var2646!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2055!2 var3654)
(declare-const var678!2 var787)
(declare-const var2832!4 var1370)
(declare-const var1336!2 String)
(declare-const var2646!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2055!2 var2311 var3265 var678!2 var2832!4 var1336!2 var3737)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2055!3 var3654)
(declare-const var2311!1 var1510)
(declare-const var3265!1 ClassObject)
(declare-const var678!3 var787)
(declare-const var2832!5 var1370)
(declare-const var1336!3 String)
(declare-const var3737!1 Int)
(define-const var3827 var521 var521-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2674 Int (mask/-2077367092 var3827)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1535 Int (bv2nat (bvand ((_ int2bv 64) var3737!1) ((_ int2bv 64) var2674)))) ; Statement: $l15 = l3 & $l14 
(define-const var1460 Int (ite (> var1535 0) 1 (ite (< var1535 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1460 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2055!3 var2311!1 var3265!1 var678!3 var2832!5 var1336!3 var3737!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2055!4 var3654)
(declare-const var2311!2 var1510)
(declare-const var3265!2 ClassObject)
(declare-const var678!4 var787)
(declare-const var2832!6 var1370)
(declare-const var1336!4 String)
(declare-const var3737!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2055!4 var2311!2 var3265!2 var3737!2 var678!4 var2832!6 var1336!4 var3737!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2055!5 var3654)
(declare-const var2311!3 var1510)
(declare-const var3265!3 ClassObject)
(declare-const var3737!3 Int)
(declare-const var678!5 var787)
(declare-const var2832!7 var1370)
(declare-const var1336!5 String)
(declare-const var3737!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2055!5 var2311!3 "writeArrayMapping" var3265!3 var3737!4 var678!5 var2832!7 var1336!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2055!6 var3654)
(declare-const var2311!4 var1510)
(declare-const var3168 String)
(declare-const var3265!4 ClassObject)
(declare-const var3737!5 Int)
(declare-const var678!6 var787)
(declare-const var2832!8 var1370)
(declare-const var1336!6 String)
(assert true)
(define-const var1802 (Array Int Int) (toByteArray/1561254549 var2832!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var388 var3264 (classLoader/1229018461 var2055!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2784 Int (getLength-Arr-Int-1 var1802)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1975 ClassObject (defineClassPublic/-885393557 var388 var605 var1802 0 var2784)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3027 var2529) ; Statement: $r35 := @caughtexception 
(assert (not (= var3027 null-var2529)))
(define-const var1273 var1673 var1673-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3130 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3130)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3130!1 String)
(assert (= var3130!1 ""))
(assert true)
(define-const var950 String (append/672562846 var3130!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3130!2 String)
(assert (= var3130!2 (str.++ var3130!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var407 String (append/-1031950772 var950 (cast-from-ClassObject-to-var143 var3265!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var950!1 String)
(assert (str.prefixof var950 var950!1))
(assert true)
(define-const var1305 String (toString/-2075883882 var407)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1273 var1305 var3027)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1273!1 var1673)
(declare-const var1305!1 String)
(declare-const var3027!1 var2529)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1370-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var787_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1673-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var143=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3654=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2055=r15, var3265=r7, var1510=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2311=r16, var3063=com.alibaba.fastjson2.codec.BeanInfo, var2790=r21, var787=java.util.List, var678=r5, var3737=l3, var1370=com.alibaba.fastjson2.internal.asm.ClassWriter, var2832=$r49, var1672=java.util.function.Function, var3714=null, var759=null_type, var1300=$r50, var1198=$r3, var1641=java.util.concurrent.atomic.AtomicLong, var3803=$r2, var1828=$l0, var2465=$r4, var1965=$r6, var3820=$i1, var3305=$r12, var2497=$r51, var2727=$r10, var1424=$r9, var2411=$r11, var297=$r41, var2294=$r13, var2661=$r33, var2344=$r14, var2145=java.lang.Package, var3449=$r34, var1336=r45, var605=r44, var658=$i2, var1716=com.alibaba.fastjson2.internal.asm.ASMUtils, var2646=r46, var2826=$r47, var452=52, var1508=49, var521=com.alibaba.fastjson2.JSONWriter$Feature, var3827=$r48, var2674=$l14, var1535=$l15, var1460=$b16, var3168="writeArrayMapping", var1802=$r27, var3264=com.alibaba.fastjson2.util.DynamicClassLoader, var388=$r17, var2784=$i4, var1975=$r28, var2529=java.lang.Throwable, var3027=$r35, var1673=com.alibaba.fastjson2.JSONException, var1273=$r55, var3130=$r54, var950=$r38, var143=java.lang.Object, var407=$r39, var1305=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3654, r15=var2055, r7=var3265, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1510, r16=var2311, com.alibaba.fastjson2.codec.BeanInfo=var3063, r21=var2790, java.util.List=var787, r5=var678, l3=var3737, com.alibaba.fastjson2.internal.asm.ClassWriter=var1370, $r49=var2832, java.util.function.Function=var1672, null=var3714, null_type=var759, $r50=var1300, $r3=var1198, java.util.concurrent.atomic.AtomicLong=var1641, $r2=var3803, $l0=var1828, $r4=var2465, $r6=var1965, $i1=var3820, $r12=var3305, $r51=var2497, $r10=var2727, $r9=var1424, $r11=var2411, $r41=var297, $r13=var2294, $r33=var2661, $r14=var2344, java.lang.Package=var2145, $r34=var3449, r45=var1336, r44=var605, $i2=var658, com.alibaba.fastjson2.internal.asm.ASMUtils=var1716, r46=var2646, $r47=var2826, 52=var452, 49=var1508, com.alibaba.fastjson2.JSONWriter$Feature=var521, $r48=var3827, $l14=var2674, $l15=var1535, $b16=var1460, "writeArrayMapping"=var3168, $r27=var1802, com.alibaba.fastjson2.util.DynamicClassLoader=var3264, $r17=var388, $i4=var2784, $r28=var1975, java.lang.Throwable=var2529, $r35=var3027, com.alibaba.fastjson2.JSONException=var1673, $r55=var1273, $r54=var3130, $r38=var950, java.lang.Object=var143, $r39=var407, $r40=var1305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10