(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var2448 0)
(declare-sort var3192 0)
(declare-sort var657 0)
(declare-sort var2300 0)
(declare-sort var3131 0)
(declare-sort var531 0)
(declare-sort var886 0)
(declare-sort var1858 0)
(declare-sort var2649 0)
(declare-sort var2502 0)
(declare-sort var1820 0)
(declare-sort var1536 0)
(declare-sort var3959 0)
(declare-sort var297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1707!class ClassObject)
(declare-fun var2300-init () var2300)
(declare-fun <init>/1561585841 (var2300 var3131) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var886) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var657_size/-959786421 (var657) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1858)
(declare-fun visit/1245821975 (var2300 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1707 var657 var2300 String) void)
(declare-fun genMethodInit/736566045 (var1707 var657 var2300 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1707 var2448 ClassObject var657 var2300 String Int) void)
(declare-fun mask/-2077367092 (var2502) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1707 var2448 String ClassObject Int var657 var2300 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1707 var2448 ClassObject Int var657 var2300 String Int) void)
(declare-fun toByteArray/1561254549 (var2300) (Array Int Int))
(declare-fun classLoader/1229018461 (var1707) var1820)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1820 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3959-init () var3959)
(declare-fun append/-1031950772 (String var297) String)
(declare-fun cast-from-ClassObject-to-var297 (ClassObject) var297)
(declare-fun <init>/-743866570 (var3959 String var1536) void)
(declare-const null-var1707 var1707)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2448 var2448)
(declare-const null-var3192 var3192)
(declare-const null-var657 var657)
(declare-const null-Int Int)
(declare-const null-NullType var531)
(declare-const null-var3131 var3131)
(declare-const var1707-seed var886)
(declare-const null-var1858 var1858)
(declare-const var2649-TYPE_OBJECT_WRITER_7 String)
(declare-const var1707-INTERFACES (Array Int String))
(declare-const var2502-BeanToArray var2502)
(declare-const null-var1536 var1536)
(declare-const var412 var1707) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var412 null-var1707)))
(declare-const var2116 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2116 null-ClassObject)))
(declare-const var1279 var2448) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1279 null-var2448)))
(declare-const var1158 var3192) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1158 null-var3192)))
(declare-const var3839 var657) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3839 null-var657)))
(declare-const var734 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var734 null-Int)))
(define-const var1868 var2300 var2300-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1868 null-var3131)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1868!1 var2300)
(declare-const var540 var531)
(define-const var2637 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2637)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2637!1 String)
(assert (= var2637!1 ""))
(assert true)
(define-const var3519 String (append/672562846 var2637!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var2637!2 String)
(assert (= var2637!2 (str.++ var2637!1 "OWG_")))
(define-const var1213 var886 var1707-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3722 Int (incrementAndGet/636047358 var1213)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1318 String (append/-901862667 var3519 var3722)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3519!1 String)
(assert (str.prefixof var3519 var3519!1))
(assert true)
(define-const var2887 String (append/672562846 var1318 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1318!1 String)
(assert (= var1318!1 (str.++ var1318 "_")))
(define-const var2799 Int (var657_size/-959786421 var3839)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3657 String (append/-1001720160 var2887 var2799)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2887!1 String)
(assert (str.prefixof var2887 var2887!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2116 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var3482 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3715 String (append/672562846 var3657 var3482)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3657!1 String)
(assert (= var3657!1 (str.++ var3657 var3482)))
(assert true)
(define-const var2114 String (toString/-2075883882 var3715)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2375 ClassObject var1707!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2033 var1858 (getPackage/-1841711535 var2375)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2033 null-var1858)) ; Cond: $r34 == null 
(define-const var528 String var2114) ; Statement: r45 = $r33 
(define-const var2644 String var2114) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2723 Int (var657_size/-959786421 var3839)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2723 7) (and (not (= var2723 6)) (and (not (= var2723 5)) (and (not (= var2723 4)) (and (not (= var2723 3)) (and (not (= var2723 2)) (and (not (= var2723 1)) true)))))))) ; Intersect: Cond: $i2 == 7  and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional       
(define-const var1895 String var2649-TYPE_OBJECT_WRITER_7) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2559 (Array Int String) var1707-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1868!1 52 49 var528 var1895 var2559)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1868!2 var2300)
(declare-const var2857 Int)
(declare-const var3914 Int)
(declare-const var528!1 String)
(declare-const var1895!1 String)
(declare-const var2559!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var412 var3839 var1868!2 var1895!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var412!1 var1707)
(declare-const var3839!1 var657)
(declare-const var1868!3 var2300)
(declare-const var1895!2 String)
(assert true)
;(assert (genMethodInit/736566045 var412!1 var3839!1 var1868!3 var528!1 var1895!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var412!2 var1707)
(declare-const var3839!2 var657)
(declare-const var1868!4 var2300)
(declare-const var528!2 String)
(declare-const var1895!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var412!2 var1279 var2116 var3839!2 var1868!4 var528!2 var734)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var412!3 var1707)
(declare-const var1279!1 var2448)
(declare-const var2116!1 ClassObject)
(declare-const var3839!3 var657)
(declare-const var1868!5 var2300)
(declare-const var528!3 String)
(declare-const var734!1 Int)
(define-const var741 var2502 var2502-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2296 Int (mask/-2077367092 var741)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1138 Int (bv2nat (bvand ((_ int2bv 64) var734!1) ((_ int2bv 64) var2296)))) ; Statement: $l15 = l3 & $l14 
(define-const var281 Int (ite (> var1138 0) 1 (ite (< var1138 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var281 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var412!3 var1279!1 "write" var2116!1 var734!1 var3839!3 var1868!5 var528!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var412!4 var1707)
(declare-const var1279!2 var2448)
(declare-const var3662 String)
(declare-const var2116!2 ClassObject)
(declare-const var734!2 Int)
(declare-const var3839!4 var657)
(declare-const var1868!6 var2300)
(declare-const var528!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var412!4 var1279!2 var2116!2 var734!2 var3839!4 var1868!6 var528!4 var734!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var412!5 var1707)
(declare-const var1279!3 var2448)
(declare-const var2116!3 ClassObject)
(declare-const var734!3 Int)
(declare-const var3839!5 var657)
(declare-const var1868!7 var2300)
(declare-const var528!5 String)
(declare-const var734!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var412!5 var1279!3 "writeArrayMapping" var2116!3 var734!4 var3839!5 var1868!7 var528!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var412!6 var1707)
(declare-const var1279!4 var2448)
(declare-const var1271 String)
(declare-const var2116!4 ClassObject)
(declare-const var734!5 Int)
(declare-const var3839!6 var657)
(declare-const var1868!8 var2300)
(declare-const var528!6 String)
(assert true)
(define-const var3588 (Array Int Int) (toByteArray/1561254549 var1868!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var102 var1820 (classLoader/1229018461 var412!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2503 Int (getLength-Arr-Int-1 var3588)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3483 ClassObject (defineClassPublic/-885393557 var102 var2644 var3588 0 var2503)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1923 var1536) ; Statement: $r35 := @caughtexception 
(assert (not (= var1923 null-var1536)))
(define-const var1667 var3959 var3959-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2111 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2111)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2111!1 String)
(assert (= var2111!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var2111!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2111!2 String)
(assert (= var2111!2 (str.++ var2111!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3784 String (append/-1031950772 var3437 (cast-from-ClassObject-to-var297 var2116!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3437!1 String)
(assert (str.prefixof var3437 var3437!1))
(assert true)
(define-const var3833 String (toString/-2075883882 var3784)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1667 var3833 var1923)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1667!1 var3959)
(declare-const var3833!1 String)
(declare-const var1923!1 var1536)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2300-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var657_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3959-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var297=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1707=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var412=r15, var2116=r7, var2448=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1279=r16, var3192=com.alibaba.fastjson2.codec.BeanInfo, var1158=r21, var657=java.util.List, var3839=r5, var734=l3, var2300=com.alibaba.fastjson2.internal.asm.ClassWriter, var1868=$r49, var3131=java.util.function.Function, var540=null, var531=null_type, var2637=$r50, var3519=$r3, var886=java.util.concurrent.atomic.AtomicLong, var1213=$r2, var3722=$l0, var1318=$r4, var2887=$r6, var2799=$i1, var3657=$r12, var3482=$r41, var3715=$r13, var2114=$r33, var2375=$r14, var1858=java.lang.Package, var2033=$r34, var528=r45, var2644=r44, var2723=$i2, var2649=com.alibaba.fastjson2.internal.asm.ASMUtils, var1895=r46, var2559=$r47, var2857=52, var3914=49, var2502=com.alibaba.fastjson2.JSONWriter$Feature, var741=$r48, var2296=$l14, var1138=$l15, var281=$b16, var3662="write", var1271="writeArrayMapping", var3588=$r27, var1820=com.alibaba.fastjson2.util.DynamicClassLoader, var102=$r17, var2503=$i4, var3483=$r28, var1536=java.lang.Throwable, var1923=$r35, var3959=com.alibaba.fastjson2.JSONException, var1667=$r55, var2111=$r54, var3437=$r38, var297=java.lang.Object, var3784=$r39, var3833=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1707, r15=var412, r7=var2116, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2448, r16=var1279, com.alibaba.fastjson2.codec.BeanInfo=var3192, r21=var1158, java.util.List=var657, r5=var3839, l3=var734, com.alibaba.fastjson2.internal.asm.ClassWriter=var2300, $r49=var1868, java.util.function.Function=var3131, null=var540, null_type=var531, $r50=var2637, $r3=var3519, java.util.concurrent.atomic.AtomicLong=var886, $r2=var1213, $l0=var3722, $r4=var1318, $r6=var2887, $i1=var2799, $r12=var3657, $r41=var3482, $r13=var3715, $r33=var2114, $r14=var2375, java.lang.Package=var1858, $r34=var2033, r45=var528, r44=var2644, $i2=var2723, com.alibaba.fastjson2.internal.asm.ASMUtils=var2649, r46=var1895, $r47=var2559, 52=var2857, 49=var3914, com.alibaba.fastjson2.JSONWriter$Feature=var2502, $r48=var741, $l14=var2296, $l15=var1138, $b16=var281, "write"=var3662, "writeArrayMapping"=var1271, $r27=var3588, com.alibaba.fastjson2.util.DynamicClassLoader=var1820, $r17=var102, $i4=var2503, $r28=var3483, java.lang.Throwable=var1536, $r35=var1923, com.alibaba.fastjson2.JSONException=var3959, $r55=var1667, $r54=var2111, $r38=var3437, java.lang.Object=var297, $r39=var3784, $r40=var3833}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10