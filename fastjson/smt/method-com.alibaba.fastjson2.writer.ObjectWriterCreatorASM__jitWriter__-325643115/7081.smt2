(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3740 0)
(declare-sort var2222 0)
(declare-sort var1588 0)
(declare-sort var480 0)
(declare-sort var2007 0)
(declare-sort var2730 0)
(declare-sort var1720 0)
(declare-sort var35 0)
(declare-sort var3961 0)
(declare-sort var2811 0)
(declare-sort var2274 0)
(declare-sort var2572 0)
(declare-sort var2942 0)
(declare-sort var392 0)
(declare-sort var3426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3740!class ClassObject)
(declare-fun var2007-init () var2007)
(declare-fun <init>/1561585841 (var2007 var2730) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var35) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var480_size/-959786421 (var480) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3961)
(declare-fun visit/1245821975 (var2007 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3740 var480 var2007 String) void)
(declare-fun genMethodInit/736566045 (var3740 var480 var2007 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3740 var2222 ClassObject var480 var2007 String Int) void)
(declare-fun mask/-2077367092 (var2274) Int)
(declare-fun genMethodWrite/551741206 (var3740 var2222 ClassObject var480 var2007 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3740 var2222 ClassObject Int var480 var2007 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var3740 var2222 String ClassObject Int var480 var2007 String) void)
(declare-fun toByteArray/1561254549 (var2007) (Array Int Int))
(declare-fun classLoader/1229018461 (var3740) var2572)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2572 String (Array Int Int) Int Int) ClassObject)
(declare-fun var392-init () var392)
(declare-fun append/-1031950772 (String var3426) String)
(declare-fun cast-from-ClassObject-to-var3426 (ClassObject) var3426)
(declare-fun <init>/-743866570 (var392 String var2942) void)
(declare-const null-var3740 var3740)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2222 var2222)
(declare-const null-var1588 var1588)
(declare-const null-var480 var480)
(declare-const null-Int Int)
(declare-const null-NullType var1720)
(declare-const null-var2730 var2730)
(declare-const var3740-seed var35)
(declare-const null-var3961 var3961)
(declare-const var2811-TYPE_OBJECT_WRITER_9 String)
(declare-const var3740-INTERFACES (Array Int String))
(declare-const var2274-BeanToArray var2274)
(declare-const null-var2942 var2942)
(declare-const var3126 var3740) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3126 null-var3740)))
(declare-const var516 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var516 null-ClassObject)))
(declare-const var2587 var2222) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2587 null-var2222)))
(declare-const var3233 var1588) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3233 null-var1588)))
(declare-const var1725 var480) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1725 null-var480)))
(declare-const var3974 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3974 null-Int)))
(define-const var876 var2007 var2007-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var876 null-var2730)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var876!1 var2007)
(declare-const var3741 var1720)
(define-const var2176 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2176)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2176!1 String)
(assert (= var2176!1 ""))
(assert true)
(define-const var1692 String (append/672562846 var2176!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2176!2 String)
(assert (= var2176!2 (str.++ var2176!1 "OWG_")))
(define-const var2948 var35 var3740-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var637 Int (incrementAndGet/636047358 var2948)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1599 String (append/-901862667 var1692 var637)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1692!1 String)
(assert (str.prefixof var1692 var1692!1))
(assert true)
(define-const var2797 String (append/672562846 var1599 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1599!1 String)
(assert (= var1599!1 (str.++ var1599 "_")))
(define-const var3783 Int (var480_size/-959786421 var1725)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1569 String (append/-1001720160 var2797 var3783)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2797!1 String)
(assert (str.prefixof var2797 var2797!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var516 null-ClassObject))) ; Cond: r7 != null 
(define-const var1236 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1236)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1236!1 String)
(assert (= var1236!1 ""))
(assert true)
(define-const var152 String (append/672562846 var1236!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1236!2 String)
(assert (= var1236!2 (str.++ var1236!1 "_")))
(assert true)
(define-const var3787 String (getSimpleName/-390194377 var516)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var922 String (append/672562846 var152 var3787)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var152!1 String)
(assert (= var152!1 (str.++ var152 var3787)))
(assert true)
(define-const var2829 String (toString/-2075883882 var922)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1192 String (append/672562846 var1569 var2829)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1569!1 String)
(assert (= var1569!1 (str.++ var1569 var2829)))
(assert true)
(define-const var2066 String (toString/-2075883882 var1192)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var612 ClassObject var3740!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1457 var3961 (getPackage/-1841711535 var612)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1457 null-var3961)) ; Cond: $r34 == null 
(define-const var822 String var2066) ; Statement: r45 = $r33 
(define-const var2058 String var2066) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3754 Int (var480_size/-959786421 var1725)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3754 9) (and (not (= var3754 8)) (and (not (= var3754 7)) (and (not (= var3754 6)) (and (not (= var3754 5)) (and (not (= var3754 4)) (and (not (= var3754 3)) (and (not (= var3754 2)) (and (not (= var3754 1)) true)))))))))) ; Intersect: Cond: $i2 == 9  and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional         
(define-const var278 String var2811-TYPE_OBJECT_WRITER_9) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3318 (Array Int String) var3740-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var876!1 52 49 var822 var278 var3318)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var876!2 var2007)
(declare-const var1828 Int)
(declare-const var449 Int)
(declare-const var822!1 String)
(declare-const var278!1 String)
(declare-const var3318!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3126 var1725 var876!2 var278!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3126!1 var3740)
(declare-const var1725!1 var480)
(declare-const var876!3 var2007)
(declare-const var278!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3126!1 var1725!1 var876!3 var822!1 var278!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3126!2 var3740)
(declare-const var1725!2 var480)
(declare-const var876!4 var2007)
(declare-const var822!2 String)
(declare-const var278!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3126!2 var2587 var516 var1725!2 var876!4 var822!2 var3974)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3126!3 var3740)
(declare-const var2587!1 var2222)
(declare-const var516!1 ClassObject)
(declare-const var1725!3 var480)
(declare-const var876!5 var2007)
(declare-const var822!3 String)
(declare-const var3974!1 Int)
(define-const var3439 var2274 var2274-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1463 Int (mask/-2077367092 var3439)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2037 Int (bv2nat (bvand ((_ int2bv 64) var3974!1) ((_ int2bv 64) var1463)))) ; Statement: $l15 = l3 & $l14 
(define-const var1421 Int (ite (> var2037 0) 1 (ite (< var2037 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var1421 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3126!3 var2587!1 var516!1 var1725!3 var876!5 var822!3 var3974!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3126!4 var3740)
(declare-const var2587!2 var2222)
(declare-const var516!2 ClassObject)
(declare-const var1725!4 var480)
(declare-const var876!6 var2007)
(declare-const var822!4 String)
(declare-const var3974!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3126!4 var2587!2 var516!2 var3974!2 var1725!4 var876!6 var822!4 var3974!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3126!5 var3740)
(declare-const var2587!3 var2222)
(declare-const var516!3 ClassObject)
(declare-const var3974!3 Int)
(declare-const var1725!5 var480)
(declare-const var876!7 var2007)
(declare-const var822!5 String)
(declare-const var3974!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3126!5 var2587!3 "writeArrayMapping" var516!3 var3974!4 var1725!5 var876!7 var822!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3126!6 var3740)
(declare-const var2587!4 var2222)
(declare-const var3367 String)
(declare-const var516!4 ClassObject)
(declare-const var3974!5 Int)
(declare-const var1725!6 var480)
(declare-const var876!8 var2007)
(declare-const var822!6 String)
(assert true)
(define-const var3448 (Array Int Int) (toByteArray/1561254549 var876!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3164 var2572 (classLoader/1229018461 var3126!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3363 Int (getLength-Arr-Int-1 var3448)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3733 ClassObject (defineClassPublic/-885393557 var3164 var2058 var3448 0 var3363)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1887 var2942) ; Statement: $r35 := @caughtexception 
(assert (not (= var1887 null-var2942)))
(define-const var266 var392 var392-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1570 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1570)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1570!1 String)
(assert (= var1570!1 ""))
(assert true)
(define-const var621 String (append/672562846 var1570!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1570!2 String)
(assert (= var1570!2 (str.++ var1570!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3476 String (append/-1031950772 var621 (cast-from-ClassObject-to-var3426 var516!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var621!1 String)
(assert (str.prefixof var621 var621!1))
(assert true)
(define-const var2774 String (toString/-2075883882 var3476)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var266 var2774 var1887)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var266!1 var392)
(declare-const var2774!1 String)
(declare-const var1887!1 var2942)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2007-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var480_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var392-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3426=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3740=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3126=r15, var516=r7, var2222=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2587=r16, var1588=com.alibaba.fastjson2.codec.BeanInfo, var3233=r21, var480=java.util.List, var1725=r5, var3974=l3, var2007=com.alibaba.fastjson2.internal.asm.ClassWriter, var876=$r49, var2730=java.util.function.Function, var3741=null, var1720=null_type, var2176=$r50, var1692=$r3, var35=java.util.concurrent.atomic.AtomicLong, var2948=$r2, var637=$l0, var1599=$r4, var2797=$r6, var3783=$i1, var1569=$r12, var1236=$r51, var152=$r10, var3787=$r9, var922=$r11, var2829=$r41, var1192=$r13, var2066=$r33, var612=$r14, var3961=java.lang.Package, var1457=$r34, var822=r45, var2058=r44, var3754=$i2, var2811=com.alibaba.fastjson2.internal.asm.ASMUtils, var278=r46, var3318=$r47, var1828=52, var449=49, var2274=com.alibaba.fastjson2.JSONWriter$Feature, var3439=$r48, var1463=$l14, var2037=$l15, var1421=$b16, var3367="writeArrayMapping", var3448=$r27, var2572=com.alibaba.fastjson2.util.DynamicClassLoader, var3164=$r17, var3363=$i4, var3733=$r28, var2942=java.lang.Throwable, var1887=$r35, var392=com.alibaba.fastjson2.JSONException, var266=$r55, var1570=$r54, var621=$r38, var3426=java.lang.Object, var3476=$r39, var2774=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3740, r15=var3126, r7=var516, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2222, r16=var2587, com.alibaba.fastjson2.codec.BeanInfo=var1588, r21=var3233, java.util.List=var480, r5=var1725, l3=var3974, com.alibaba.fastjson2.internal.asm.ClassWriter=var2007, $r49=var876, java.util.function.Function=var2730, null=var3741, null_type=var1720, $r50=var2176, $r3=var1692, java.util.concurrent.atomic.AtomicLong=var35, $r2=var2948, $l0=var637, $r4=var1599, $r6=var2797, $i1=var3783, $r12=var1569, $r51=var1236, $r10=var152, $r9=var3787, $r11=var922, $r41=var2829, $r13=var1192, $r33=var2066, $r14=var612, java.lang.Package=var3961, $r34=var1457, r45=var822, r44=var2058, $i2=var3754, com.alibaba.fastjson2.internal.asm.ASMUtils=var2811, r46=var278, $r47=var3318, 52=var1828, 49=var449, com.alibaba.fastjson2.JSONWriter$Feature=var2274, $r48=var3439, $l14=var1463, $l15=var2037, $b16=var1421, "writeArrayMapping"=var3367, $r27=var3448, com.alibaba.fastjson2.util.DynamicClassLoader=var2572, $r17=var3164, $i4=var3363, $r28=var3733, java.lang.Throwable=var2942, $r35=var1887, com.alibaba.fastjson2.JSONException=var392, $r55=var266, $r54=var1570, $r38=var621, java.lang.Object=var3426, $r39=var3476, $r40=var2774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10