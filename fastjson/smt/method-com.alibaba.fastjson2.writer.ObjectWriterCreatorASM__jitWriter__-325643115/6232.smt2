(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort var1939 0)
(declare-sort var1149 0)
(declare-sort var2574 0)
(declare-sort var298 0)
(declare-sort var3114 0)
(declare-sort var1655 0)
(declare-sort var2190 0)
(declare-sort var409 0)
(declare-sort var874 0)
(declare-sort var388 0)
(declare-sort var3176 0)
(declare-sort var1462 0)
(declare-sort var3966 0)
(declare-sort var1457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2161!class ClassObject)
(declare-fun var298-init () var298)
(declare-fun <init>/1561585841 (var298 var3114) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2190) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2574_size/-959786421 (var2574) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var409)
(declare-fun visit/1245821975 (var298 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2161 var2574 var298 String) void)
(declare-fun genMethodInit/736566045 (var2161 var2574 var298 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2161 var1939 ClassObject var2574 var298 String Int) void)
(declare-fun mask/-2077367092 (var388) Int)
(declare-fun genMethodWrite/551741206 (var2161 var1939 ClassObject var2574 var298 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2161 var1939 ClassObject Int var2574 var298 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var2161 var1939 String ClassObject Int var2574 var298 String) void)
(declare-fun toByteArray/1561254549 (var298) (Array Int Int))
(declare-fun classLoader/1229018461 (var2161) var3176)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var3176 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3966-init () var3966)
(declare-fun append/-1031950772 (String var1457) String)
(declare-fun cast-from-ClassObject-to-var1457 (ClassObject) var1457)
(declare-fun <init>/-743866570 (var3966 String var1462) void)
(declare-const null-var2161 var2161)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1939 var1939)
(declare-const null-var1149 var1149)
(declare-const null-var2574 var2574)
(declare-const null-Int Int)
(declare-const null-NullType var1655)
(declare-const null-var3114 var3114)
(declare-const var2161-seed var2190)
(declare-const null-var409 var409)
(declare-const var874-TYPE_OBJECT_WRITER_6 String)
(declare-const var2161-INTERFACES (Array Int String))
(declare-const var388-BeanToArray var388)
(declare-const null-var1462 var1462)
(declare-const var2313 var2161) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2313 null-var2161)))
(declare-const var227 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var227 null-ClassObject)))
(declare-const var1961 var1939) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1961 null-var1939)))
(declare-const var2298 var1149) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2298 null-var1149)))
(declare-const var1254 var2574) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1254 null-var2574)))
(declare-const var3799 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3799 null-Int)))
(define-const var3505 var298 var298-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3505 null-var3114)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3505!1 var298)
(declare-const var2092 var1655)
(define-const var861 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var861)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var861!1 String)
(assert (= var861!1 ""))
(assert true)
(define-const var1060 String (append/672562846 var861!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var861!2 String)
(assert (= var861!2 (str.++ var861!1 "OWG_")))
(define-const var1508 var2190 var2161-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3668 Int (incrementAndGet/636047358 var1508)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2482 String (append/-901862667 var1060 var3668)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1060!1 String)
(assert (str.prefixof var1060 var1060!1))
(assert true)
(define-const var27 String (append/672562846 var2482 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2482!1 String)
(assert (= var2482!1 (str.++ var2482 "_")))
(define-const var2965 Int (var2574_size/-959786421 var1254)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3398 String (append/-1001720160 var27 var2965)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var27!1 String)
(assert (str.prefixof var27 var27!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var227 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2228 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2222 String (append/672562846 var3398 var2228)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3398!1 String)
(assert (= var3398!1 (str.++ var3398 var2228)))
(assert true)
(define-const var2462 String (toString/-2075883882 var2222)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var361 ClassObject var2161!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var18 var409 (getPackage/-1841711535 var361)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var18 null-var409)) ; Cond: $r34 == null 
(define-const var2727 String var2462) ; Statement: r45 = $r33 
(define-const var2797 String var2462) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var832 Int (var2574_size/-959786421 var1254)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var832 6) (and (not (= var832 5)) (and (not (= var832 4)) (and (not (= var832 3)) (and (not (= var832 2)) (and (not (= var832 1)) true))))))) ; Intersect: Cond: $i2 == 6  and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional      
(define-const var2755 String var874-TYPE_OBJECT_WRITER_6) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3274 (Array Int String) var2161-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3505!1 52 49 var2727 var2755 var3274)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3505!2 var298)
(declare-const var652 Int)
(declare-const var2453 Int)
(declare-const var2727!1 String)
(declare-const var2755!1 String)
(declare-const var3274!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2313 var1254 var3505!2 var2755!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2313!1 var2161)
(declare-const var1254!1 var2574)
(declare-const var3505!3 var298)
(declare-const var2755!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2313!1 var1254!1 var3505!3 var2727!1 var2755!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2313!2 var2161)
(declare-const var1254!2 var2574)
(declare-const var3505!4 var298)
(declare-const var2727!2 String)
(declare-const var2755!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2313!2 var1961 var227 var1254!2 var3505!4 var2727!2 var3799)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2313!3 var2161)
(declare-const var1961!1 var1939)
(declare-const var227!1 ClassObject)
(declare-const var1254!3 var2574)
(declare-const var3505!5 var298)
(declare-const var2727!3 String)
(declare-const var3799!1 Int)
(define-const var3122 var388 var388-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var690 Int (mask/-2077367092 var3122)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2004 Int (bv2nat (bvand ((_ int2bv 64) var3799!1) ((_ int2bv 64) var690)))) ; Statement: $l15 = l3 & $l14 
(define-const var803 Int (ite (> var2004 0) 1 (ite (< var2004 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var803 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var2313!3 var1961!1 var227!1 var1254!3 var3505!5 var2727!3 var3799!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2313!4 var2161)
(declare-const var1961!2 var1939)
(declare-const var227!2 ClassObject)
(declare-const var1254!4 var2574)
(declare-const var3505!6 var298)
(declare-const var2727!4 String)
(declare-const var3799!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2313!4 var1961!2 var227!2 var3799!2 var1254!4 var3505!6 var2727!4 var3799!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2313!5 var2161)
(declare-const var1961!3 var1939)
(declare-const var227!3 ClassObject)
(declare-const var3799!3 Int)
(declare-const var1254!5 var2574)
(declare-const var3505!7 var298)
(declare-const var2727!5 String)
(declare-const var3799!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2313!5 var1961!3 "writeArrayMapping" var227!3 var3799!4 var1254!5 var3505!7 var2727!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2313!6 var2161)
(declare-const var1961!4 var1939)
(declare-const var1148 String)
(declare-const var227!4 ClassObject)
(declare-const var3799!5 Int)
(declare-const var1254!6 var2574)
(declare-const var3505!8 var298)
(declare-const var2727!6 String)
(assert true)
(define-const var341 (Array Int Int) (toByteArray/1561254549 var3505!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1016 var3176 (classLoader/1229018461 var2313!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var304 Int (getLength-Arr-Int-1 var341)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1906 ClassObject (defineClassPublic/-885393557 var1016 var2797 var341 0 var304)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3765 var1462) ; Statement: $r35 := @caughtexception 
(assert (not (= var3765 null-var1462)))
(define-const var3120 var3966 var3966-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var604 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var604)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var604!1 String)
(assert (= var604!1 ""))
(assert true)
(define-const var2195 String (append/672562846 var604!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var604!2 String)
(assert (= var604!2 (str.++ var604!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1518 String (append/-1031950772 var2195 (cast-from-ClassObject-to-var1457 var227!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2195!1 String)
(assert (str.prefixof var2195 var2195!1))
(assert true)
(define-const var2945 String (toString/-2075883882 var1518)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3120 var2945 var3765)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3120!1 var3966)
(declare-const var2945!1 String)
(declare-const var3765!1 var1462)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var298-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2574_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3966-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1457=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2161=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2313=r15, var227=r7, var1939=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1961=r16, var1149=com.alibaba.fastjson2.codec.BeanInfo, var2298=r21, var2574=java.util.List, var1254=r5, var3799=l3, var298=com.alibaba.fastjson2.internal.asm.ClassWriter, var3505=$r49, var3114=java.util.function.Function, var2092=null, var1655=null_type, var861=$r50, var1060=$r3, var2190=java.util.concurrent.atomic.AtomicLong, var1508=$r2, var3668=$l0, var2482=$r4, var27=$r6, var2965=$i1, var3398=$r12, var2228=$r41, var2222=$r13, var2462=$r33, var361=$r14, var409=java.lang.Package, var18=$r34, var2727=r45, var2797=r44, var832=$i2, var874=com.alibaba.fastjson2.internal.asm.ASMUtils, var2755=r46, var3274=$r47, var652=52, var2453=49, var388=com.alibaba.fastjson2.JSONWriter$Feature, var3122=$r48, var690=$l14, var2004=$l15, var803=$b16, var1148="writeArrayMapping", var341=$r27, var3176=com.alibaba.fastjson2.util.DynamicClassLoader, var1016=$r17, var304=$i4, var1906=$r28, var1462=java.lang.Throwable, var3765=$r35, var3966=com.alibaba.fastjson2.JSONException, var3120=$r55, var604=$r54, var2195=$r38, var1457=java.lang.Object, var1518=$r39, var2945=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2161, r15=var2313, r7=var227, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1939, r16=var1961, com.alibaba.fastjson2.codec.BeanInfo=var1149, r21=var2298, java.util.List=var2574, r5=var1254, l3=var3799, com.alibaba.fastjson2.internal.asm.ClassWriter=var298, $r49=var3505, java.util.function.Function=var3114, null=var2092, null_type=var1655, $r50=var861, $r3=var1060, java.util.concurrent.atomic.AtomicLong=var2190, $r2=var1508, $l0=var3668, $r4=var2482, $r6=var27, $i1=var2965, $r12=var3398, $r41=var2228, $r13=var2222, $r33=var2462, $r14=var361, java.lang.Package=var409, $r34=var18, r45=var2727, r44=var2797, $i2=var832, com.alibaba.fastjson2.internal.asm.ASMUtils=var874, r46=var2755, $r47=var3274, 52=var652, 49=var2453, com.alibaba.fastjson2.JSONWriter$Feature=var388, $r48=var3122, $l14=var690, $l15=var2004, $b16=var803, "writeArrayMapping"=var1148, $r27=var341, com.alibaba.fastjson2.util.DynamicClassLoader=var3176, $r17=var1016, $i4=var304, $r28=var1906, java.lang.Throwable=var1462, $r35=var3765, com.alibaba.fastjson2.JSONException=var3966, $r55=var3120, $r54=var604, $r38=var2195, java.lang.Object=var1457, $r39=var1518, $r40=var2945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10