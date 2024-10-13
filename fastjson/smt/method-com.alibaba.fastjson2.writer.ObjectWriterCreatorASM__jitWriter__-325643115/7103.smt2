(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3286 0)
(declare-sort var3699 0)
(declare-sort var3481 0)
(declare-sort var804 0)
(declare-sort var2740 0)
(declare-sort var696 0)
(declare-sort var3643 0)
(declare-sort var162 0)
(declare-sort var2208 0)
(declare-sort var3544 0)
(declare-sort var1748 0)
(declare-sort var2708 0)
(declare-sort var617 0)
(declare-sort var3636 0)
(declare-sort var3510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3286!class ClassObject)
(declare-fun var2740-init () var2740)
(declare-fun <init>/1561585841 (var2740 var696) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var162) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var804_size/-959786421 (var804) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2208)
(declare-fun visit/1245821975 (var2740 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3286 var804 var2740 String) void)
(declare-fun genMethodInit/736566045 (var3286 var804 var2740 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3286 var3699 ClassObject var804 var2740 String Int) void)
(declare-fun mask/-2077367092 (var1748) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3286 var3699 String ClassObject Int var804 var2740 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3286 var3699 ClassObject Int var804 var2740 String Int) void)
(declare-fun toByteArray/1561254549 (var2740) (Array Int Int))
(declare-fun classLoader/1229018461 (var3286) var2708)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var2708 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3636-init () var3636)
(declare-fun append/-1031950772 (String var3510) String)
(declare-fun cast-from-ClassObject-to-var3510 (ClassObject) var3510)
(declare-fun <init>/-743866570 (var3636 String var617) void)
(declare-const null-var3286 var3286)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3699 var3699)
(declare-const null-var3481 var3481)
(declare-const null-var804 var804)
(declare-const null-Int Int)
(declare-const null-NullType var3643)
(declare-const null-var696 var696)
(declare-const var3286-seed var162)
(declare-const null-var2208 var2208)
(declare-const var3544-TYPE_OBJECT_WRITER_10 String)
(declare-const var3286-INTERFACES (Array Int String))
(declare-const var1748-BeanToArray var1748)
(declare-const null-var617 var617)
(declare-const var879 var3286) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var879 null-var3286)))
(declare-const var2219 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2219 null-ClassObject)))
(declare-const var1072 var3699) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1072 null-var3699)))
(declare-const var1124 var3481) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var1124 null-var3481)))
(declare-const var1495 var804) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var1495 null-var804)))
(declare-const var865 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var865 null-Int)))
(define-const var1382 var2740 var2740-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var1382 null-var696)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var1382!1 var2740)
(declare-const var2846 var3643)
(define-const var3333 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3333)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3333!1 String)
(assert (= var3333!1 ""))
(assert true)
(define-const var2767 String (append/672562846 var3333!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3333!2 String)
(assert (= var3333!2 (str.++ var3333!1 "OWG_")))
(define-const var85 var162 var3286-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var891 Int (incrementAndGet/636047358 var85)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2712 String (append/-901862667 var2767 var891)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2767!1 String)
(assert (str.prefixof var2767 var2767!1))
(assert true)
(define-const var496 String (append/672562846 var2712 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2712!1 String)
(assert (= var2712!1 (str.++ var2712 "_")))
(define-const var2665 Int (var804_size/-959786421 var1495)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var351 String (append/-1001720160 var496 var2665)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var496!1 String)
(assert (str.prefixof var496 var496!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var2219 null-ClassObject))) ; Cond: r7 != null 
(define-const var2828 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2828)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2828!1 String)
(assert (= var2828!1 ""))
(assert true)
(define-const var2815 String (append/672562846 var2828!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2828!2 String)
(assert (= var2828!2 (str.++ var2828!1 "_")))
(assert true)
(define-const var3288 String (getSimpleName/-390194377 var2219)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2282 String (append/672562846 var2815 var3288)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2815!1 String)
(assert (= var2815!1 (str.++ var2815 var3288)))
(assert true)
(define-const var1750 String (toString/-2075883882 var2282)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1638 String (append/672562846 var351 var1750)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var351!1 String)
(assert (= var351!1 (str.++ var351 var1750)))
(assert true)
(define-const var2303 String (toString/-2075883882 var1638)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var646 ClassObject var3286!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3259 var2208 (getPackage/-1841711535 var646)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3259 null-var2208)) ; Cond: $r34 == null 
(define-const var2065 String var2303) ; Statement: r45 = $r33 
(define-const var1765 String var2303) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var2464 Int (var804_size/-959786421 var1495)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var2464 10) (and (not (= var2464 9)) (and (not (= var2464 8)) (and (not (= var2464 7)) (and (not (= var2464 6)) (and (not (= var2464 5)) (and (not (= var2464 4)) (and (not (= var2464 3)) (and (not (= var2464 2)) (and (not (= var2464 1)) true))))))))))) ; Intersect: Cond: $i2 == 10  and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional          
(define-const var1607 String var3544-TYPE_OBJECT_WRITER_10) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1696 (Array Int String) var3286-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var1382!1 52 49 var2065 var1607 var1696)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var1382!2 var2740)
(declare-const var3400 Int)
(declare-const var1604 Int)
(declare-const var2065!1 String)
(declare-const var1607!1 String)
(declare-const var1696!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var879 var1495 var1382!2 var1607!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var879!1 var3286)
(declare-const var1495!1 var804)
(declare-const var1382!3 var2740)
(declare-const var1607!2 String)
(assert true)
;(assert (genMethodInit/736566045 var879!1 var1495!1 var1382!3 var2065!1 var1607!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var879!2 var3286)
(declare-const var1495!2 var804)
(declare-const var1382!4 var2740)
(declare-const var2065!2 String)
(declare-const var1607!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var879!2 var1072 var2219 var1495!2 var1382!4 var2065!2 var865)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var879!3 var3286)
(declare-const var1072!1 var3699)
(declare-const var2219!1 ClassObject)
(declare-const var1495!3 var804)
(declare-const var1382!5 var2740)
(declare-const var2065!3 String)
(declare-const var865!1 Int)
(define-const var3330 var1748 var1748-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2425 Int (mask/-2077367092 var3330)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1450 Int (bv2nat (bvand ((_ int2bv 64) var865!1) ((_ int2bv 64) var2425)))) ; Statement: $l15 = l3 & $l14 
(define-const var2649 Int (ite (> var1450 0) 1 (ite (< var1450 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var2649 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var879!3 var1072!1 "write" var2219!1 var865!1 var1495!3 var1382!5 var2065!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var879!4 var3286)
(declare-const var1072!2 var3699)
(declare-const var420 String)
(declare-const var2219!2 ClassObject)
(declare-const var865!2 Int)
(declare-const var1495!4 var804)
(declare-const var1382!6 var2740)
(declare-const var2065!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var879!4 var1072!2 var2219!2 var865!2 var1495!4 var1382!6 var2065!4 var865!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var879!5 var3286)
(declare-const var1072!3 var3699)
(declare-const var2219!3 ClassObject)
(declare-const var865!3 Int)
(declare-const var1495!5 var804)
(declare-const var1382!7 var2740)
(declare-const var2065!5 String)
(declare-const var865!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var879!5 var1072!3 "writeArrayMapping" var2219!3 var865!4 var1495!5 var1382!7 var2065!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var879!6 var3286)
(declare-const var1072!4 var3699)
(declare-const var621 String)
(declare-const var2219!4 ClassObject)
(declare-const var865!5 Int)
(declare-const var1495!6 var804)
(declare-const var1382!8 var2740)
(declare-const var2065!6 String)
(assert true)
(define-const var700 (Array Int Int) (toByteArray/1561254549 var1382!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var727 var2708 (classLoader/1229018461 var879!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var993 Int (getLength-Arr-Int-1 var700)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var618 ClassObject (defineClassPublic/-885393557 var727 var1765 var700 0 var993)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3177 var617) ; Statement: $r35 := @caughtexception 
(assert (not (= var3177 null-var617)))
(define-const var1562 var3636 var3636-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var2701 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2701)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2701!1 String)
(assert (= var2701!1 ""))
(assert true)
(define-const var3682 String (append/672562846 var2701!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var2701!2 String)
(assert (= var2701!2 (str.++ var2701!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1690 String (append/-1031950772 var3682 (cast-from-ClassObject-to-var3510 var2219!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3682!1 String)
(assert (str.prefixof var3682 var3682!1))
(assert true)
(define-const var2461 String (toString/-2075883882 var1690)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1562 var2461 var3177)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var1562!1 var3636)
(declare-const var2461!1 String)
(declare-const var3177!1 var617)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2740-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var804_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3636-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3510=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3286=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var879=r15, var2219=r7, var3699=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1072=r16, var3481=com.alibaba.fastjson2.codec.BeanInfo, var1124=r21, var804=java.util.List, var1495=r5, var865=l3, var2740=com.alibaba.fastjson2.internal.asm.ClassWriter, var1382=$r49, var696=java.util.function.Function, var2846=null, var3643=null_type, var3333=$r50, var2767=$r3, var162=java.util.concurrent.atomic.AtomicLong, var85=$r2, var891=$l0, var2712=$r4, var496=$r6, var2665=$i1, var351=$r12, var2828=$r51, var2815=$r10, var3288=$r9, var2282=$r11, var1750=$r41, var1638=$r13, var2303=$r33, var646=$r14, var2208=java.lang.Package, var3259=$r34, var2065=r45, var1765=r44, var2464=$i2, var3544=com.alibaba.fastjson2.internal.asm.ASMUtils, var1607=r46, var1696=$r47, var3400=52, var1604=49, var1748=com.alibaba.fastjson2.JSONWriter$Feature, var3330=$r48, var2425=$l14, var1450=$l15, var2649=$b16, var420="write", var621="writeArrayMapping", var700=$r27, var2708=com.alibaba.fastjson2.util.DynamicClassLoader, var727=$r17, var993=$i4, var618=$r28, var617=java.lang.Throwable, var3177=$r35, var3636=com.alibaba.fastjson2.JSONException, var1562=$r55, var2701=$r54, var3682=$r38, var3510=java.lang.Object, var1690=$r39, var2461=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3286, r15=var879, r7=var2219, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3699, r16=var1072, com.alibaba.fastjson2.codec.BeanInfo=var3481, r21=var1124, java.util.List=var804, r5=var1495, l3=var865, com.alibaba.fastjson2.internal.asm.ClassWriter=var2740, $r49=var1382, java.util.function.Function=var696, null=var2846, null_type=var3643, $r50=var3333, $r3=var2767, java.util.concurrent.atomic.AtomicLong=var162, $r2=var85, $l0=var891, $r4=var2712, $r6=var496, $i1=var2665, $r12=var351, $r51=var2828, $r10=var2815, $r9=var3288, $r11=var2282, $r41=var1750, $r13=var1638, $r33=var2303, $r14=var646, java.lang.Package=var2208, $r34=var3259, r45=var2065, r44=var1765, $i2=var2464, com.alibaba.fastjson2.internal.asm.ASMUtils=var3544, r46=var1607, $r47=var1696, 52=var3400, 49=var1604, com.alibaba.fastjson2.JSONWriter$Feature=var1748, $r48=var3330, $l14=var2425, $l15=var1450, $b16=var2649, "write"=var420, "writeArrayMapping"=var621, $r27=var700, com.alibaba.fastjson2.util.DynamicClassLoader=var2708, $r17=var727, $i4=var993, $r28=var618, java.lang.Throwable=var617, $r35=var3177, com.alibaba.fastjson2.JSONException=var3636, $r55=var1562, $r54=var2701, $r38=var3682, java.lang.Object=var3510, $r39=var1690, $r40=var2461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10