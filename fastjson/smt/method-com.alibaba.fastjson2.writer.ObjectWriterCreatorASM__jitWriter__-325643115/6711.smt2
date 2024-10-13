(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var3394 0)
(declare-sort var1042 0)
(declare-sort var2904 0)
(declare-sort var1623 0)
(declare-sort var2747 0)
(declare-sort var3983 0)
(declare-sort var3573 0)
(declare-sort var893 0)
(declare-sort var1117 0)
(declare-sort var876 0)
(declare-sort var1456 0)
(declare-sort var3683 0)
(declare-sort var3009 0)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2932!class ClassObject)
(declare-fun var1623-init () var1623)
(declare-fun <init>/1561585841 (var1623 var2747) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3573) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2904_size/-959786421 (var2904) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var893)
(declare-fun visit/1245821975 (var1623 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2932 var2904 var1623 String) void)
(declare-fun genMethodInit/736566045 (var2932 var2904 var1623 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2932 var3394 ClassObject var2904 var1623 String Int) void)
(declare-fun mask/-2077367092 (var876) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var2932 var3394 String ClassObject Int var2904 var1623 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2932 var3394 ClassObject Int var2904 var1623 String Int) void)
(declare-fun toByteArray/1561254549 (var1623) (Array Int Int))
(declare-fun classLoader/1229018461 (var2932) var1456)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1456 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3009-init () var3009)
(declare-fun append/-1031950772 (String var774) String)
(declare-fun cast-from-ClassObject-to-var774 (ClassObject) var774)
(declare-fun <init>/-743866570 (var3009 String var3683) void)
(declare-const null-var2932 var2932)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3394 var3394)
(declare-const null-var1042 var1042)
(declare-const null-var2904 var2904)
(declare-const null-Int Int)
(declare-const null-NullType var3983)
(declare-const null-var2747 var2747)
(declare-const var2932-seed var3573)
(declare-const null-var893 var893)
(declare-const var1117-TYPE_OBJECT_WRITER_4 String)
(declare-const var2932-INTERFACES (Array Int String))
(declare-const var876-BeanToArray var876)
(declare-const null-var3683 var3683)
(declare-const var3517 var2932) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3517 null-var2932)))
(declare-const var135 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var135 null-ClassObject)))
(declare-const var555 var3394) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var555 null-var3394)))
(declare-const var2097 var1042) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2097 null-var1042)))
(declare-const var1336 var2904) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1336 null-var2904)))
(declare-const var3519 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3519 null-Int)))
(define-const var2150 var1623 var1623-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2150 null-var2747)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2150!1 var1623)
(declare-const var319 var3983)
(define-const var493 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var493)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var493!1 String)
(assert (= var493!1 ""))
(assert true)
(define-const var669 String (append/672562846 var493!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var493!2 String)
(assert (= var493!2 (str.++ var493!1 "OWG_")))
(define-const var797 var3573 var2932-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2724 Int (incrementAndGet/636047358 var797)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2372 String (append/-901862667 var669 var2724)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var669!1 String)
(assert (str.prefixof var669 var669!1))
(assert true)
(define-const var2880 String (append/672562846 var2372 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2372!1 String)
(assert (= var2372!1 (str.++ var2372 "_")))
(define-const var3731 Int (var2904_size/-959786421 var1336)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2479 String (append/-1001720160 var2880 var3731)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2880!1 String)
(assert (str.prefixof var2880 var2880!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var135 null-ClassObject))) ; Cond: r7 != null 
(define-const var1622 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1622)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1622!1 String)
(assert (= var1622!1 ""))
(assert true)
(define-const var3149 String (append/672562846 var1622!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1622!2 String)
(assert (= var1622!2 (str.++ var1622!1 "_")))
(assert true)
(define-const var1009 String (getSimpleName/-390194377 var135)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2894 String (append/672562846 var3149 var1009)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3149!1 String)
(assert (= var3149!1 (str.++ var3149 var1009)))
(assert true)
(define-const var2402 String (toString/-2075883882 var2894)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2408 String (append/672562846 var2479 var2402)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2479!1 String)
(assert (= var2479!1 (str.++ var2479 var2402)))
(assert true)
(define-const var564 String (toString/-2075883882 var2408)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2316 ClassObject var2932!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var166 var893 (getPackage/-1841711535 var2316)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var166 null-var893)) ; Cond: $r34 == null 
(define-const var337 String var564) ; Statement: r45 = $r33 
(define-const var2662 String var564) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1908 Int (var2904_size/-959786421 var1336)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1908 4) (and (not (= var1908 3)) (and (not (= var1908 2)) (and (not (= var1908 1)) true))))) ; Intersect: Cond: $i2 == 4  and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional    
(define-const var3823 String var1117-TYPE_OBJECT_WRITER_4) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3389 (Array Int String) var2932-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2150!1 52 49 var337 var3823 var3389)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2150!2 var1623)
(declare-const var1334 Int)
(declare-const var2257 Int)
(declare-const var337!1 String)
(declare-const var3823!1 String)
(declare-const var3389!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3517 var1336 var2150!2 var3823!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3517!1 var2932)
(declare-const var1336!1 var2904)
(declare-const var2150!3 var1623)
(declare-const var3823!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3517!1 var1336!1 var2150!3 var337!1 var3823!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3517!2 var2932)
(declare-const var1336!2 var2904)
(declare-const var2150!4 var1623)
(declare-const var337!2 String)
(declare-const var3823!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3517!2 var555 var135 var1336!2 var2150!4 var337!2 var3519)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3517!3 var2932)
(declare-const var555!1 var3394)
(declare-const var135!1 ClassObject)
(declare-const var1336!3 var2904)
(declare-const var2150!5 var1623)
(declare-const var337!3 String)
(declare-const var3519!1 Int)
(define-const var1023 var876 var876-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var3161 Int (mask/-2077367092 var1023)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3713 Int (bv2nat (bvand ((_ int2bv 64) var3519!1) ((_ int2bv 64) var3161)))) ; Statement: $l15 = l3 & $l14 
(define-const var1618 Int (ite (> var3713 0) 1 (ite (< var3713 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1618 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3517!3 var555!1 "write" var135!1 var3519!1 var1336!3 var2150!5 var337!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3517!4 var2932)
(declare-const var555!2 var3394)
(declare-const var2912 String)
(declare-const var135!2 ClassObject)
(declare-const var3519!2 Int)
(declare-const var1336!4 var2904)
(declare-const var2150!6 var1623)
(declare-const var337!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3517!4 var555!2 var135!2 var3519!2 var1336!4 var2150!6 var337!4 var3519!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3517!5 var2932)
(declare-const var555!3 var3394)
(declare-const var135!3 ClassObject)
(declare-const var3519!3 Int)
(declare-const var1336!5 var2904)
(declare-const var2150!7 var1623)
(declare-const var337!5 String)
(declare-const var3519!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3517!5 var555!3 "writeArrayMapping" var135!3 var3519!4 var1336!5 var2150!7 var337!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3517!6 var2932)
(declare-const var555!4 var3394)
(declare-const var3625 String)
(declare-const var135!4 ClassObject)
(declare-const var3519!5 Int)
(declare-const var1336!6 var2904)
(declare-const var2150!8 var1623)
(declare-const var337!6 String)
(assert true)
(define-const var3089 (Array Int Int) (toByteArray/1561254549 var2150!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3217 var1456 (classLoader/1229018461 var3517!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1247 Int (getLength-Arr-Int-1 var3089)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3675 ClassObject (defineClassPublic/-885393557 var3217 var2662 var3089 0 var1247)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1864 var3683) ; Statement: $r35 := @caughtexception 
(assert (not (= var1864 null-var3683)))
(define-const var2994 var3009 var3009-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3031 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3031)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3031!1 String)
(assert (= var3031!1 ""))
(assert true)
(define-const var295 String (append/672562846 var3031!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3031!2 String)
(assert (= var3031!2 (str.++ var3031!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2934 String (append/-1031950772 var295 (cast-from-ClassObject-to-var774 var135!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var295!1 String)
(assert (str.prefixof var295 var295!1))
(assert true)
(define-const var2969 String (toString/-2075883882 var2934)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2994 var2969 var1864)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2994!1 var3009)
(declare-const var2969!1 String)
(declare-const var1864!1 var3683)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1623-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2904_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3009-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var774=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2932=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3517=r15, var135=r7, var3394=com.alibaba.fastjson2.writer.ObjectWriterProvider, var555=r16, var1042=com.alibaba.fastjson2.codec.BeanInfo, var2097=r21, var2904=java.util.List, var1336=r5, var3519=l3, var1623=com.alibaba.fastjson2.internal.asm.ClassWriter, var2150=$r49, var2747=java.util.function.Function, var319=null, var3983=null_type, var493=$r50, var669=$r3, var3573=java.util.concurrent.atomic.AtomicLong, var797=$r2, var2724=$l0, var2372=$r4, var2880=$r6, var3731=$i1, var2479=$r12, var1622=$r51, var3149=$r10, var1009=$r9, var2894=$r11, var2402=$r41, var2408=$r13, var564=$r33, var2316=$r14, var893=java.lang.Package, var166=$r34, var337=r45, var2662=r44, var1908=$i2, var1117=com.alibaba.fastjson2.internal.asm.ASMUtils, var3823=r46, var3389=$r47, var1334=52, var2257=49, var876=com.alibaba.fastjson2.JSONWriter$Feature, var1023=$r48, var3161=$l14, var3713=$l15, var1618=$b16, var2912="write", var3625="writeArrayMapping", var3089=$r27, var1456=com.alibaba.fastjson2.util.DynamicClassLoader, var3217=$r17, var1247=$i4, var3675=$r28, var3683=java.lang.Throwable, var1864=$r35, var3009=com.alibaba.fastjson2.JSONException, var2994=$r55, var3031=$r54, var295=$r38, var774=java.lang.Object, var2934=$r39, var2969=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2932, r15=var3517, r7=var135, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3394, r16=var555, com.alibaba.fastjson2.codec.BeanInfo=var1042, r21=var2097, java.util.List=var2904, r5=var1336, l3=var3519, com.alibaba.fastjson2.internal.asm.ClassWriter=var1623, $r49=var2150, java.util.function.Function=var2747, null=var319, null_type=var3983, $r50=var493, $r3=var669, java.util.concurrent.atomic.AtomicLong=var3573, $r2=var797, $l0=var2724, $r4=var2372, $r6=var2880, $i1=var3731, $r12=var2479, $r51=var1622, $r10=var3149, $r9=var1009, $r11=var2894, $r41=var2402, $r13=var2408, $r33=var564, $r14=var2316, java.lang.Package=var893, $r34=var166, r45=var337, r44=var2662, $i2=var1908, com.alibaba.fastjson2.internal.asm.ASMUtils=var1117, r46=var3823, $r47=var3389, 52=var1334, 49=var2257, com.alibaba.fastjson2.JSONWriter$Feature=var876, $r48=var1023, $l14=var3161, $l15=var3713, $b16=var1618, "write"=var2912, "writeArrayMapping"=var3625, $r27=var3089, com.alibaba.fastjson2.util.DynamicClassLoader=var1456, $r17=var3217, $i4=var1247, $r28=var3675, java.lang.Throwable=var3683, $r35=var1864, com.alibaba.fastjson2.JSONException=var3009, $r55=var2994, $r54=var3031, $r38=var295, java.lang.Object=var774, $r39=var2934, $r40=var2969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10