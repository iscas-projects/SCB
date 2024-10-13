(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2954 0)
(declare-sort var3494 0)
(declare-sort var661 0)
(declare-sort var3056 0)
(declare-sort var2746 0)
(declare-sort var2500 0)
(declare-sort var2702 0)
(declare-sort var3719 0)
(declare-sort var231 0)
(declare-sort var1582 0)
(declare-sort var1405 0)
(declare-sort var3413 0)
(declare-sort var3878 0)
(declare-sort var1240 0)
(declare-sort var550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2954!class ClassObject)
(declare-fun var2746-init () var2746)
(declare-fun <init>/1561585841 (var2746 var2500) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3719) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3056_size/-959786421 (var3056) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var231)
(declare-fun visit/1245821975 (var2746 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2954 var3056 var2746 String) void)
(declare-fun genMethodInit/736566045 (var2954 var3056 var2746 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2954 var3494 ClassObject var3056 var2746 String Int) void)
(declare-fun mask/-2077367092 (var1405) Int)
(declare-fun genMethodWrite/551741206 (var2954 var3494 ClassObject var3056 var2746 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2954 var3494 ClassObject Int var3056 var2746 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2954 var3494 String ClassObject Int var3056 var2746 String) void)
(declare-fun toByteArray/1561254549 (var2746) (Array Int Int))
(declare-fun classLoader/1229018461 (var2954) var3413)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3413 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1240-init () var1240)
(declare-fun append/-1031950772 (String var550) String)
(declare-fun cast-from-ClassObject-to-var550 (ClassObject) var550)
(declare-fun <init>/-743866570 (var1240 String var3878) void)
(declare-const null-var2954 var2954)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3494 var3494)
(declare-const null-var661 var661)
(declare-const null-var3056 var3056)
(declare-const null-Int Int)
(declare-const null-NullType var2702)
(declare-const null-var2500 var2500)
(declare-const var2954-seed var3719)
(declare-const null-var231 var231)
(declare-const var1582-TYPE_OBJECT_WRITER_4 String)
(declare-const var2954-INTERFACES (Array Int String))
(declare-const var1405-BeanToArray var1405)
(declare-const null-var3878 var3878)
(declare-const var1388 var2954) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1388 null-var2954)))
(declare-const var3814 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var3814 null-ClassObject)))
(declare-const var923 var3494) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var923 null-var3494)))
(declare-const var1134 var661) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1134 null-var661)))
(declare-const var3468 var3056) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3468 null-var3056)))
(declare-const var396 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var396 null-Int)))
(define-const var2688 var2746 var2746-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2688 null-var2500)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2688!1 var2746)
(declare-const var205 var2702)
(define-const var1587 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var3998 String (append/672562846 var1587!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1587!2 String)
(assert (= var1587!2 (str.++ var1587!1 "OWG_")))
(define-const var2028 var3719 var2954-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var413 Int (incrementAndGet/636047358 var2028)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3167 String (append/-901862667 var3998 var413)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3998!1 String)
(assert (str.prefixof var3998 var3998!1))
(assert true)
(define-const var2450 String (append/672562846 var3167 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3167!1 String)
(assert (= var3167!1 (str.++ var3167 "_")))
(define-const var1050 Int (var3056_size/-959786421 var3468)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1639 String (append/-1001720160 var2450 var1050)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2450!1 String)
(assert (str.prefixof var2450 var2450!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var3814 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var1238 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1249 String (append/672562846 var1639 var1238)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1639!1 String)
(assert (= var1639!1 (str.++ var1639 var1238)))
(assert true)
(define-const var1965 String (toString/-2075883882 var1249)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1501 ClassObject var2954!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2659 var231 (getPackage/-1841711535 var1501)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2659 null-var231)) ; Cond: $r34 == null 
(define-const var1096 String var1965) ; Statement: r45 = $r33 
(define-const var1654 String var1965) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1951 Int (var3056_size/-959786421 var3468)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1951 4) (and (not (= var1951 3)) (and (not (= var1951 2)) (and (not (= var1951 1)) true))))) ; Intersect: Cond: $i2 == 4  and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional    
(define-const var3716 String var1582-TYPE_OBJECT_WRITER_4) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3567 (Array Int String) var2954-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2688!1 52 49 var1096 var3716 var3567)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2688!2 var2746)
(declare-const var215 Int)
(declare-const var3980 Int)
(declare-const var1096!1 String)
(declare-const var3716!1 String)
(declare-const var3567!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1388 var3468 var2688!2 var3716!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1388!1 var2954)
(declare-const var3468!1 var3056)
(declare-const var2688!3 var2746)
(declare-const var3716!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1388!1 var3468!1 var2688!3 var1096!1 var3716!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1388!2 var2954)
(declare-const var3468!2 var3056)
(declare-const var2688!4 var2746)
(declare-const var1096!2 String)
(declare-const var3716!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1388!2 var923 var3814 var3468!2 var2688!4 var1096!2 var396)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1388!3 var2954)
(declare-const var923!1 var3494)
(declare-const var3814!1 ClassObject)
(declare-const var3468!3 var3056)
(declare-const var2688!5 var2746)
(declare-const var1096!3 String)
(declare-const var396!1 Int)
(define-const var587 var1405 var1405-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3640 Int (mask/-2077367092 var587)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2971 Int (bv2nat (bvand ((_ int2bv 64) var396!1) ((_ int2bv 64) var3640)))) ; Statement: $l15 = l3 & $l14 
(define-const var3558 Int (ite (> var2971 0) 1 (ite (< var2971 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3558 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var1388!3 var923!1 var3814!1 var3468!3 var2688!5 var1096!3 var396!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1388!4 var2954)
(declare-const var923!2 var3494)
(declare-const var3814!2 ClassObject)
(declare-const var3468!4 var3056)
(declare-const var2688!6 var2746)
(declare-const var1096!4 String)
(declare-const var396!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1388!4 var923!2 var3814!2 var396!2 var3468!4 var2688!6 var1096!4 var396!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1388!5 var2954)
(declare-const var923!3 var3494)
(declare-const var3814!3 ClassObject)
(declare-const var396!3 Int)
(declare-const var3468!5 var3056)
(declare-const var2688!7 var2746)
(declare-const var1096!5 String)
(declare-const var396!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1388!5 var923!3 "writeArrayMapping" var3814!3 var396!4 var3468!5 var2688!7 var1096!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1388!6 var2954)
(declare-const var923!4 var3494)
(declare-const var2611 String)
(declare-const var3814!4 ClassObject)
(declare-const var396!5 Int)
(declare-const var3468!6 var3056)
(declare-const var2688!8 var2746)
(declare-const var1096!6 String)
(assert true)
(define-const var1008 (Array Int Int) (toByteArray/1561254549 var2688!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1853 var3413 (classLoader/1229018461 var1388!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var40 Int (getLength-Arr-Int-1 var1008)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var700 ClassObject (defineClassPublic/-885393557 var1853 var1654 var1008 0 var40)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1930 var3878) ; Statement: $r35 := @caughtexception 
(assert (not (= var1930 null-var3878)))
(define-const var2911 var1240 var1240-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1037 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1037)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1037!1 String)
(assert (= var1037!1 ""))
(assert true)
(define-const var1056 String (append/672562846 var1037!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1037!2 String)
(assert (= var1037!2 (str.++ var1037!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var30 String (append/-1031950772 var1056 (cast-from-ClassObject-to-var550 var3814!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1056!1 String)
(assert (str.prefixof var1056 var1056!1))
(assert true)
(define-const var3751 String (toString/-2075883882 var30)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2911 var3751 var1930)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2911!1 var1240)
(declare-const var3751!1 String)
(declare-const var1930!1 var3878)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2746-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3056_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1240-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var550=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2954=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1388=r15, var3814=r7, var3494=com.alibaba.fastjson2.writer.ObjectWriterProvider, var923=r16, var661=com.alibaba.fastjson2.codec.BeanInfo, var1134=r21, var3056=java.util.List, var3468=r5, var396=l3, var2746=com.alibaba.fastjson2.internal.asm.ClassWriter, var2688=$r49, var2500=java.util.function.Function, var205=null, var2702=null_type, var1587=$r50, var3998=$r3, var3719=java.util.concurrent.atomic.AtomicLong, var2028=$r2, var413=$l0, var3167=$r4, var2450=$r6, var1050=$i1, var1639=$r12, var1238=$r41, var1249=$r13, var1965=$r33, var1501=$r14, var231=java.lang.Package, var2659=$r34, var1096=r45, var1654=r44, var1951=$i2, var1582=com.alibaba.fastjson2.internal.asm.ASMUtils, var3716=r46, var3567=$r47, var215=52, var3980=49, var1405=com.alibaba.fastjson2.JSONWriter$Feature, var587=$r48, var3640=$l14, var2971=$l15, var3558=$b16, var2611="writeArrayMapping", var1008=$r27, var3413=com.alibaba.fastjson2.util.DynamicClassLoader, var1853=$r17, var40=$i4, var700=$r28, var3878=java.lang.Throwable, var1930=$r35, var1240=com.alibaba.fastjson2.JSONException, var2911=$r55, var1037=$r54, var1056=$r38, var550=java.lang.Object, var30=$r39, var3751=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2954, r15=var1388, r7=var3814, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3494, r16=var923, com.alibaba.fastjson2.codec.BeanInfo=var661, r21=var1134, java.util.List=var3056, r5=var3468, l3=var396, com.alibaba.fastjson2.internal.asm.ClassWriter=var2746, $r49=var2688, java.util.function.Function=var2500, null=var205, null_type=var2702, $r50=var1587, $r3=var3998, java.util.concurrent.atomic.AtomicLong=var3719, $r2=var2028, $l0=var413, $r4=var3167, $r6=var2450, $i1=var1050, $r12=var1639, $r41=var1238, $r13=var1249, $r33=var1965, $r14=var1501, java.lang.Package=var231, $r34=var2659, r45=var1096, r44=var1654, $i2=var1951, com.alibaba.fastjson2.internal.asm.ASMUtils=var1582, r46=var3716, $r47=var3567, 52=var215, 49=var3980, com.alibaba.fastjson2.JSONWriter$Feature=var1405, $r48=var587, $l14=var3640, $l15=var2971, $b16=var3558, "writeArrayMapping"=var2611, $r27=var1008, com.alibaba.fastjson2.util.DynamicClassLoader=var3413, $r17=var1853, $i4=var40, $r28=var700, java.lang.Throwable=var3878, $r35=var1930, com.alibaba.fastjson2.JSONException=var1240, $r55=var2911, $r54=var1037, $r38=var1056, java.lang.Object=var550, $r39=var30, $r40=var3751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10