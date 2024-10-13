(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort var1904 0)
(declare-sort var1305 0)
(declare-sort var1164 0)
(declare-sort var3005 0)
(declare-sort var1597 0)
(declare-sort var2791 0)
(declare-sort var1952 0)
(declare-sort var1047 0)
(declare-sort var268 0)
(declare-sort var427 0)
(declare-sort var739 0)
(declare-sort var1669 0)
(declare-sort var3822 0)
(declare-sort var2232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1739!class ClassObject)
(declare-fun var3005-init () var3005)
(declare-fun <init>/1561585841 (var3005 var1597) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1952) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var1164_size/-959786421 (var1164) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1047)
(declare-fun visit/1245821975 (var3005 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1739 var1164 var3005 String) void)
(declare-fun genMethodInit/736566045 (var1739 var1164 var3005 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1739 var1904 ClassObject var1164 var3005 String Int) void)
(declare-fun mask/-2077367092 (var427) Int)
(declare-fun genMethodWrite/551741206 (var1739 var1904 ClassObject var1164 var3005 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1739 var1904 ClassObject Int var1164 var3005 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1739 var1904 String ClassObject Int var1164 var3005 String) void)
(declare-fun toByteArray/1561254549 (var3005) (Array Int Int))
(declare-fun classLoader/1229018461 (var1739) var739)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var739 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3822-init () var3822)
(declare-fun append/-1031950772 (String var2232) String)
(declare-fun cast-from-ClassObject-to-var2232 (ClassObject) var2232)
(declare-fun <init>/-743866570 (var3822 String var1669) void)
(declare-const null-var1739 var1739)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1904 var1904)
(declare-const null-var1305 var1305)
(declare-const null-var1164 var1164)
(declare-const null-Int Int)
(declare-const null-NullType var2791)
(declare-const null-var1597 var1597)
(declare-const var1739-seed var1952)
(declare-const null-var1047 var1047)
(declare-const var268-TYPE_OBJECT_WRITER_4 String)
(declare-const var1739-INTERFACES (Array Int String))
(declare-const var427-BeanToArray var427)
(declare-const null-var1669 var1669)
(declare-const var3471 var1739) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3471 null-var1739)))
(declare-const var208 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var208 null-ClassObject)))
(declare-const var2981 var1904) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2981 null-var1904)))
(declare-const var1694 var1305) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1694 null-var1305)))
(declare-const var1238 var1164) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1238 null-var1164)))
(declare-const var1756 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1756 null-Int)))
(define-const var2721 var3005 var3005-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2721 null-var1597)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2721!1 var3005)
(declare-const var1288 var2791)
(define-const var3522 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3522)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3522!1 String)
(assert (= var3522!1 ""))
(assert true)
(define-const var1160 String (append/672562846 var3522!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3522!2 String)
(assert (= var3522!2 (str.++ var3522!1 "OWG_")))
(define-const var3725 var1952 var1739-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1479 Int (incrementAndGet/636047358 var3725)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3229 String (append/-901862667 var1160 var1479)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1160!1 String)
(assert (str.prefixof var1160 var1160!1))
(assert true)
(define-const var1083 String (append/672562846 var3229 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3229!1 String)
(assert (= var3229!1 (str.++ var3229 "_")))
(define-const var584 Int (var1164_size/-959786421 var1238)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2247 String (append/-1001720160 var1083 var584)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1083!1 String)
(assert (str.prefixof var1083 var1083!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var208 null-ClassObject))) ; Cond: r7 != null 
(define-const var3121 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3121)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3121!1 String)
(assert (= var3121!1 ""))
(assert true)
(define-const var2806 String (append/672562846 var3121!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3121!2 String)
(assert (= var3121!2 (str.++ var3121!1 "_")))
(assert true)
(define-const var1846 String (getSimpleName/-390194377 var208)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2481 String (append/672562846 var2806 var1846)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2806!1 String)
(assert (= var2806!1 (str.++ var2806 var1846)))
(assert true)
(define-const var2207 String (toString/-2075883882 var2481)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2731 String (append/672562846 var2247 var2207)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 var2207)))
(assert true)
(define-const var1773 String (toString/-2075883882 var2731)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1826 ClassObject var1739!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1034 var1047 (getPackage/-1841711535 var1826)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1034 null-var1047)) ; Cond: $r34 == null 
(define-const var2121 String var1773) ; Statement: r45 = $r33 
(define-const var1196 String var1773) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1550 Int (var1164_size/-959786421 var1238)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1550 4) (and (not (= var1550 3)) (and (not (= var1550 2)) (and (not (= var1550 1)) true))))) ; Intersect: Cond: $i2 == 4  and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional    
(define-const var305 String var268-TYPE_OBJECT_WRITER_4) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var508 (Array Int String) var1739-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2721!1 52 49 var2121 var305 var508)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2721!2 var3005)
(declare-const var3184 Int)
(declare-const var1882 Int)
(declare-const var2121!1 String)
(declare-const var305!1 String)
(declare-const var508!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3471 var1238 var2721!2 var305!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3471!1 var1739)
(declare-const var1238!1 var1164)
(declare-const var2721!3 var3005)
(declare-const var305!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3471!1 var1238!1 var2721!3 var2121!1 var305!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3471!2 var1739)
(declare-const var1238!2 var1164)
(declare-const var2721!4 var3005)
(declare-const var2121!2 String)
(declare-const var305!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3471!2 var2981 var208 var1238!2 var2721!4 var2121!2 var1756)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3471!3 var1739)
(declare-const var2981!1 var1904)
(declare-const var208!1 ClassObject)
(declare-const var1238!3 var1164)
(declare-const var2721!5 var3005)
(declare-const var2121!3 String)
(declare-const var1756!1 Int)
(define-const var2344 var427 var427-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3140 Int (mask/-2077367092 var2344)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1732 Int (bv2nat (bvand ((_ int2bv 64) var1756!1) ((_ int2bv 64) var3140)))) ; Statement: $l15 = l3 & $l14 
(define-const var3875 Int (ite (> var1732 0) 1 (ite (< var1732 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3875 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var3471!3 var2981!1 var208!1 var1238!3 var2721!5 var2121!3 var1756!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3471!4 var1739)
(declare-const var2981!2 var1904)
(declare-const var208!2 ClassObject)
(declare-const var1238!4 var1164)
(declare-const var2721!6 var3005)
(declare-const var2121!4 String)
(declare-const var1756!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3471!4 var2981!2 var208!2 var1756!2 var1238!4 var2721!6 var2121!4 var1756!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3471!5 var1739)
(declare-const var2981!3 var1904)
(declare-const var208!3 ClassObject)
(declare-const var1756!3 Int)
(declare-const var1238!5 var1164)
(declare-const var2721!7 var3005)
(declare-const var2121!5 String)
(declare-const var1756!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3471!5 var2981!3 "writeArrayMapping" var208!3 var1756!4 var1238!5 var2721!7 var2121!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3471!6 var1739)
(declare-const var2981!4 var1904)
(declare-const var2643 String)
(declare-const var208!4 ClassObject)
(declare-const var1756!5 Int)
(declare-const var1238!6 var1164)
(declare-const var2721!8 var3005)
(declare-const var2121!6 String)
(assert true)
(define-const var3726 (Array Int Int) (toByteArray/1561254549 var2721!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var648 var739 (classLoader/1229018461 var3471!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1910 Int (getLength-Arr-Int-1 var3726)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3571 ClassObject (defineClassPublic/-885393557 var648 var1196 var3726 0 var1910)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2972 var1669) ; Statement: $r35 := @caughtexception 
(assert (not (= var2972 null-var1669)))
(define-const var3849 var3822 var3822-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2223 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2223)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2223!1 String)
(assert (= var2223!1 ""))
(assert true)
(define-const var2118 String (append/672562846 var2223!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2223!2 String)
(assert (= var2223!2 (str.++ var2223!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3381 String (append/-1031950772 var2118 (cast-from-ClassObject-to-var2232 var208!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2118!1 String)
(assert (str.prefixof var2118 var2118!1))
(assert true)
(define-const var407 String (toString/-2075883882 var3381)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3849 var407 var2972)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3849!1 var3822)
(declare-const var407!1 String)
(declare-const var2972!1 var1669)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3005-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var1164_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3822-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2232=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1739=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3471=r15, var208=r7, var1904=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2981=r16, var1305=com.alibaba.fastjson2.codec.BeanInfo, var1694=r21, var1164=java.util.List, var1238=r5, var1756=l3, var3005=com.alibaba.fastjson2.internal.asm.ClassWriter, var2721=$r49, var1597=java.util.function.Function, var1288=null, var2791=null_type, var3522=$r50, var1160=$r3, var1952=java.util.concurrent.atomic.AtomicLong, var3725=$r2, var1479=$l0, var3229=$r4, var1083=$r6, var584=$i1, var2247=$r12, var3121=$r51, var2806=$r10, var1846=$r9, var2481=$r11, var2207=$r41, var2731=$r13, var1773=$r33, var1826=$r14, var1047=java.lang.Package, var1034=$r34, var2121=r45, var1196=r44, var1550=$i2, var268=com.alibaba.fastjson2.internal.asm.ASMUtils, var305=r46, var508=$r47, var3184=52, var1882=49, var427=com.alibaba.fastjson2.JSONWriter$Feature, var2344=$r48, var3140=$l14, var1732=$l15, var3875=$b16, var2643="writeArrayMapping", var3726=$r27, var739=com.alibaba.fastjson2.util.DynamicClassLoader, var648=$r17, var1910=$i4, var3571=$r28, var1669=java.lang.Throwable, var2972=$r35, var3822=com.alibaba.fastjson2.JSONException, var3849=$r55, var2223=$r54, var2118=$r38, var2232=java.lang.Object, var3381=$r39, var407=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1739, r15=var3471, r7=var208, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1904, r16=var2981, com.alibaba.fastjson2.codec.BeanInfo=var1305, r21=var1694, java.util.List=var1164, r5=var1238, l3=var1756, com.alibaba.fastjson2.internal.asm.ClassWriter=var3005, $r49=var2721, java.util.function.Function=var1597, null=var1288, null_type=var2791, $r50=var3522, $r3=var1160, java.util.concurrent.atomic.AtomicLong=var1952, $r2=var3725, $l0=var1479, $r4=var3229, $r6=var1083, $i1=var584, $r12=var2247, $r51=var3121, $r10=var2806, $r9=var1846, $r11=var2481, $r41=var2207, $r13=var2731, $r33=var1773, $r14=var1826, java.lang.Package=var1047, $r34=var1034, r45=var2121, r44=var1196, $i2=var1550, com.alibaba.fastjson2.internal.asm.ASMUtils=var268, r46=var305, $r47=var508, 52=var3184, 49=var1882, com.alibaba.fastjson2.JSONWriter$Feature=var427, $r48=var2344, $l14=var3140, $l15=var1732, $b16=var3875, "writeArrayMapping"=var2643, $r27=var3726, com.alibaba.fastjson2.util.DynamicClassLoader=var739, $r17=var648, $i4=var1910, $r28=var3571, java.lang.Throwable=var1669, $r35=var2972, com.alibaba.fastjson2.JSONException=var3822, $r55=var3849, $r54=var2223, $r38=var2118, java.lang.Object=var2232, $r39=var3381, $r40=var407}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10