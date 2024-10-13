(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort var3601 0)
(declare-sort var2629 0)
(declare-sort var2304 0)
(declare-sort var2788 0)
(declare-sort var2625 0)
(declare-sort var575 0)
(declare-sort var3348 0)
(declare-sort var3043 0)
(declare-sort var2925 0)
(declare-sort var1570 0)
(declare-sort var1846 0)
(declare-sort var3573 0)
(declare-sort var2772 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2749!class ClassObject)
(declare-fun var2788-init () var2788)
(declare-fun <init>/1561585841 (var2788 var2625) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3348) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2304_size/-959786421 (var2304) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3043)
(declare-fun visit/1245821975 (var2788 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2749 var2304 var2788 String) void)
(declare-fun genMethodInit/736566045 (var2749 var2304 var2788 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2749 var3601 ClassObject var2304 var2788 String Int) void)
(declare-fun mask/-2077367092 (var1570) Int)
(declare-fun genMethodWrite/551741206 (var2749 var3601 ClassObject var2304 var2788 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2749 var3601 ClassObject Int var2304 var2788 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2749 var3601 String ClassObject Int var2304 var2788 String) void)
(declare-fun toByteArray/1561254549 (var2788) (Array Int Int))
(declare-fun classLoader/1229018461 (var2749) var1846)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1846 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2772-init () var2772)
(declare-fun append/-1031950772 (String var1171) String)
(declare-fun cast-from-ClassObject-to-var1171 (ClassObject) var1171)
(declare-fun <init>/-743866570 (var2772 String var3573) void)
(declare-const null-var2749 var2749)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3601 var3601)
(declare-const null-var2629 var2629)
(declare-const null-var2304 var2304)
(declare-const null-Int Int)
(declare-const null-NullType var575)
(declare-const null-var2625 var2625)
(declare-const var2749-seed var3348)
(declare-const null-var3043 var3043)
(declare-const var2925-TYPE_OBJECT_WRITER_11 String)
(declare-const var2749-INTERFACES (Array Int String))
(declare-const var1570-BeanToArray var1570)
(declare-const null-var3573 var3573)
(declare-const var3829 var2749) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3829 null-var2749)))
(declare-const var3380 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3380 null-ClassObject)))
(declare-const var3438 var3601) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3438 null-var3601)))
(declare-const var1293 var2629) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1293 null-var2629)))
(declare-const var2463 var2304) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2463 null-var2304)))
(declare-const var2927 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2927 null-Int)))
(define-const var2132 var2788 var2788-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2132 null-var2625)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2132!1 var2788)
(declare-const var2590 var575)
(define-const var2753 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2753)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2753!1 String)
(assert (= var2753!1 ""))
(assert true)
(define-const var2308 String (append/672562846 var2753!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2753!2 String)
(assert (= var2753!2 (str.++ var2753!1 "OWG_")))
(define-const var2766 var3348 var2749-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2379 Int (incrementAndGet/636047358 var2766)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var920 String (append/-901862667 var2308 var2379)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2308!1 String)
(assert (str.prefixof var2308 var2308!1))
(assert true)
(define-const var895 String (append/672562846 var920 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 "_")))
(define-const var3273 Int (var2304_size/-959786421 var2463)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3807 String (append/-1001720160 var895 var3273)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var895!1 String)
(assert (str.prefixof var895 var895!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3380 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var85 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var235 String (append/672562846 var3807 var85)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3807!1 String)
(assert (= var3807!1 (str.++ var3807 var85)))
(assert true)
(define-const var588 String (toString/-2075883882 var235)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1333 ClassObject var2749!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3 var3043 (getPackage/-1841711535 var1333)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3 null-var3043)) ; Cond: $r34 == null 
(define-const var3903 String var588) ; Statement: r45 = $r33 
(define-const var250 String var588) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var566 Int (var2304_size/-959786421 var2463)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var566 11) (and (not (= var566 10)) (and (not (= var566 9)) (and (not (= var566 8)) (and (not (= var566 7)) (and (not (= var566 6)) (and (not (= var566 5)) (and (not (= var566 4)) (and (not (= var566 3)) (and (not (= var566 2)) (and (not (= var566 1)) true)))))))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional           
(define-const var2563 String var2925-TYPE_OBJECT_WRITER_11) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3653 (Array Int String) var2749-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2132!1 52 49 var3903 var2563 var3653)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2132!2 var2788)
(declare-const var1816 Int)
(declare-const var3579 Int)
(declare-const var3903!1 String)
(declare-const var2563!1 String)
(declare-const var3653!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3829 var2463 var2132!2 var2563!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3829!1 var2749)
(declare-const var2463!1 var2304)
(declare-const var2132!3 var2788)
(declare-const var2563!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3829!1 var2463!1 var2132!3 var3903!1 var2563!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3829!2 var2749)
(declare-const var2463!2 var2304)
(declare-const var2132!4 var2788)
(declare-const var3903!2 String)
(declare-const var2563!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3829!2 var3438 var3380 var2463!2 var2132!4 var3903!2 var2927)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3829!3 var2749)
(declare-const var3438!1 var3601)
(declare-const var3380!1 ClassObject)
(declare-const var2463!3 var2304)
(declare-const var2132!5 var2788)
(declare-const var3903!3 String)
(declare-const var2927!1 Int)
(define-const var446 var1570 var1570-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3562 Int (mask/-2077367092 var446)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3102 Int (bv2nat (bvand ((_ int2bv 64) var2927!1) ((_ int2bv 64) var3562)))) ; Statement: $l15 = l3 & $l14 
(define-const var3706 Int (ite (> var3102 0) 1 (ite (< var3102 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3706 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3829!3 var3438!1 var3380!1 var2463!3 var2132!5 var3903!3 var2927!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3829!4 var2749)
(declare-const var3438!2 var3601)
(declare-const var3380!2 ClassObject)
(declare-const var2463!4 var2304)
(declare-const var2132!6 var2788)
(declare-const var3903!4 String)
(declare-const var2927!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3829!4 var3438!2 var3380!2 var2927!2 var2463!4 var2132!6 var3903!4 var2927!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3829!5 var2749)
(declare-const var3438!3 var3601)
(declare-const var3380!3 ClassObject)
(declare-const var2927!3 Int)
(declare-const var2463!5 var2304)
(declare-const var2132!7 var2788)
(declare-const var3903!5 String)
(declare-const var2927!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3829!5 var3438!3 "writeArrayMapping" var3380!3 var2927!4 var2463!5 var2132!7 var3903!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3829!6 var2749)
(declare-const var3438!4 var3601)
(declare-const var2286 String)
(declare-const var3380!4 ClassObject)
(declare-const var2927!5 Int)
(declare-const var2463!6 var2304)
(declare-const var2132!8 var2788)
(declare-const var3903!6 String)
(assert true)
(define-const var3205 (Array Int Int) (toByteArray/1561254549 var2132!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3780 var1846 (classLoader/1229018461 var3829!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var822 Int (getLength-Arr-Int-1 var3205)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2287 ClassObject (defineClassPublic/-885393557 var3780 var250 var3205 0 var822)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1418 var3573) ; Statement: $r35 := @caughtexception 
(assert (not (= var1418 null-var3573)))
(define-const var2591 var2772 var2772-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1881 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1881)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1881!1 String)
(assert (= var1881!1 ""))
(assert true)
(define-const var1235 String (append/672562846 var1881!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1881!2 String)
(assert (= var1881!2 (str.++ var1881!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2548 String (append/-1031950772 var1235 (cast-from-ClassObject-to-var1171 var3380!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1235!1 String)
(assert (str.prefixof var1235 var1235!1))
(assert true)
(define-const var3053 String (toString/-2075883882 var2548)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2591 var3053 var1418)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2591!1 var2772)
(declare-const var3053!1 String)
(declare-const var1418!1 var3573)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2788-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2304_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2772-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1171=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2749=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3829=r15, var3380=r7, var3601=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3438=r16, var2629=com.alibaba.fastjson2.codec.BeanInfo, var1293=r21, var2304=java.util.List, var2463=r5, var2927=l3, var2788=com.alibaba.fastjson2.internal.asm.ClassWriter, var2132=$r49, var2625=java.util.function.Function, var2590=null, var575=null_type, var2753=$r50, var2308=$r3, var3348=java.util.concurrent.atomic.AtomicLong, var2766=$r2, var2379=$l0, var920=$r4, var895=$r6, var3273=$i1, var3807=$r12, var85=$r41, var235=$r13, var588=$r33, var1333=$r14, var3043=java.lang.Package, var3=$r34, var3903=r45, var250=r44, var566=$i2, var2925=com.alibaba.fastjson2.internal.asm.ASMUtils, var2563=r46, var3653=$r47, var1816=52, var3579=49, var1570=com.alibaba.fastjson2.JSONWriter$Feature, var446=$r48, var3562=$l14, var3102=$l15, var3706=$b16, var2286="writeArrayMapping", var3205=$r27, var1846=com.alibaba.fastjson2.util.DynamicClassLoader, var3780=$r17, var822=$i4, var2287=$r28, var3573=java.lang.Throwable, var1418=$r35, var2772=com.alibaba.fastjson2.JSONException, var2591=$r55, var1881=$r54, var1235=$r38, var1171=java.lang.Object, var2548=$r39, var3053=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2749, r15=var3829, r7=var3380, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3601, r16=var3438, com.alibaba.fastjson2.codec.BeanInfo=var2629, r21=var1293, java.util.List=var2304, r5=var2463, l3=var2927, com.alibaba.fastjson2.internal.asm.ClassWriter=var2788, $r49=var2132, java.util.function.Function=var2625, null=var2590, null_type=var575, $r50=var2753, $r3=var2308, java.util.concurrent.atomic.AtomicLong=var3348, $r2=var2766, $l0=var2379, $r4=var920, $r6=var895, $i1=var3273, $r12=var3807, $r41=var85, $r13=var235, $r33=var588, $r14=var1333, java.lang.Package=var3043, $r34=var3, r45=var3903, r44=var250, $i2=var566, com.alibaba.fastjson2.internal.asm.ASMUtils=var2925, r46=var2563, $r47=var3653, 52=var1816, 49=var3579, com.alibaba.fastjson2.JSONWriter$Feature=var1570, $r48=var446, $l14=var3562, $l15=var3102, $b16=var3706, "writeArrayMapping"=var2286, $r27=var3205, com.alibaba.fastjson2.util.DynamicClassLoader=var1846, $r17=var3780, $i4=var822, $r28=var2287, java.lang.Throwable=var3573, $r35=var1418, com.alibaba.fastjson2.JSONException=var2772, $r55=var2591, $r54=var1881, $r38=var1235, java.lang.Object=var1171, $r39=var2548, $r40=var3053}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10