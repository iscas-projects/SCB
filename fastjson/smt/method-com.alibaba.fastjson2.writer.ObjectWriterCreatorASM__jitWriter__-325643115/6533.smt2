(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var3239 0)
(declare-sort var2676 0)
(declare-sort var1488 0)
(declare-sort var3244 0)
(declare-sort var833 0)
(declare-sort var975 0)
(declare-sort var3918 0)
(declare-sort var1624 0)
(declare-sort var3092 0)
(declare-sort var2371 0)
(declare-sort var2299 0)
(declare-sort var3488 0)
(declare-sort var3854 0)
(declare-sort var3784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var841!class ClassObject)
(declare-fun var3244-init () var3244)
(declare-fun <init>/1561585841 (var3244 var833) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3918) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1488_size/-959786421 (var1488) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1624)
(declare-fun visit/1245821975 (var3244 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var841 var1488 var3244 String) void)
(declare-fun genMethodInit/736566045 (var841 var1488 var3244 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var841 var3239 ClassObject var1488 var3244 String Int) void)
(declare-fun mask/-2077367092 (var2371) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var841 var3239 String ClassObject Int var1488 var3244 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var841 var3239 ClassObject Int var1488 var3244 String Int) void)
(declare-fun toByteArray/1561254549 (var3244) (Array Int Int))
(declare-fun classLoader/1229018461 (var841) var2299)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2299 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3854-init () var3854)
(declare-fun append/-1031950772 (String var3784) String)
(declare-fun cast-from-ClassObject-to-var3784 (ClassObject) var3784)
(declare-fun <init>/-743866570 (var3854 String var3488) void)
(declare-const null-var841 var841)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3239 var3239)
(declare-const null-var2676 var2676)
(declare-const null-var1488 var1488)
(declare-const null-Int Int)
(declare-const null-NullType var975)
(declare-const null-var833 var833)
(declare-const var841-seed var3918)
(declare-const null-var1624 var1624)
(declare-const var3092-TYPE_OBJECT_WRITER_ADAPTER String)
(declare-const var841-INTERFACES (Array Int String))
(declare-const var2371-BeanToArray var2371)
(declare-const null-var3488 var3488)
(declare-const var3855 var841) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3855 null-var841)))
(declare-const var2597 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2597 null-ClassObject)))
(declare-const var3353 var3239) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3353 null-var3239)))
(declare-const var1458 var2676) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1458 null-var2676)))
(declare-const var3776 var1488) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3776 null-var1488)))
(declare-const var923 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var923 null-Int)))
(define-const var524 var3244 var3244-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var524 null-var833)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var524!1 var3244)
(declare-const var2182 var975)
(define-const var3057 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3057)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3057!1 String)
(assert (= var3057!1 ""))
(assert true)
(define-const var2868 String (append/672562846 var3057!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3057!2 String)
(assert (= var3057!2 (str.++ var3057!1 "OWG_")))
(define-const var410 var3918 var841-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var523 Int (incrementAndGet/636047358 var410)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2152 String (append/-901862667 var2868 var523)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2868!1 String)
(assert (str.prefixof var2868 var2868!1))
(assert true)
(define-const var1300 String (append/672562846 var2152 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2152!1 String)
(assert (= var2152!1 (str.++ var2152 "_")))
(define-const var677 Int (var1488_size/-959786421 var3776)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var884 String (append/-1001720160 var1300 var677)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1300!1 String)
(assert (str.prefixof var1300 var1300!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2597 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var873 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2255 String (append/672562846 var884 var873)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var884!1 String)
(assert (= var884!1 (str.++ var884 var873)))
(assert true)
(define-const var3741 String (toString/-2075883882 var2255)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3792 ClassObject var841!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2295 var1624 (getPackage/-1841711535 var3792)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2295 null-var1624)) ; Cond: $r34 == null 
(define-const var2585 String var3741) ; Statement: r45 = $r33 
(define-const var2656 String var3741) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1457 Int (var1488_size/-959786421 var3776)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (not (= var1457 12)) (and (not (= var1457 11)) (and (not (= var1457 10)) (and (not (= var1457 9)) (and (not (= var1457 8)) (and (not (= var1457 7)) (and (not (= var1457 6)) (and (not (= var1457 5)) (and (not (= var1457 4)) (and (not (= var1457 3)) (and (not (= var1457 2)) (and (not (= var1457 1)) true))))))))))))) ; Intersect: Negate: Cond: $i2 == 12   and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var2760 String var3092-TYPE_OBJECT_WRITER_ADAPTER) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> 
(assert true) ; Non Conditional
(define-const var3276 (Array Int String) var841-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var524!1 52 49 var2585 var2760 var3276)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var524!2 var3244)
(declare-const var3704 Int)
(declare-const var1633 Int)
(declare-const var2585!1 String)
(declare-const var2760!1 String)
(declare-const var3276!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3855 var3776 var524!2 var2760!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3855!1 var841)
(declare-const var3776!1 var1488)
(declare-const var524!3 var3244)
(declare-const var2760!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3855!1 var3776!1 var524!3 var2585!1 var2760!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3855!2 var841)
(declare-const var3776!2 var1488)
(declare-const var524!4 var3244)
(declare-const var2585!2 String)
(declare-const var2760!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3855!2 var3353 var2597 var3776!2 var524!4 var2585!2 var923)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3855!3 var841)
(declare-const var3353!1 var3239)
(declare-const var2597!1 ClassObject)
(declare-const var3776!3 var1488)
(declare-const var524!5 var3244)
(declare-const var2585!3 String)
(declare-const var923!1 Int)
(define-const var703 var2371 var2371-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2354 Int (mask/-2077367092 var703)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2633 Int (bv2nat (bvand ((_ int2bv 64) var923!1) ((_ int2bv 64) var2354)))) ; Statement: $l15 = l3 & $l14 
(define-const var2264 Int (ite (> var2633 0) 1 (ite (< var2633 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var2264 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3855!3 var3353!1 "write" var2597!1 var923!1 var3776!3 var524!5 var2585!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3855!4 var841)
(declare-const var3353!2 var3239)
(declare-const var1083 String)
(declare-const var2597!2 ClassObject)
(declare-const var923!2 Int)
(declare-const var3776!4 var1488)
(declare-const var524!6 var3244)
(declare-const var2585!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3855!4 var3353!2 var2597!2 var923!2 var3776!4 var524!6 var2585!4 var923!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3855!5 var841)
(declare-const var3353!3 var3239)
(declare-const var2597!3 ClassObject)
(declare-const var923!3 Int)
(declare-const var3776!5 var1488)
(declare-const var524!7 var3244)
(declare-const var2585!5 String)
(declare-const var923!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3855!5 var3353!3 "writeArrayMapping" var2597!3 var923!4 var3776!5 var524!7 var2585!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3855!6 var841)
(declare-const var3353!4 var3239)
(declare-const var2211 String)
(declare-const var2597!4 ClassObject)
(declare-const var923!5 Int)
(declare-const var3776!6 var1488)
(declare-const var524!8 var3244)
(declare-const var2585!6 String)
(assert true)
(define-const var1368 (Array Int Int) (toByteArray/1561254549 var524!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3807 var2299 (classLoader/1229018461 var3855!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1673 Int (getLength-Arr-Int-1 var1368)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3412 ClassObject (defineClassPublic/-885393557 var3807 var2656 var1368 0 var1673)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2417 var3488) ; Statement: $r35 := @caughtexception 
(assert (not (= var2417 null-var3488)))
(define-const var3328 var3854 var3854-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2687 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2687)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2687!1 String)
(assert (= var2687!1 ""))
(assert true)
(define-const var1649 String (append/672562846 var2687!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2687!2 String)
(assert (= var2687!2 (str.++ var2687!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var32 String (append/-1031950772 var1649 (cast-from-ClassObject-to-var3784 var2597!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1649!1 String)
(assert (str.prefixof var1649 var1649!1))
(assert true)
(define-const var2496 String (toString/-2075883882 var32)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3328 var2496 var2417)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3328!1 var3854)
(declare-const var2496!1 String)
(declare-const var2417!1 var3488)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3244-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1488_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3854-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3784=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var841=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3855=r15, var2597=r7, var3239=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3353=r16, var2676=com.alibaba.fastjson2.codec.BeanInfo, var1458=r21, var1488=java.util.List, var3776=r5, var923=l3, var3244=com.alibaba.fastjson2.internal.asm.ClassWriter, var524=$r49, var833=java.util.function.Function, var2182=null, var975=null_type, var3057=$r50, var2868=$r3, var3918=java.util.concurrent.atomic.AtomicLong, var410=$r2, var523=$l0, var2152=$r4, var1300=$r6, var677=$i1, var884=$r12, var873=$r41, var2255=$r13, var3741=$r33, var3792=$r14, var1624=java.lang.Package, var2295=$r34, var2585=r45, var2656=r44, var1457=$i2, var3092=com.alibaba.fastjson2.internal.asm.ASMUtils, var2760=r46, var3276=$r47, var3704=52, var1633=49, var2371=com.alibaba.fastjson2.JSONWriter$Feature, var703=$r48, var2354=$l14, var2633=$l15, var2264=$b16, var1083="write", var2211="writeArrayMapping", var1368=$r27, var2299=com.alibaba.fastjson2.util.DynamicClassLoader, var3807=$r17, var1673=$i4, var3412=$r28, var3488=java.lang.Throwable, var2417=$r35, var3854=com.alibaba.fastjson2.JSONException, var3328=$r55, var2687=$r54, var1649=$r38, var3784=java.lang.Object, var32=$r39, var2496=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var841, r15=var3855, r7=var2597, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3239, r16=var3353, com.alibaba.fastjson2.codec.BeanInfo=var2676, r21=var1458, java.util.List=var1488, r5=var3776, l3=var923, com.alibaba.fastjson2.internal.asm.ClassWriter=var3244, $r49=var524, java.util.function.Function=var833, null=var2182, null_type=var975, $r50=var3057, $r3=var2868, java.util.concurrent.atomic.AtomicLong=var3918, $r2=var410, $l0=var523, $r4=var2152, $r6=var1300, $i1=var677, $r12=var884, $r41=var873, $r13=var2255, $r33=var3741, $r14=var3792, java.lang.Package=var1624, $r34=var2295, r45=var2585, r44=var2656, $i2=var1457, com.alibaba.fastjson2.internal.asm.ASMUtils=var3092, r46=var2760, $r47=var3276, 52=var3704, 49=var1633, com.alibaba.fastjson2.JSONWriter$Feature=var2371, $r48=var703, $l14=var2354, $l15=var2633, $b16=var2264, "write"=var1083, "writeArrayMapping"=var2211, $r27=var1368, com.alibaba.fastjson2.util.DynamicClassLoader=var2299, $r17=var3807, $i4=var1673, $r28=var3412, java.lang.Throwable=var3488, $r35=var2417, com.alibaba.fastjson2.JSONException=var3854, $r55=var3328, $r54=var2687, $r38=var1649, java.lang.Object=var3784, $r39=var32, $r40=var2496}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>;	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10