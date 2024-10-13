(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1893 0)
(declare-sort var286 0)
(declare-sort var2457 0)
(declare-sort var97 0)
(declare-sort var3758 0)
(declare-sort var458 0)
(declare-sort var2824 0)
(declare-sort var152 0)
(declare-sort var3118 0)
(declare-sort var2038 0)
(declare-sort var3515 0)
(declare-sort var1967 0)
(declare-sort var1401 0)
(declare-sort var1520 0)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1893!class ClassObject)
(declare-fun var3758-init () var3758)
(declare-fun <init>/1561585841 (var3758 var458) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var152) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var97_size/-959786421 (var97) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3118)
(declare-fun visit/1245821975 (var3758 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1893 var97 var3758 String) void)
(declare-fun genMethodInit/736566045 (var1893 var97 var3758 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1893 var286 ClassObject var97 var3758 String Int) void)
(declare-fun mask/-2077367092 (var3515) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1893 var286 String ClassObject Int var97 var3758 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1893 var286 ClassObject Int var97 var3758 String Int) void)
(declare-fun toByteArray/1561254549 (var3758) (Array Int Int))
(declare-fun classLoader/1229018461 (var1893) var1967)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1967 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1520-init () var1520)
(declare-fun append/-1031950772 (String var2910) String)
(declare-fun cast-from-ClassObject-to-var2910 (ClassObject) var2910)
(declare-fun <init>/-743866570 (var1520 String var1401) void)
(declare-const null-var1893 var1893)
(declare-const null-ClassObject ClassObject)
(declare-const null-var286 var286)
(declare-const null-var2457 var2457)
(declare-const null-var97 var97)
(declare-const null-Int Int)
(declare-const null-NullType var2824)
(declare-const null-var458 var458)
(declare-const var1893-seed var152)
(declare-const null-var3118 var3118)
(declare-const var2038-TYPE_OBJECT_WRITER_8 String)
(declare-const var1893-INTERFACES (Array Int String))
(declare-const var3515-BeanToArray var3515)
(declare-const null-var1401 var1401)
(declare-const var2279 var1893) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2279 null-var1893)))
(declare-const var3780 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3780 null-ClassObject)))
(declare-const var1432 var286) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1432 null-var286)))
(declare-const var3119 var2457) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3119 null-var2457)))
(declare-const var2984 var97) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2984 null-var97)))
(declare-const var1787 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1787 null-Int)))
(define-const var3416 var3758 var3758-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3416 null-var458)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3416!1 var3758)
(declare-const var3162 var2824)
(define-const var2524 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2524)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2524!1 String)
(assert (= var2524!1 ""))
(assert true)
(define-const var3333 String (append/672562846 var2524!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2524!2 String)
(assert (= var2524!2 (str.++ var2524!1 "OWG_")))
(define-const var1380 var152 var1893-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var870 Int (incrementAndGet/636047358 var1380)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var483 String (append/-901862667 var3333 var870)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3333!1 String)
(assert (str.prefixof var3333 var3333!1))
(assert true)
(define-const var2047 String (append/672562846 var483 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var483!1 String)
(assert (= var483!1 (str.++ var483 "_")))
(define-const var275 Int (var97_size/-959786421 var2984)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2811 String (append/-1001720160 var2047 var275)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2047!1 String)
(assert (str.prefixof var2047 var2047!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3780 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var56 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3020 String (append/672562846 var2811 var56)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2811!1 String)
(assert (= var2811!1 (str.++ var2811 var56)))
(assert true)
(define-const var685 String (toString/-2075883882 var3020)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1153 ClassObject var1893!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2643 var3118 (getPackage/-1841711535 var1153)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2643 null-var3118)) ; Cond: $r34 == null 
(define-const var3655 String var685) ; Statement: r45 = $r33 
(define-const var2959 String var685) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var631 Int (var97_size/-959786421 var2984)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var631 8) (and (not (= var631 7)) (and (not (= var631 6)) (and (not (= var631 5)) (and (not (= var631 4)) (and (not (= var631 3)) (and (not (= var631 2)) (and (not (= var631 1)) true))))))))) ; Intersect: Cond: $i2 == 8  and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional        
(define-const var1412 String var2038-TYPE_OBJECT_WRITER_8) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var441 (Array Int String) var1893-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3416!1 52 49 var3655 var1412 var441)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3416!2 var3758)
(declare-const var2864 Int)
(declare-const var3301 Int)
(declare-const var3655!1 String)
(declare-const var1412!1 String)
(declare-const var441!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2279 var2984 var3416!2 var1412!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2279!1 var1893)
(declare-const var2984!1 var97)
(declare-const var3416!3 var3758)
(declare-const var1412!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2279!1 var2984!1 var3416!3 var3655!1 var1412!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2279!2 var1893)
(declare-const var2984!2 var97)
(declare-const var3416!4 var3758)
(declare-const var3655!2 String)
(declare-const var1412!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2279!2 var1432 var3780 var2984!2 var3416!4 var3655!2 var1787)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2279!3 var1893)
(declare-const var1432!1 var286)
(declare-const var3780!1 ClassObject)
(declare-const var2984!3 var97)
(declare-const var3416!5 var3758)
(declare-const var3655!3 String)
(declare-const var1787!1 Int)
(define-const var1246 var3515 var3515-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3226 Int (mask/-2077367092 var1246)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1105 Int (bv2nat (bvand ((_ int2bv 64) var1787!1) ((_ int2bv 64) var3226)))) ; Statement: $l15 = l3 & $l14 
(define-const var1892 Int (ite (> var1105 0) 1 (ite (< var1105 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1892 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2279!3 var1432!1 "write" var3780!1 var1787!1 var2984!3 var3416!5 var3655!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2279!4 var1893)
(declare-const var1432!2 var286)
(declare-const var2496 String)
(declare-const var3780!2 ClassObject)
(declare-const var1787!2 Int)
(declare-const var2984!4 var97)
(declare-const var3416!6 var3758)
(declare-const var3655!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2279!4 var1432!2 var3780!2 var1787!2 var2984!4 var3416!6 var3655!4 var1787!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2279!5 var1893)
(declare-const var1432!3 var286)
(declare-const var3780!3 ClassObject)
(declare-const var1787!3 Int)
(declare-const var2984!5 var97)
(declare-const var3416!7 var3758)
(declare-const var3655!5 String)
(declare-const var1787!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2279!5 var1432!3 "writeArrayMapping" var3780!3 var1787!4 var2984!5 var3416!7 var3655!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2279!6 var1893)
(declare-const var1432!4 var286)
(declare-const var2441 String)
(declare-const var3780!4 ClassObject)
(declare-const var1787!5 Int)
(declare-const var2984!6 var97)
(declare-const var3416!8 var3758)
(declare-const var3655!6 String)
(assert true)
(define-const var3993 (Array Int Int) (toByteArray/1561254549 var3416!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2660 var1967 (classLoader/1229018461 var2279!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2285 Int (getLength-Arr-Int-1 var3993)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3199 ClassObject (defineClassPublic/-885393557 var2660 var2959 var3993 0 var2285)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2219 var1401) ; Statement: $r35 := @caughtexception 
(assert (not (= var2219 null-var1401)))
(define-const var1144 var1520 var1520-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var364 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var364)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var364!1 String)
(assert (= var364!1 ""))
(assert true)
(define-const var574 String (append/672562846 var364!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var364!2 String)
(assert (= var364!2 (str.++ var364!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3596 String (append/-1031950772 var574 (cast-from-ClassObject-to-var2910 var3780!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var574!1 String)
(assert (str.prefixof var574 var574!1))
(assert true)
(define-const var456 String (toString/-2075883882 var3596)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1144 var456 var2219)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1144!1 var1520)
(declare-const var456!1 String)
(declare-const var2219!1 var1401)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3758-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var97_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1520-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2910=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1893=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2279=r15, var3780=r7, var286=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1432=r16, var2457=com.alibaba.fastjson2.codec.BeanInfo, var3119=r21, var97=java.util.List, var2984=r5, var1787=l3, var3758=com.alibaba.fastjson2.internal.asm.ClassWriter, var3416=$r49, var458=java.util.function.Function, var3162=null, var2824=null_type, var2524=$r50, var3333=$r3, var152=java.util.concurrent.atomic.AtomicLong, var1380=$r2, var870=$l0, var483=$r4, var2047=$r6, var275=$i1, var2811=$r12, var56=$r41, var3020=$r13, var685=$r33, var1153=$r14, var3118=java.lang.Package, var2643=$r34, var3655=r45, var2959=r44, var631=$i2, var2038=com.alibaba.fastjson2.internal.asm.ASMUtils, var1412=r46, var441=$r47, var2864=52, var3301=49, var3515=com.alibaba.fastjson2.JSONWriter$Feature, var1246=$r48, var3226=$l14, var1105=$l15, var1892=$b16, var2496="write", var2441="writeArrayMapping", var3993=$r27, var1967=com.alibaba.fastjson2.util.DynamicClassLoader, var2660=$r17, var2285=$i4, var3199=$r28, var1401=java.lang.Throwable, var2219=$r35, var1520=com.alibaba.fastjson2.JSONException, var1144=$r55, var364=$r54, var574=$r38, var2910=java.lang.Object, var3596=$r39, var456=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1893, r15=var2279, r7=var3780, com.alibaba.fastjson2.writer.ObjectWriterProvider=var286, r16=var1432, com.alibaba.fastjson2.codec.BeanInfo=var2457, r21=var3119, java.util.List=var97, r5=var2984, l3=var1787, com.alibaba.fastjson2.internal.asm.ClassWriter=var3758, $r49=var3416, java.util.function.Function=var458, null=var3162, null_type=var2824, $r50=var2524, $r3=var3333, java.util.concurrent.atomic.AtomicLong=var152, $r2=var1380, $l0=var870, $r4=var483, $r6=var2047, $i1=var275, $r12=var2811, $r41=var56, $r13=var3020, $r33=var685, $r14=var1153, java.lang.Package=var3118, $r34=var2643, r45=var3655, r44=var2959, $i2=var631, com.alibaba.fastjson2.internal.asm.ASMUtils=var2038, r46=var1412, $r47=var441, 52=var2864, 49=var3301, com.alibaba.fastjson2.JSONWriter$Feature=var3515, $r48=var1246, $l14=var3226, $l15=var1105, $b16=var1892, "write"=var2496, "writeArrayMapping"=var2441, $r27=var3993, com.alibaba.fastjson2.util.DynamicClassLoader=var1967, $r17=var2660, $i4=var2285, $r28=var3199, java.lang.Throwable=var1401, $r35=var2219, com.alibaba.fastjson2.JSONException=var1520, $r55=var1144, $r54=var364, $r38=var574, java.lang.Object=var2910, $r39=var3596, $r40=var456}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10