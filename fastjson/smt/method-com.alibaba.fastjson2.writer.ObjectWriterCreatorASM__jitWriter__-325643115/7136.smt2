(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3034 0)
(declare-sort var1810 0)
(declare-sort var3967 0)
(declare-sort var1608 0)
(declare-sort var968 0)
(declare-sort var3282 0)
(declare-sort var3089 0)
(declare-sort var3784 0)
(declare-sort var779 0)
(declare-sort var2970 0)
(declare-sort var3333 0)
(declare-sort var1186 0)
(declare-sort var3550 0)
(declare-sort var1106 0)
(declare-sort var283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3034!class ClassObject)
(declare-fun var968-init () var968)
(declare-fun <init>/1561585841 (var968 var3282) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3784) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1608_size/-959786421 (var1608) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var779)
(declare-fun visit/1245821975 (var968 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3034 var1608 var968 String) void)
(declare-fun genMethodInit/736566045 (var3034 var1608 var968 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3034 var1810 ClassObject var1608 var968 String Int) void)
(declare-fun mask/-2077367092 (var3333) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3034 var1810 String ClassObject Int var1608 var968 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3034 var1810 ClassObject Int var1608 var968 String Int) void)
(declare-fun toByteArray/1561254549 (var968) (Array Int Int))
(declare-fun classLoader/1229018461 (var3034) var1186)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1186 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1106-init () var1106)
(declare-fun append/-1031950772 (String var283) String)
(declare-fun cast-from-ClassObject-to-var283 (ClassObject) var283)
(declare-fun <init>/-743866570 (var1106 String var3550) void)
(declare-const null-var3034 var3034)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1810 var1810)
(declare-const null-var3967 var3967)
(declare-const null-var1608 var1608)
(declare-const null-Int Int)
(declare-const null-NullType var3089)
(declare-const null-var3282 var3282)
(declare-const var3034-seed var3784)
(declare-const null-var779 var779)
(declare-const var2970-TYPE_OBJECT_WRITER_11 String)
(declare-const var3034-INTERFACES (Array Int String))
(declare-const var3333-BeanToArray var3333)
(declare-const null-var3550 var3550)
(declare-const var3537 var3034) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3537 null-var3034)))
(declare-const var1535 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1535 null-ClassObject)))
(declare-const var528 var1810) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var528 null-var1810)))
(declare-const var1813 var3967) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1813 null-var3967)))
(declare-const var1094 var1608) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1094 null-var1608)))
(declare-const var1232 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1232 null-Int)))
(define-const var3548 var968 var968-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3548 null-var3282)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3548!1 var968)
(declare-const var697 var3089)
(define-const var2119 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2119)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2119!1 String)
(assert (= var2119!1 ""))
(assert true)
(define-const var2235 String (append/672562846 var2119!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2119!2 String)
(assert (= var2119!2 (str.++ var2119!1 "OWG_")))
(define-const var1633 var3784 var3034-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3217 Int (incrementAndGet/636047358 var1633)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3493 String (append/-901862667 var2235 var3217)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2235!1 String)
(assert (str.prefixof var2235 var2235!1))
(assert true)
(define-const var3638 String (append/672562846 var3493 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3493!1 String)
(assert (= var3493!1 (str.++ var3493 "_")))
(define-const var3455 Int (var1608_size/-959786421 var1094)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var50 String (append/-1001720160 var3638 var3455)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3638!1 String)
(assert (str.prefixof var3638 var3638!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var1535 null-ClassObject))) ; Cond: r7 != null 
(define-const var3592 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3592)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3592!1 String)
(assert (= var3592!1 ""))
(assert true)
(define-const var901 String (append/672562846 var3592!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3592!2 String)
(assert (= var3592!2 (str.++ var3592!1 "_")))
(assert true)
(define-const var2138 String (getSimpleName/-390194377 var1535)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1555 String (append/672562846 var901 var2138)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var901!1 String)
(assert (= var901!1 (str.++ var901 var2138)))
(assert true)
(define-const var592 String (toString/-2075883882 var1555)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2012 String (append/672562846 var50 var592)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var50!1 String)
(assert (= var50!1 (str.++ var50 var592)))
(assert true)
(define-const var3079 String (toString/-2075883882 var2012)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var759 ClassObject var3034!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var291 var779 (getPackage/-1841711535 var759)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var291 null-var779)) ; Cond: $r34 == null 
(define-const var3462 String var3079) ; Statement: r45 = $r33 
(define-const var411 String var3079) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3129 Int (var1608_size/-959786421 var1094)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3129 11) (and (not (= var3129 10)) (and (not (= var3129 9)) (and (not (= var3129 8)) (and (not (= var3129 7)) (and (not (= var3129 6)) (and (not (= var3129 5)) (and (not (= var3129 4)) (and (not (= var3129 3)) (and (not (= var3129 2)) (and (not (= var3129 1)) true)))))))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional           
(define-const var1131 String var2970-TYPE_OBJECT_WRITER_11) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2219 (Array Int String) var3034-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3548!1 52 49 var3462 var1131 var2219)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3548!2 var968)
(declare-const var2490 Int)
(declare-const var3432 Int)
(declare-const var3462!1 String)
(declare-const var1131!1 String)
(declare-const var2219!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3537 var1094 var3548!2 var1131!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3537!1 var3034)
(declare-const var1094!1 var1608)
(declare-const var3548!3 var968)
(declare-const var1131!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3537!1 var1094!1 var3548!3 var3462!1 var1131!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3537!2 var3034)
(declare-const var1094!2 var1608)
(declare-const var3548!4 var968)
(declare-const var3462!2 String)
(declare-const var1131!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3537!2 var528 var1535 var1094!2 var3548!4 var3462!2 var1232)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3537!3 var3034)
(declare-const var528!1 var1810)
(declare-const var1535!1 ClassObject)
(declare-const var1094!3 var1608)
(declare-const var3548!5 var968)
(declare-const var3462!3 String)
(declare-const var1232!1 Int)
(define-const var3988 var3333 var3333-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3099 Int (mask/-2077367092 var3988)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1395 Int (bv2nat (bvand ((_ int2bv 64) var1232!1) ((_ int2bv 64) var3099)))) ; Statement: $l15 = l3 & $l14 
(define-const var1320 Int (ite (> var1395 0) 1 (ite (< var1395 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1320 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3537!3 var528!1 "write" var1535!1 var1232!1 var1094!3 var3548!5 var3462!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3537!4 var3034)
(declare-const var528!2 var1810)
(declare-const var834 String)
(declare-const var1535!2 ClassObject)
(declare-const var1232!2 Int)
(declare-const var1094!4 var1608)
(declare-const var3548!6 var968)
(declare-const var3462!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3537!4 var528!2 var1535!2 var1232!2 var1094!4 var3548!6 var3462!4 var1232!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3537!5 var3034)
(declare-const var528!3 var1810)
(declare-const var1535!3 ClassObject)
(declare-const var1232!3 Int)
(declare-const var1094!5 var1608)
(declare-const var3548!7 var968)
(declare-const var3462!5 String)
(declare-const var1232!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3537!5 var528!3 "writeArrayMapping" var1535!3 var1232!4 var1094!5 var3548!7 var3462!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3537!6 var3034)
(declare-const var528!4 var1810)
(declare-const var1715 String)
(declare-const var1535!4 ClassObject)
(declare-const var1232!5 Int)
(declare-const var1094!6 var1608)
(declare-const var3548!8 var968)
(declare-const var3462!6 String)
(assert true)
(define-const var2638 (Array Int Int) (toByteArray/1561254549 var3548!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3470 var1186 (classLoader/1229018461 var3537!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2242 Int (getLength-Arr-Int-1 var2638)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2160 ClassObject (defineClassPublic/-885393557 var3470 var411 var2638 0 var2242)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3925 var3550) ; Statement: $r35 := @caughtexception 
(assert (not (= var3925 null-var3550)))
(define-const var2613 var1106 var1106-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2694 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2694)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2694!1 String)
(assert (= var2694!1 ""))
(assert true)
(define-const var3273 String (append/672562846 var2694!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2694!2 String)
(assert (= var2694!2 (str.++ var2694!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1665 String (append/-1031950772 var3273 (cast-from-ClassObject-to-var283 var1535!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3273!1 String)
(assert (str.prefixof var3273 var3273!1))
(assert true)
(define-const var2951 String (toString/-2075883882 var1665)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2613 var2951 var3925)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2613!1 var1106)
(declare-const var2951!1 String)
(declare-const var3925!1 var3550)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var968-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1608_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1106-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var283=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3034=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3537=r15, var1535=r7, var1810=com.alibaba.fastjson2.writer.ObjectWriterProvider, var528=r16, var3967=com.alibaba.fastjson2.codec.BeanInfo, var1813=r21, var1608=java.util.List, var1094=r5, var1232=l3, var968=com.alibaba.fastjson2.internal.asm.ClassWriter, var3548=$r49, var3282=java.util.function.Function, var697=null, var3089=null_type, var2119=$r50, var2235=$r3, var3784=java.util.concurrent.atomic.AtomicLong, var1633=$r2, var3217=$l0, var3493=$r4, var3638=$r6, var3455=$i1, var50=$r12, var3592=$r51, var901=$r10, var2138=$r9, var1555=$r11, var592=$r41, var2012=$r13, var3079=$r33, var759=$r14, var779=java.lang.Package, var291=$r34, var3462=r45, var411=r44, var3129=$i2, var2970=com.alibaba.fastjson2.internal.asm.ASMUtils, var1131=r46, var2219=$r47, var2490=52, var3432=49, var3333=com.alibaba.fastjson2.JSONWriter$Feature, var3988=$r48, var3099=$l14, var1395=$l15, var1320=$b16, var834="write", var1715="writeArrayMapping", var2638=$r27, var1186=com.alibaba.fastjson2.util.DynamicClassLoader, var3470=$r17, var2242=$i4, var2160=$r28, var3550=java.lang.Throwable, var3925=$r35, var1106=com.alibaba.fastjson2.JSONException, var2613=$r55, var2694=$r54, var3273=$r38, var283=java.lang.Object, var1665=$r39, var2951=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3034, r15=var3537, r7=var1535, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1810, r16=var528, com.alibaba.fastjson2.codec.BeanInfo=var3967, r21=var1813, java.util.List=var1608, r5=var1094, l3=var1232, com.alibaba.fastjson2.internal.asm.ClassWriter=var968, $r49=var3548, java.util.function.Function=var3282, null=var697, null_type=var3089, $r50=var2119, $r3=var2235, java.util.concurrent.atomic.AtomicLong=var3784, $r2=var1633, $l0=var3217, $r4=var3493, $r6=var3638, $i1=var3455, $r12=var50, $r51=var3592, $r10=var901, $r9=var2138, $r11=var1555, $r41=var592, $r13=var2012, $r33=var3079, $r14=var759, java.lang.Package=var779, $r34=var291, r45=var3462, r44=var411, $i2=var3129, com.alibaba.fastjson2.internal.asm.ASMUtils=var2970, r46=var1131, $r47=var2219, 52=var2490, 49=var3432, com.alibaba.fastjson2.JSONWriter$Feature=var3333, $r48=var3988, $l14=var3099, $l15=var1395, $b16=var1320, "write"=var834, "writeArrayMapping"=var1715, $r27=var2638, com.alibaba.fastjson2.util.DynamicClassLoader=var1186, $r17=var3470, $i4=var2242, $r28=var2160, java.lang.Throwable=var3550, $r35=var3925, com.alibaba.fastjson2.JSONException=var1106, $r55=var2613, $r54=var2694, $r38=var3273, java.lang.Object=var283, $r39=var1665, $r40=var2951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10