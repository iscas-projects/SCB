(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var979 0)
(declare-sort var263 0)
(declare-sort var3422 0)
(declare-sort var3264 0)
(declare-sort var3920 0)
(declare-sort var3287 0)
(declare-sort var499 0)
(declare-sort var2652 0)
(declare-sort var740 0)
(declare-sort var2267 0)
(declare-sort var2471 0)
(declare-sort var712 0)
(declare-sort var307 0)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2713!class ClassObject)
(declare-fun var3264-init () var3264)
(declare-fun <init>/1561585841 (var3264 var3920) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var499) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3422_size/-959786421 (var3422) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2652)
(declare-fun visit/1245821975 (var3264 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2713 var3422 var3264 String) void)
(declare-fun genMethodInit/736566045 (var2713 var3422 var3264 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2713 var979 ClassObject var3422 var3264 String Int) void)
(declare-fun mask/-2077367092 (var2267) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var2713 var979 String ClassObject Int var3422 var3264 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2713 var979 ClassObject Int var3422 var3264 String Int) void)
(declare-fun toByteArray/1561254549 (var3264) (Array Int Int))
(declare-fun classLoader/1229018461 (var2713) var2471)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2471 String (Array Int Int) Int Int) ClassObject)
(declare-fun var307-init () var307)
(declare-fun append/-1031950772 (String var1058) String)
(declare-fun cast-from-ClassObject-to-var1058 (ClassObject) var1058)
(declare-fun <init>/-743866570 (var307 String var712) void)
(declare-const null-var2713 var2713)
(declare-const null-ClassObject ClassObject)
(declare-const null-var979 var979)
(declare-const null-var263 var263)
(declare-const null-var3422 var3422)
(declare-const null-Int Int)
(declare-const null-NullType var3287)
(declare-const null-var3920 var3920)
(declare-const var2713-seed var499)
(declare-const null-var2652 var2652)
(declare-const var740-TYPE_OBJECT_WRITER_9 String)
(declare-const var2713-INTERFACES (Array Int String))
(declare-const var2267-BeanToArray var2267)
(declare-const null-var712 var712)
(declare-const var490 var2713) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var490 null-var2713)))
(declare-const var1331 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1331 null-ClassObject)))
(declare-const var2869 var979) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2869 null-var979)))
(declare-const var1852 var263) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1852 null-var263)))
(declare-const var3574 var3422) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3574 null-var3422)))
(declare-const var194 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var194 null-Int)))
(define-const var3537 var3264 var3264-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3537 null-var3920)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3537!1 var3264)
(declare-const var993 var3287)
(define-const var432 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var432)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var432!1 String)
(assert (= var432!1 ""))
(assert true)
(define-const var2853 String (append/672562846 var432!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var432!2 String)
(assert (= var432!2 (str.++ var432!1 "OWG_")))
(define-const var1110 var499 var2713-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2739 Int (incrementAndGet/636047358 var1110)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var180 String (append/-901862667 var2853 var2739)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2853!1 String)
(assert (str.prefixof var2853 var2853!1))
(assert true)
(define-const var3970 String (append/672562846 var180 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var180!1 String)
(assert (= var180!1 (str.++ var180 "_")))
(define-const var3996 Int (var3422_size/-959786421 var3574)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2955 String (append/-1001720160 var3970 var3996)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3970!1 String)
(assert (str.prefixof var3970 var3970!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var1331 null-ClassObject))) ; Cond: r7 != null 
(define-const var401 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var401)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var401!1 String)
(assert (= var401!1 ""))
(assert true)
(define-const var2638 String (append/672562846 var401!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var401!2 String)
(assert (= var401!2 (str.++ var401!1 "_")))
(assert true)
(define-const var200 String (getSimpleName/-390194377 var1331)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var702 String (append/672562846 var2638 var200)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2638!1 String)
(assert (= var2638!1 (str.++ var2638 var200)))
(assert true)
(define-const var978 String (toString/-2075883882 var702)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3039 String (append/672562846 var2955 var978)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 var978)))
(assert true)
(define-const var413 String (toString/-2075883882 var3039)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2299 ClassObject var2713!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var723 var2652 (getPackage/-1841711535 var2299)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var723 null-var2652)) ; Cond: $r34 == null 
(define-const var895 String var413) ; Statement: r45 = $r33 
(define-const var298 String var413) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var820 Int (var3422_size/-959786421 var3574)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var820 9) (and (not (= var820 8)) (and (not (= var820 7)) (and (not (= var820 6)) (and (not (= var820 5)) (and (not (= var820 4)) (and (not (= var820 3)) (and (not (= var820 2)) (and (not (= var820 1)) true)))))))))) ; Intersect: Cond: $i2 == 9  and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional         
(define-const var2289 String var740-TYPE_OBJECT_WRITER_9) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3088 (Array Int String) var2713-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3537!1 52 49 var895 var2289 var3088)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3537!2 var3264)
(declare-const var3254 Int)
(declare-const var3711 Int)
(declare-const var895!1 String)
(declare-const var2289!1 String)
(declare-const var3088!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var490 var3574 var3537!2 var2289!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var490!1 var2713)
(declare-const var3574!1 var3422)
(declare-const var3537!3 var3264)
(declare-const var2289!2 String)
(assert true)
;(assert (genMethodInit/736566045 var490!1 var3574!1 var3537!3 var895!1 var2289!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var490!2 var2713)
(declare-const var3574!2 var3422)
(declare-const var3537!4 var3264)
(declare-const var895!2 String)
(declare-const var2289!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var490!2 var2869 var1331 var3574!2 var3537!4 var895!2 var194)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var490!3 var2713)
(declare-const var2869!1 var979)
(declare-const var1331!1 ClassObject)
(declare-const var3574!3 var3422)
(declare-const var3537!5 var3264)
(declare-const var895!3 String)
(declare-const var194!1 Int)
(define-const var1254 var2267 var2267-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1728 Int (mask/-2077367092 var1254)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1390 Int (bv2nat (bvand ((_ int2bv 64) var194!1) ((_ int2bv 64) var1728)))) ; Statement: $l15 = l3 & $l14 
(define-const var272 Int (ite (> var1390 0) 1 (ite (< var1390 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var272 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var490!3 var2869!1 "write" var1331!1 var194!1 var3574!3 var3537!5 var895!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var490!4 var2713)
(declare-const var2869!2 var979)
(declare-const var1585 String)
(declare-const var1331!2 ClassObject)
(declare-const var194!2 Int)
(declare-const var3574!4 var3422)
(declare-const var3537!6 var3264)
(declare-const var895!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var490!4 var2869!2 var1331!2 var194!2 var3574!4 var3537!6 var895!4 var194!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var490!5 var2713)
(declare-const var2869!3 var979)
(declare-const var1331!3 ClassObject)
(declare-const var194!3 Int)
(declare-const var3574!5 var3422)
(declare-const var3537!7 var3264)
(declare-const var895!5 String)
(declare-const var194!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var490!5 var2869!3 "writeArrayMapping" var1331!3 var194!4 var3574!5 var3537!7 var895!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var490!6 var2713)
(declare-const var2869!4 var979)
(declare-const var1078 String)
(declare-const var1331!4 ClassObject)
(declare-const var194!5 Int)
(declare-const var3574!6 var3422)
(declare-const var3537!8 var3264)
(declare-const var895!6 String)
(assert true)
(define-const var2695 (Array Int Int) (toByteArray/1561254549 var3537!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var153 var2471 (classLoader/1229018461 var490!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2540 Int (getLength-Arr-Int-1 var2695)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3885 ClassObject (defineClassPublic/-885393557 var153 var298 var2695 0 var2540)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1135 var712) ; Statement: $r35 := @caughtexception 
(assert (not (= var1135 null-var712)))
(define-const var2480 var307 var307-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1274 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1274)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1274!1 String)
(assert (= var1274!1 ""))
(assert true)
(define-const var1308 String (append/672562846 var1274!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1274!2 String)
(assert (= var1274!2 (str.++ var1274!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2835 String (append/-1031950772 var1308 (cast-from-ClassObject-to-var1058 var1331!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1308!1 String)
(assert (str.prefixof var1308 var1308!1))
(assert true)
(define-const var2811 String (toString/-2075883882 var2835)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2480 var2811 var1135)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2480!1 var307)
(declare-const var2811!1 String)
(declare-const var1135!1 var712)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3264-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3422_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var307-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1058=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2713=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var490=r15, var1331=r7, var979=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2869=r16, var263=com.alibaba.fastjson2.codec.BeanInfo, var1852=r21, var3422=java.util.List, var3574=r5, var194=l3, var3264=com.alibaba.fastjson2.internal.asm.ClassWriter, var3537=$r49, var3920=java.util.function.Function, var993=null, var3287=null_type, var432=$r50, var2853=$r3, var499=java.util.concurrent.atomic.AtomicLong, var1110=$r2, var2739=$l0, var180=$r4, var3970=$r6, var3996=$i1, var2955=$r12, var401=$r51, var2638=$r10, var200=$r9, var702=$r11, var978=$r41, var3039=$r13, var413=$r33, var2299=$r14, var2652=java.lang.Package, var723=$r34, var895=r45, var298=r44, var820=$i2, var740=com.alibaba.fastjson2.internal.asm.ASMUtils, var2289=r46, var3088=$r47, var3254=52, var3711=49, var2267=com.alibaba.fastjson2.JSONWriter$Feature, var1254=$r48, var1728=$l14, var1390=$l15, var272=$b16, var1585="write", var1078="writeArrayMapping", var2695=$r27, var2471=com.alibaba.fastjson2.util.DynamicClassLoader, var153=$r17, var2540=$i4, var3885=$r28, var712=java.lang.Throwable, var1135=$r35, var307=com.alibaba.fastjson2.JSONException, var2480=$r55, var1274=$r54, var1308=$r38, var1058=java.lang.Object, var2835=$r39, var2811=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2713, r15=var490, r7=var1331, com.alibaba.fastjson2.writer.ObjectWriterProvider=var979, r16=var2869, com.alibaba.fastjson2.codec.BeanInfo=var263, r21=var1852, java.util.List=var3422, r5=var3574, l3=var194, com.alibaba.fastjson2.internal.asm.ClassWriter=var3264, $r49=var3537, java.util.function.Function=var3920, null=var993, null_type=var3287, $r50=var432, $r3=var2853, java.util.concurrent.atomic.AtomicLong=var499, $r2=var1110, $l0=var2739, $r4=var180, $r6=var3970, $i1=var3996, $r12=var2955, $r51=var401, $r10=var2638, $r9=var200, $r11=var702, $r41=var978, $r13=var3039, $r33=var413, $r14=var2299, java.lang.Package=var2652, $r34=var723, r45=var895, r44=var298, $i2=var820, com.alibaba.fastjson2.internal.asm.ASMUtils=var740, r46=var2289, $r47=var3088, 52=var3254, 49=var3711, com.alibaba.fastjson2.JSONWriter$Feature=var2267, $r48=var1254, $l14=var1728, $l15=var1390, $b16=var272, "write"=var1585, "writeArrayMapping"=var1078, $r27=var2695, com.alibaba.fastjson2.util.DynamicClassLoader=var2471, $r17=var153, $i4=var2540, $r28=var3885, java.lang.Throwable=var712, $r35=var1135, com.alibaba.fastjson2.JSONException=var307, $r55=var2480, $r54=var1274, $r38=var1308, java.lang.Object=var1058, $r39=var2835, $r40=var2811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10