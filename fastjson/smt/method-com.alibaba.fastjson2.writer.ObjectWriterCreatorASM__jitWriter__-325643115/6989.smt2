(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var2636 0)
(declare-sort var3167 0)
(declare-sort var1463 0)
(declare-sort var3665 0)
(declare-sort var667 0)
(declare-sort var3329 0)
(declare-sort var3063 0)
(declare-sort var3768 0)
(declare-sort var3324 0)
(declare-sort var2402 0)
(declare-sort var861 0)
(declare-sort var674 0)
(declare-sort var3420 0)
(declare-sort var171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2755!class ClassObject)
(declare-fun var3665-init () var3665)
(declare-fun <init>/1561585841 (var3665 var667) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3063) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1463_size/-959786421 (var1463) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3768)
(declare-fun visit/1245821975 (var3665 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2755 var1463 var3665 String) void)
(declare-fun genMethodInit/736566045 (var2755 var1463 var3665 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2755 var2636 ClassObject var1463 var3665 String Int) void)
(declare-fun mask/-2077367092 (var2402) Int)
(declare-fun genMethodWrite/551741206 (var2755 var2636 ClassObject var1463 var3665 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2755 var2636 ClassObject Int var1463 var3665 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2755 var2636 String ClassObject Int var1463 var3665 String) void)
(declare-fun toByteArray/1561254549 (var3665) (Array Int Int))
(declare-fun classLoader/1229018461 (var2755) var861)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var861 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3420-init () var3420)
(declare-fun append/-1031950772 (String var171) String)
(declare-fun cast-from-ClassObject-to-var171 (ClassObject) var171)
(declare-fun <init>/-743866570 (var3420 String var674) void)
(declare-const null-var2755 var2755)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2636 var2636)
(declare-const null-var3167 var3167)
(declare-const null-var1463 var1463)
(declare-const null-Int Int)
(declare-const null-NullType var3329)
(declare-const null-var667 var667)
(declare-const var2755-seed var3063)
(declare-const null-var3768 var3768)
(declare-const var3324-TYPE_OBJECT_WRITER_7 String)
(declare-const var2755-INTERFACES (Array Int String))
(declare-const var2402-BeanToArray var2402)
(declare-const null-var674 var674)
(declare-const var2155 var2755) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2155 null-var2755)))
(declare-const var1932 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1932 null-ClassObject)))
(declare-const var2895 var2636) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2895 null-var2636)))
(declare-const var500 var3167) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var500 null-var3167)))
(declare-const var2333 var1463) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2333 null-var1463)))
(declare-const var1826 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1826 null-Int)))
(define-const var553 var3665 var3665-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var553 null-var667)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var553!1 var3665)
(declare-const var1186 var3329)
(define-const var1584 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1584)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1584!1 String)
(assert (= var1584!1 ""))
(assert true)
(define-const var690 String (append/672562846 var1584!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1584!2 String)
(assert (= var1584!2 (str.++ var1584!1 "OWG_")))
(define-const var3291 var3063 var2755-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var506 Int (incrementAndGet/636047358 var3291)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var109 String (append/-901862667 var690 var506)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var690!1 String)
(assert (str.prefixof var690 var690!1))
(assert true)
(define-const var1036 String (append/672562846 var109 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var109!1 String)
(assert (= var109!1 (str.++ var109 "_")))
(define-const var2353 Int (var1463_size/-959786421 var2333)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3652 String (append/-1001720160 var1036 var2353)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1036!1 String)
(assert (str.prefixof var1036 var1036!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var1932 null-ClassObject))) ; Cond: r7 != null 
(define-const var2302 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2302)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2302!1 String)
(assert (= var2302!1 ""))
(assert true)
(define-const var2509 String (append/672562846 var2302!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2302!2 String)
(assert (= var2302!2 (str.++ var2302!1 "_")))
(assert true)
(define-const var2152 String (getSimpleName/-390194377 var1932)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3203 String (append/672562846 var2509 var2152)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2509!1 String)
(assert (= var2509!1 (str.++ var2509 var2152)))
(assert true)
(define-const var337 String (toString/-2075883882 var3203)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var761 String (append/672562846 var3652 var337)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3652!1 String)
(assert (= var3652!1 (str.++ var3652 var337)))
(assert true)
(define-const var770 String (toString/-2075883882 var761)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1023 ClassObject var2755!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3570 var3768 (getPackage/-1841711535 var1023)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3570 null-var3768)) ; Cond: $r34 == null 
(define-const var1891 String var770) ; Statement: r45 = $r33 
(define-const var1396 String var770) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1724 Int (var1463_size/-959786421 var2333)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1724 7) (and (not (= var1724 6)) (and (not (= var1724 5)) (and (not (= var1724 4)) (and (not (= var1724 3)) (and (not (= var1724 2)) (and (not (= var1724 1)) true)))))))) ; Intersect: Cond: $i2 == 7  and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional       
(define-const var158 String var3324-TYPE_OBJECT_WRITER_7) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3761 (Array Int String) var2755-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var553!1 52 49 var1891 var158 var3761)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var553!2 var3665)
(declare-const var2256 Int)
(declare-const var1643 Int)
(declare-const var1891!1 String)
(declare-const var158!1 String)
(declare-const var3761!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2155 var2333 var553!2 var158!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2155!1 var2755)
(declare-const var2333!1 var1463)
(declare-const var553!3 var3665)
(declare-const var158!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2155!1 var2333!1 var553!3 var1891!1 var158!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2155!2 var2755)
(declare-const var2333!2 var1463)
(declare-const var553!4 var3665)
(declare-const var1891!2 String)
(declare-const var158!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2155!2 var2895 var1932 var2333!2 var553!4 var1891!2 var1826)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2155!3 var2755)
(declare-const var2895!1 var2636)
(declare-const var1932!1 ClassObject)
(declare-const var2333!3 var1463)
(declare-const var553!5 var3665)
(declare-const var1891!3 String)
(declare-const var1826!1 Int)
(define-const var592 var2402 var2402-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3088 Int (mask/-2077367092 var592)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2214 Int (bv2nat (bvand ((_ int2bv 64) var1826!1) ((_ int2bv 64) var3088)))) ; Statement: $l15 = l3 & $l14 
(define-const var2804 Int (ite (> var2214 0) 1 (ite (< var2214 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var2804 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2155!3 var2895!1 var1932!1 var2333!3 var553!5 var1891!3 var1826!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2155!4 var2755)
(declare-const var2895!2 var2636)
(declare-const var1932!2 ClassObject)
(declare-const var2333!4 var1463)
(declare-const var553!6 var3665)
(declare-const var1891!4 String)
(declare-const var1826!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2155!4 var2895!2 var1932!2 var1826!2 var2333!4 var553!6 var1891!4 var1826!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2155!5 var2755)
(declare-const var2895!3 var2636)
(declare-const var1932!3 ClassObject)
(declare-const var1826!3 Int)
(declare-const var2333!5 var1463)
(declare-const var553!7 var3665)
(declare-const var1891!5 String)
(declare-const var1826!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2155!5 var2895!3 "writeArrayMapping" var1932!3 var1826!4 var2333!5 var553!7 var1891!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2155!6 var2755)
(declare-const var2895!4 var2636)
(declare-const var28 String)
(declare-const var1932!4 ClassObject)
(declare-const var1826!5 Int)
(declare-const var2333!6 var1463)
(declare-const var553!8 var3665)
(declare-const var1891!6 String)
(assert true)
(define-const var3817 (Array Int Int) (toByteArray/1561254549 var553!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2631 var861 (classLoader/1229018461 var2155!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2536 Int (getLength-Arr-Int-1 var3817)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2533 ClassObject (defineClassPublic/-885393557 var2631 var1396 var3817 0 var2536)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3437 var674) ; Statement: $r35 := @caughtexception 
(assert (not (= var3437 null-var674)))
(define-const var1288 var3420 var3420-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3285 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3285)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3285!1 String)
(assert (= var3285!1 ""))
(assert true)
(define-const var2100 String (append/672562846 var3285!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3285!2 String)
(assert (= var3285!2 (str.++ var3285!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2489 String (append/-1031950772 var2100 (cast-from-ClassObject-to-var171 var1932!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2100!1 String)
(assert (str.prefixof var2100 var2100!1))
(assert true)
(define-const var2005 String (toString/-2075883882 var2489)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1288 var2005 var3437)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1288!1 var3420)
(declare-const var2005!1 String)
(declare-const var3437!1 var674)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3665-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1463_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3420-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var171=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2755=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2155=r15, var1932=r7, var2636=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2895=r16, var3167=com.alibaba.fastjson2.codec.BeanInfo, var500=r21, var1463=java.util.List, var2333=r5, var1826=l3, var3665=com.alibaba.fastjson2.internal.asm.ClassWriter, var553=$r49, var667=java.util.function.Function, var1186=null, var3329=null_type, var1584=$r50, var690=$r3, var3063=java.util.concurrent.atomic.AtomicLong, var3291=$r2, var506=$l0, var109=$r4, var1036=$r6, var2353=$i1, var3652=$r12, var2302=$r51, var2509=$r10, var2152=$r9, var3203=$r11, var337=$r41, var761=$r13, var770=$r33, var1023=$r14, var3768=java.lang.Package, var3570=$r34, var1891=r45, var1396=r44, var1724=$i2, var3324=com.alibaba.fastjson2.internal.asm.ASMUtils, var158=r46, var3761=$r47, var2256=52, var1643=49, var2402=com.alibaba.fastjson2.JSONWriter$Feature, var592=$r48, var3088=$l14, var2214=$l15, var2804=$b16, var28="writeArrayMapping", var3817=$r27, var861=com.alibaba.fastjson2.util.DynamicClassLoader, var2631=$r17, var2536=$i4, var2533=$r28, var674=java.lang.Throwable, var3437=$r35, var3420=com.alibaba.fastjson2.JSONException, var1288=$r55, var3285=$r54, var2100=$r38, var171=java.lang.Object, var2489=$r39, var2005=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2755, r15=var2155, r7=var1932, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2636, r16=var2895, com.alibaba.fastjson2.codec.BeanInfo=var3167, r21=var500, java.util.List=var1463, r5=var2333, l3=var1826, com.alibaba.fastjson2.internal.asm.ClassWriter=var3665, $r49=var553, java.util.function.Function=var667, null=var1186, null_type=var3329, $r50=var1584, $r3=var690, java.util.concurrent.atomic.AtomicLong=var3063, $r2=var3291, $l0=var506, $r4=var109, $r6=var1036, $i1=var2353, $r12=var3652, $r51=var2302, $r10=var2509, $r9=var2152, $r11=var3203, $r41=var337, $r13=var761, $r33=var770, $r14=var1023, java.lang.Package=var3768, $r34=var3570, r45=var1891, r44=var1396, $i2=var1724, com.alibaba.fastjson2.internal.asm.ASMUtils=var3324, r46=var158, $r47=var3761, 52=var2256, 49=var1643, com.alibaba.fastjson2.JSONWriter$Feature=var2402, $r48=var592, $l14=var3088, $l15=var2214, $b16=var2804, "writeArrayMapping"=var28, $r27=var3817, com.alibaba.fastjson2.util.DynamicClassLoader=var861, $r17=var2631, $i4=var2536, $r28=var2533, java.lang.Throwable=var674, $r35=var3437, com.alibaba.fastjson2.JSONException=var3420, $r55=var1288, $r54=var3285, $r38=var2100, java.lang.Object=var171, $r39=var2489, $r40=var2005}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10