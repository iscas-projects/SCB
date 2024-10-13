(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort var2139 0)
(declare-sort var3890 0)
(declare-sort var3675 0)
(declare-sort var3776 0)
(declare-sort var3940 0)
(declare-sort var1977 0)
(declare-sort var1913 0)
(declare-sort var1517 0)
(declare-sort var3104 0)
(declare-sort var1187 0)
(declare-sort var1025 0)
(declare-sort var3845 0)
(declare-sort var256 0)
(declare-sort var623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1941!class ClassObject)
(declare-fun var3776-init () var3776)
(declare-fun <init>/1561585841 (var3776 var3940) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1913) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3675_size/-959786421 (var3675) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1517)
(declare-fun visit/1245821975 (var3776 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1941 var3675 var3776 String) void)
(declare-fun genMethodInit/736566045 (var1941 var3675 var3776 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1941 var2139 ClassObject var3675 var3776 String Int) void)
(declare-fun mask/-2077367092 (var1187) Int)
(declare-fun genMethodWrite/551741206 (var1941 var2139 ClassObject var3675 var3776 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1941 var2139 ClassObject Int var3675 var3776 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1941 var2139 String ClassObject Int var3675 var3776 String) void)
(declare-fun toByteArray/1561254549 (var3776) (Array Int Int))
(declare-fun classLoader/1229018461 (var1941) var1025)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1025 String (Array Int Int) Int Int) ClassObject)
(declare-fun var256-init () var256)
(declare-fun append/-1031950772 (String var623) String)
(declare-fun cast-from-ClassObject-to-var623 (ClassObject) var623)
(declare-fun <init>/-743866570 (var256 String var3845) void)
(declare-const null-var1941 var1941)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2139 var2139)
(declare-const null-var3890 var3890)
(declare-const null-var3675 var3675)
(declare-const null-Int Int)
(declare-const null-NullType var1977)
(declare-const null-var3940 var3940)
(declare-const var1941-seed var1913)
(declare-const null-var1517 var1517)
(declare-const var3104-TYPE_OBJECT_WRITER_ADAPTER String)
(declare-const var1941-INTERFACES (Array Int String))
(declare-const var1187-BeanToArray var1187)
(declare-const null-var3845 var3845)
(declare-const var2168 var1941) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2168 null-var1941)))
(declare-const var3040 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3040 null-ClassObject)))
(declare-const var280 var2139) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var280 null-var2139)))
(declare-const var2917 var3890) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2917 null-var3890)))
(declare-const var1221 var3675) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1221 null-var3675)))
(declare-const var1770 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1770 null-Int)))
(define-const var1503 var3776 var3776-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1503 null-var3940)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1503!1 var3776)
(declare-const var219 var1977)
(define-const var1485 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1485)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1485!1 String)
(assert (= var1485!1 ""))
(assert true)
(define-const var1881 String (append/672562846 var1485!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1485!2 String)
(assert (= var1485!2 (str.++ var1485!1 "OWG_")))
(define-const var402 var1913 var1941-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2962 Int (incrementAndGet/636047358 var402)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1878 String (append/-901862667 var1881 var2962)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1881!1 String)
(assert (str.prefixof var1881 var1881!1))
(assert true)
(define-const var80 String (append/672562846 var1878 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1878!1 String)
(assert (= var1878!1 (str.++ var1878 "_")))
(define-const var1121 Int (var3675_size/-959786421 var1221)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2242 String (append/-1001720160 var80 var1121)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var80!1 String)
(assert (str.prefixof var80 var80!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3040 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var630 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2718 String (append/672562846 var2242 var630)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 var630)))
(assert true)
(define-const var3678 String (toString/-2075883882 var2718)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var520 ClassObject var1941!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1892 var1517 (getPackage/-1841711535 var520)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1892 null-var1517)) ; Cond: $r34 == null 
(define-const var3927 String var3678) ; Statement: r45 = $r33 
(define-const var2358 String var3678) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var910 Int (var3675_size/-959786421 var1221)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (not (= var910 12)) (and (not (= var910 11)) (and (not (= var910 10)) (and (not (= var910 9)) (and (not (= var910 8)) (and (not (= var910 7)) (and (not (= var910 6)) (and (not (= var910 5)) (and (not (= var910 4)) (and (not (= var910 3)) (and (not (= var910 2)) (and (not (= var910 1)) true))))))))))))) ; Intersect: Negate: Cond: $i2 == 12   and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var378 String var3104-TYPE_OBJECT_WRITER_ADAPTER) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> 
(assert true) ; Non Conditional
(define-const var3751 (Array Int String) var1941-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1503!1 52 49 var3927 var378 var3751)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1503!2 var3776)
(declare-const var3399 Int)
(declare-const var3902 Int)
(declare-const var3927!1 String)
(declare-const var378!1 String)
(declare-const var3751!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2168 var1221 var1503!2 var378!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2168!1 var1941)
(declare-const var1221!1 var3675)
(declare-const var1503!3 var3776)
(declare-const var378!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2168!1 var1221!1 var1503!3 var3927!1 var378!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2168!2 var1941)
(declare-const var1221!2 var3675)
(declare-const var1503!4 var3776)
(declare-const var3927!2 String)
(declare-const var378!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2168!2 var280 var3040 var1221!2 var1503!4 var3927!2 var1770)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2168!3 var1941)
(declare-const var280!1 var2139)
(declare-const var3040!1 ClassObject)
(declare-const var1221!3 var3675)
(declare-const var1503!5 var3776)
(declare-const var3927!3 String)
(declare-const var1770!1 Int)
(define-const var2462 var1187 var1187-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3662 Int (mask/-2077367092 var2462)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3681 Int (bv2nat (bvand ((_ int2bv 64) var1770!1) ((_ int2bv 64) var3662)))) ; Statement: $l15 = l3 & $l14 
(define-const var1625 Int (ite (> var3681 0) 1 (ite (< var3681 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1625 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2168!3 var280!1 var3040!1 var1221!3 var1503!5 var3927!3 var1770!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2168!4 var1941)
(declare-const var280!2 var2139)
(declare-const var3040!2 ClassObject)
(declare-const var1221!4 var3675)
(declare-const var1503!6 var3776)
(declare-const var3927!4 String)
(declare-const var1770!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2168!4 var280!2 var3040!2 var1770!2 var1221!4 var1503!6 var3927!4 var1770!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2168!5 var1941)
(declare-const var280!3 var2139)
(declare-const var3040!3 ClassObject)
(declare-const var1770!3 Int)
(declare-const var1221!5 var3675)
(declare-const var1503!7 var3776)
(declare-const var3927!5 String)
(declare-const var1770!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2168!5 var280!3 "writeArrayMapping" var3040!3 var1770!4 var1221!5 var1503!7 var3927!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2168!6 var1941)
(declare-const var280!4 var2139)
(declare-const var1388 String)
(declare-const var3040!4 ClassObject)
(declare-const var1770!5 Int)
(declare-const var1221!6 var3675)
(declare-const var1503!8 var3776)
(declare-const var3927!6 String)
(assert true)
(define-const var453 (Array Int Int) (toByteArray/1561254549 var1503!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2680 var1025 (classLoader/1229018461 var2168!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3669 Int (getLength-Arr-Int-1 var453)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var383 ClassObject (defineClassPublic/-885393557 var2680 var2358 var453 0 var3669)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var120 var3845) ; Statement: $r35 := @caughtexception 
(assert (not (= var120 null-var3845)))
(define-const var518 var256 var256-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2886 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2886)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2886!1 String)
(assert (= var2886!1 ""))
(assert true)
(define-const var3336 String (append/672562846 var2886!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2886!2 String)
(assert (= var2886!2 (str.++ var2886!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var833 String (append/-1031950772 var3336 (cast-from-ClassObject-to-var623 var3040!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3336!1 String)
(assert (str.prefixof var3336 var3336!1))
(assert true)
(define-const var3919 String (toString/-2075883882 var833)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var518 var3919 var120)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var518!1 var256)
(declare-const var3919!1 String)
(declare-const var120!1 var3845)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3776-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3675_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var256-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var623=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1941=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2168=r15, var3040=r7, var2139=com.alibaba.fastjson2.writer.ObjectWriterProvider, var280=r16, var3890=com.alibaba.fastjson2.codec.BeanInfo, var2917=r21, var3675=java.util.List, var1221=r5, var1770=l3, var3776=com.alibaba.fastjson2.internal.asm.ClassWriter, var1503=$r49, var3940=java.util.function.Function, var219=null, var1977=null_type, var1485=$r50, var1881=$r3, var1913=java.util.concurrent.atomic.AtomicLong, var402=$r2, var2962=$l0, var1878=$r4, var80=$r6, var1121=$i1, var2242=$r12, var630=$r41, var2718=$r13, var3678=$r33, var520=$r14, var1517=java.lang.Package, var1892=$r34, var3927=r45, var2358=r44, var910=$i2, var3104=com.alibaba.fastjson2.internal.asm.ASMUtils, var378=r46, var3751=$r47, var3399=52, var3902=49, var1187=com.alibaba.fastjson2.JSONWriter$Feature, var2462=$r48, var3662=$l14, var3681=$l15, var1625=$b16, var1388="writeArrayMapping", var453=$r27, var1025=com.alibaba.fastjson2.util.DynamicClassLoader, var2680=$r17, var3669=$i4, var383=$r28, var3845=java.lang.Throwable, var120=$r35, var256=com.alibaba.fastjson2.JSONException, var518=$r55, var2886=$r54, var3336=$r38, var623=java.lang.Object, var833=$r39, var3919=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1941, r15=var2168, r7=var3040, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2139, r16=var280, com.alibaba.fastjson2.codec.BeanInfo=var3890, r21=var2917, java.util.List=var3675, r5=var1221, l3=var1770, com.alibaba.fastjson2.internal.asm.ClassWriter=var3776, $r49=var1503, java.util.function.Function=var3940, null=var219, null_type=var1977, $r50=var1485, $r3=var1881, java.util.concurrent.atomic.AtomicLong=var1913, $r2=var402, $l0=var2962, $r4=var1878, $r6=var80, $i1=var1121, $r12=var2242, $r41=var630, $r13=var2718, $r33=var3678, $r14=var520, java.lang.Package=var1517, $r34=var1892, r45=var3927, r44=var2358, $i2=var910, com.alibaba.fastjson2.internal.asm.ASMUtils=var3104, r46=var378, $r47=var3751, 52=var3399, 49=var3902, com.alibaba.fastjson2.JSONWriter$Feature=var1187, $r48=var2462, $l14=var3662, $l15=var3681, $b16=var1625, "writeArrayMapping"=var1388, $r27=var453, com.alibaba.fastjson2.util.DynamicClassLoader=var1025, $r17=var2680, $i4=var3669, $r28=var383, java.lang.Throwable=var3845, $r35=var120, com.alibaba.fastjson2.JSONException=var256, $r55=var518, $r54=var2886, $r38=var3336, java.lang.Object=var623, $r39=var833, $r40=var3919}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>;	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10