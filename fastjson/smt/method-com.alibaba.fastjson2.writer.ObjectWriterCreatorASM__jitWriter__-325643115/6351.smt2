(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3730 0)
(declare-sort var3509 0)
(declare-sort var1887 0)
(declare-sort var2270 0)
(declare-sort var3464 0)
(declare-sort var3537 0)
(declare-sort var3681 0)
(declare-sort var659 0)
(declare-sort var917 0)
(declare-sort var3181 0)
(declare-sort var602 0)
(declare-sort var2506 0)
(declare-sort var2385 0)
(declare-sort var431 0)
(declare-sort var108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3730!class ClassObject)
(declare-fun var3464-init () var3464)
(declare-fun <init>/1561585841 (var3464 var3537) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var659) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2270_size/-959786421 (var2270) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var917)
(declare-fun visit/1245821975 (var3464 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3730 var2270 var3464 String) void)
(declare-fun genMethodInit/736566045 (var3730 var2270 var3464 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3730 var3509 ClassObject var2270 var3464 String Int) void)
(declare-fun mask/-2077367092 (var602) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3730 var3509 String ClassObject Int var2270 var3464 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3730 var3509 ClassObject Int var2270 var3464 String Int) void)
(declare-fun toByteArray/1561254549 (var3464) (Array Int Int))
(declare-fun classLoader/1229018461 (var3730) var2506)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2506 String (Array Int Int) Int Int) ClassObject)
(declare-fun var431-init () var431)
(declare-fun append/-1031950772 (String var108) String)
(declare-fun cast-from-ClassObject-to-var108 (ClassObject) var108)
(declare-fun <init>/-743866570 (var431 String var2385) void)
(declare-const null-var3730 var3730)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3509 var3509)
(declare-const null-var1887 var1887)
(declare-const null-var2270 var2270)
(declare-const null-Int Int)
(declare-const null-NullType var3681)
(declare-const null-var3537 var3537)
(declare-const var3730-seed var659)
(declare-const null-var917 var917)
(declare-const var3181-TYPE_OBJECT_WRITER_9 String)
(declare-const var3730-INTERFACES (Array Int String))
(declare-const var602-BeanToArray var602)
(declare-const null-var2385 var2385)
(declare-const var1160 var3730) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1160 null-var3730)))
(declare-const var2228 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2228 null-ClassObject)))
(declare-const var3453 var3509) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3453 null-var3509)))
(declare-const var2215 var1887) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2215 null-var1887)))
(declare-const var138 var2270) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var138 null-var2270)))
(declare-const var2507 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2507 null-Int)))
(define-const var2661 var3464 var3464-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2661 null-var3537)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2661!1 var3464)
(declare-const var2359 var3681)
(define-const var907 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var907)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var907!1 String)
(assert (= var907!1 ""))
(assert true)
(define-const var2403 String (append/672562846 var907!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var907!2 String)
(assert (= var907!2 (str.++ var907!1 "OWG_")))
(define-const var3141 var659 var3730-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1492 Int (incrementAndGet/636047358 var3141)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2830 String (append/-901862667 var2403 var1492)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2403!1 String)
(assert (str.prefixof var2403 var2403!1))
(assert true)
(define-const var2128 String (append/672562846 var2830 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2830!1 String)
(assert (= var2830!1 (str.++ var2830 "_")))
(define-const var2582 Int (var2270_size/-959786421 var138)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var36 String (append/-1001720160 var2128 var2582)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2128!1 String)
(assert (str.prefixof var2128 var2128!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2228 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var869 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3048 String (append/672562846 var36 var869)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var36!1 String)
(assert (= var36!1 (str.++ var36 var869)))
(assert true)
(define-const var739 String (toString/-2075883882 var3048)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3441 ClassObject var3730!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var719 var917 (getPackage/-1841711535 var3441)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var719 null-var917)) ; Cond: $r34 == null 
(define-const var2412 String var739) ; Statement: r45 = $r33 
(define-const var235 String var739) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2525 Int (var2270_size/-959786421 var138)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2525 9) (and (not (= var2525 8)) (and (not (= var2525 7)) (and (not (= var2525 6)) (and (not (= var2525 5)) (and (not (= var2525 4)) (and (not (= var2525 3)) (and (not (= var2525 2)) (and (not (= var2525 1)) true)))))))))) ; Intersect: Cond: $i2 == 9  and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional         
(define-const var1391 String var3181-TYPE_OBJECT_WRITER_9) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var79 (Array Int String) var3730-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2661!1 52 49 var2412 var1391 var79)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2661!2 var3464)
(declare-const var2567 Int)
(declare-const var143 Int)
(declare-const var2412!1 String)
(declare-const var1391!1 String)
(declare-const var79!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1160 var138 var2661!2 var1391!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1160!1 var3730)
(declare-const var138!1 var2270)
(declare-const var2661!3 var3464)
(declare-const var1391!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1160!1 var138!1 var2661!3 var2412!1 var1391!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1160!2 var3730)
(declare-const var138!2 var2270)
(declare-const var2661!4 var3464)
(declare-const var2412!2 String)
(declare-const var1391!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1160!2 var3453 var2228 var138!2 var2661!4 var2412!2 var2507)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1160!3 var3730)
(declare-const var3453!1 var3509)
(declare-const var2228!1 ClassObject)
(declare-const var138!3 var2270)
(declare-const var2661!5 var3464)
(declare-const var2412!3 String)
(declare-const var2507!1 Int)
(define-const var2794 var602 var602-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2798 Int (mask/-2077367092 var2794)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3588 Int (bv2nat (bvand ((_ int2bv 64) var2507!1) ((_ int2bv 64) var2798)))) ; Statement: $l15 = l3 & $l14 
(define-const var3726 Int (ite (> var3588 0) 1 (ite (< var3588 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var3726 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1160!3 var3453!1 "write" var2228!1 var2507!1 var138!3 var2661!5 var2412!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var1160!4 var3730)
(declare-const var3453!2 var3509)
(declare-const var3652 String)
(declare-const var2228!2 ClassObject)
(declare-const var2507!2 Int)
(declare-const var138!4 var2270)
(declare-const var2661!6 var3464)
(declare-const var2412!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1160!4 var3453!2 var2228!2 var2507!2 var138!4 var2661!6 var2412!4 var2507!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1160!5 var3730)
(declare-const var3453!3 var3509)
(declare-const var2228!3 ClassObject)
(declare-const var2507!3 Int)
(declare-const var138!5 var2270)
(declare-const var2661!7 var3464)
(declare-const var2412!5 String)
(declare-const var2507!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1160!5 var3453!3 "writeArrayMapping" var2228!3 var2507!4 var138!5 var2661!7 var2412!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1160!6 var3730)
(declare-const var3453!4 var3509)
(declare-const var2016 String)
(declare-const var2228!4 ClassObject)
(declare-const var2507!5 Int)
(declare-const var138!6 var2270)
(declare-const var2661!8 var3464)
(declare-const var2412!6 String)
(assert true)
(define-const var3608 (Array Int Int) (toByteArray/1561254549 var2661!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3531 var2506 (classLoader/1229018461 var1160!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1656 Int (getLength-Arr-Int-1 var3608)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var147 ClassObject (defineClassPublic/-885393557 var3531 var235 var3608 0 var1656)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2960 var2385) ; Statement: $r35 := @caughtexception 
(assert (not (= var2960 null-var2385)))
(define-const var1211 var431 var431-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var302 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var302)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var302!1 String)
(assert (= var302!1 ""))
(assert true)
(define-const var764 String (append/672562846 var302!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var302!2 String)
(assert (= var302!2 (str.++ var302!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1062 String (append/-1031950772 var764 (cast-from-ClassObject-to-var108 var2228!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var764!1 String)
(assert (str.prefixof var764 var764!1))
(assert true)
(define-const var1298 String (toString/-2075883882 var1062)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1211 var1298 var2960)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1211!1 var431)
(declare-const var1298!1 String)
(declare-const var2960!1 var2385)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3464-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2270_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var431-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var108=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3730=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1160=r15, var2228=r7, var3509=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3453=r16, var1887=com.alibaba.fastjson2.codec.BeanInfo, var2215=r21, var2270=java.util.List, var138=r5, var2507=l3, var3464=com.alibaba.fastjson2.internal.asm.ClassWriter, var2661=$r49, var3537=java.util.function.Function, var2359=null, var3681=null_type, var907=$r50, var2403=$r3, var659=java.util.concurrent.atomic.AtomicLong, var3141=$r2, var1492=$l0, var2830=$r4, var2128=$r6, var2582=$i1, var36=$r12, var869=$r41, var3048=$r13, var739=$r33, var3441=$r14, var917=java.lang.Package, var719=$r34, var2412=r45, var235=r44, var2525=$i2, var3181=com.alibaba.fastjson2.internal.asm.ASMUtils, var1391=r46, var79=$r47, var2567=52, var143=49, var602=com.alibaba.fastjson2.JSONWriter$Feature, var2794=$r48, var2798=$l14, var3588=$l15, var3726=$b16, var3652="write", var2016="writeArrayMapping", var3608=$r27, var2506=com.alibaba.fastjson2.util.DynamicClassLoader, var3531=$r17, var1656=$i4, var147=$r28, var2385=java.lang.Throwable, var2960=$r35, var431=com.alibaba.fastjson2.JSONException, var1211=$r55, var302=$r54, var764=$r38, var108=java.lang.Object, var1062=$r39, var1298=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3730, r15=var1160, r7=var2228, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3509, r16=var3453, com.alibaba.fastjson2.codec.BeanInfo=var1887, r21=var2215, java.util.List=var2270, r5=var138, l3=var2507, com.alibaba.fastjson2.internal.asm.ClassWriter=var3464, $r49=var2661, java.util.function.Function=var3537, null=var2359, null_type=var3681, $r50=var907, $r3=var2403, java.util.concurrent.atomic.AtomicLong=var659, $r2=var3141, $l0=var1492, $r4=var2830, $r6=var2128, $i1=var2582, $r12=var36, $r41=var869, $r13=var3048, $r33=var739, $r14=var3441, java.lang.Package=var917, $r34=var719, r45=var2412, r44=var235, $i2=var2525, com.alibaba.fastjson2.internal.asm.ASMUtils=var3181, r46=var1391, $r47=var79, 52=var2567, 49=var143, com.alibaba.fastjson2.JSONWriter$Feature=var602, $r48=var2794, $l14=var2798, $l15=var3588, $b16=var3726, "write"=var3652, "writeArrayMapping"=var2016, $r27=var3608, com.alibaba.fastjson2.util.DynamicClassLoader=var2506, $r17=var3531, $i4=var1656, $r28=var147, java.lang.Throwable=var2385, $r35=var2960, com.alibaba.fastjson2.JSONException=var431, $r55=var1211, $r54=var302, $r38=var764, java.lang.Object=var108, $r39=var1062, $r40=var1298}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10