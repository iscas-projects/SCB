(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1589 0)
(declare-sort var3103 0)
(declare-sort var2372 0)
(declare-sort var2658 0)
(declare-sort var363 0)
(declare-sort var434 0)
(declare-sort var1342 0)
(declare-sort var3894 0)
(declare-sort var3773 0)
(declare-sort var910 0)
(declare-sort var912 0)
(declare-sort var1561 0)
(declare-sort var3250 0)
(declare-sort var1308 0)
(declare-sort var977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1589!class ClassObject)
(declare-fun var363-init () var363)
(declare-fun <init>/1561585841 (var363 var434) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var3894) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2658_size/-959786421 (var2658) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var3773)
(declare-fun visit/1245821975 (var363 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1589 var2658 var363 String) void)
(declare-fun genMethodInit/736566045 (var1589 var2658 var363 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1589 var3103 ClassObject var2658 var363 String Int) void)
(declare-fun mask/-2077367092 (var912) Int)
(declare-fun genMethodWrite/551741206 (var1589 var3103 ClassObject var2658 var363 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1589 var3103 ClassObject Int var2658 var363 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1589 var3103 String ClassObject Int var2658 var363 String) void)
(declare-fun toByteArray/1561254549 (var363) (Array Int Int))
(declare-fun classLoader/1229018461 (var1589) var1561)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1561 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1308-init () var1308)
(declare-fun append/-1031950772 (String var977) String)
(declare-fun cast-from-ClassObject-to-var977 (ClassObject) var977)
(declare-fun <init>/-743866570 (var1308 String var3250) void)
(declare-const null-var1589 var1589)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3103 var3103)
(declare-const null-var2372 var2372)
(declare-const null-var2658 var2658)
(declare-const null-Int Int)
(declare-const null-NullType var1342)
(declare-const null-var434 var434)
(declare-const var1589-seed var3894)
(declare-const null-var3773 var3773)
(declare-const var910-TYPE_OBJECT_WRITER_6 String)
(declare-const var1589-INTERFACES (Array Int String))
(declare-const var912-BeanToArray var912)
(declare-const null-var3250 var3250)
(declare-const var1015 var1589) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1015 null-var1589)))
(declare-const var1714 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1714 null-ClassObject)))
(declare-const var2945 var3103) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2945 null-var3103)))
(declare-const var664 var2372) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var664 null-var2372)))
(declare-const var3539 var2658) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3539 null-var2658)))
(declare-const var1123 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1123 null-Int)))
(define-const var2282 var363 var363-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2282 null-var434)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2282!1 var363)
(declare-const var3863 var1342)
(define-const var3492 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3492)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3492!1 String)
(assert (= var3492!1 ""))
(assert true)
(define-const var3261 String (append/672562846 var3492!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3492!2 String)
(assert (= var3492!2 (str.++ var3492!1 "OWG_")))
(define-const var1704 var3894 var1589-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var12 Int (incrementAndGet/636047358 var1704)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var1096 String (append/-901862667 var3261 var12)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3261!1 String)
(assert (str.prefixof var3261 var3261!1))
(assert true)
(define-const var2790 String (append/672562846 var1096 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1096!1 String)
(assert (= var1096!1 (str.++ var1096 "_")))
(define-const var569 Int (var2658_size/-959786421 var3539)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1149 String (append/-1001720160 var2790 var569)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2790!1 String)
(assert (str.prefixof var2790 var2790!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var1714 null-ClassObject))) ; Cond: r7 != null 
(define-const var197 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var197)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var197!1 String)
(assert (= var197!1 ""))
(assert true)
(define-const var2525 String (append/672562846 var197!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var197!2 String)
(assert (= var197!2 (str.++ var197!1 "_")))
(assert true)
(define-const var2636 String (getSimpleName/-390194377 var1714)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2145 String (append/672562846 var2525 var2636)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 var2636)))
(assert true)
(define-const var640 String (toString/-2075883882 var2145)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2729 String (append/672562846 var1149 var640)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1149!1 String)
(assert (= var1149!1 (str.++ var1149 var640)))
(assert true)
(define-const var324 String (toString/-2075883882 var2729)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1310 ClassObject var1589!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var396 var3773 (getPackage/-1841711535 var1310)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var396 null-var3773)) ; Cond: $r34 == null 
(define-const var667 String var324) ; Statement: r45 = $r33 
(define-const var3944 String var324) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1585 Int (var2658_size/-959786421 var3539)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1585 6) (and (not (= var1585 5)) (and (not (= var1585 4)) (and (not (= var1585 3)) (and (not (= var1585 2)) (and (not (= var1585 1)) true))))))) ; Intersect: Cond: $i2 == 6  and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional      
(define-const var2698 String var910-TYPE_OBJECT_WRITER_6) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var3117 (Array Int String) var1589-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2282!1 52 49 var667 var2698 var3117)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2282!2 var363)
(declare-const var3728 Int)
(declare-const var915 Int)
(declare-const var667!1 String)
(declare-const var2698!1 String)
(declare-const var3117!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var1015 var3539 var2282!2 var2698!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var1015!1 var1589)
(declare-const var3539!1 var2658)
(declare-const var2282!3 var363)
(declare-const var2698!2 String)
(assert true)
;(assert (genMethodInit/736566045 var1015!1 var3539!1 var2282!3 var667!1 var2698!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var1015!2 var1589)
(declare-const var3539!2 var2658)
(declare-const var2282!4 var363)
(declare-const var667!2 String)
(declare-const var2698!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var1015!2 var2945 var1714 var3539!2 var2282!4 var667!2 var1123)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1015!3 var1589)
(declare-const var2945!1 var3103)
(declare-const var1714!1 ClassObject)
(declare-const var3539!3 var2658)
(declare-const var2282!5 var363)
(declare-const var667!3 String)
(declare-const var1123!1 Int)
(define-const var156 var912 var912-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2862 Int (mask/-2077367092 var156)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2174 Int (bv2nat (bvand ((_ int2bv 64) var1123!1) ((_ int2bv 64) var2862)))) ; Statement: $l15 = l3 & $l14 
(define-const var3980 Int (ite (> var2174 0) 1 (ite (< var2174 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3980 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var1015!3 var2945!1 var1714!1 var3539!3 var2282!5 var667!3 var1123!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var1015!4 var1589)
(declare-const var2945!2 var3103)
(declare-const var1714!2 ClassObject)
(declare-const var3539!4 var2658)
(declare-const var2282!6 var363)
(declare-const var667!4 String)
(declare-const var1123!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var1015!4 var2945!2 var1714!2 var1123!2 var3539!4 var2282!6 var667!4 var1123!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var1015!5 var1589)
(declare-const var2945!3 var3103)
(declare-const var1714!3 ClassObject)
(declare-const var1123!3 Int)
(declare-const var3539!5 var2658)
(declare-const var2282!7 var363)
(declare-const var667!5 String)
(declare-const var1123!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var1015!5 var2945!3 "writeArrayMapping" var1714!3 var1123!4 var3539!5 var2282!7 var667!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var1015!6 var1589)
(declare-const var2945!4 var3103)
(declare-const var2685 String)
(declare-const var1714!4 ClassObject)
(declare-const var1123!5 Int)
(declare-const var3539!6 var2658)
(declare-const var2282!8 var363)
(declare-const var667!6 String)
(assert true)
(define-const var3211 (Array Int Int) (toByteArray/1561254549 var2282!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var1125 var1561 (classLoader/1229018461 var1015!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2970 Int (getLength-Arr-Int-1 var3211)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var21 ClassObject (defineClassPublic/-885393557 var1125 var3944 var3211 0 var2970)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3516 var3250) ; Statement: $r35 := @caughtexception 
(assert (not (= var3516 null-var3250)))
(define-const var2169 var1308 var1308-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1047 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1047)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1047!1 String)
(assert (= var1047!1 ""))
(assert true)
(define-const var901 String (append/672562846 var1047!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1047!2 String)
(assert (= var1047!2 (str.++ var1047!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1267 String (append/-1031950772 var901 (cast-from-ClassObject-to-var977 var1714!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var901!1 String)
(assert (str.prefixof var901 var901!1))
(assert true)
(define-const var3598 String (toString/-2075883882 var1267)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2169 var3598 var3516)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2169!1 var1308)
(declare-const var3598!1 String)
(declare-const var3516!1 var3250)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var363-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2658_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1308-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var977=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1589=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1015=r15, var1714=r7, var3103=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2945=r16, var2372=com.alibaba.fastjson2.codec.BeanInfo, var664=r21, var2658=java.util.List, var3539=r5, var1123=l3, var363=com.alibaba.fastjson2.internal.asm.ClassWriter, var2282=$r49, var434=java.util.function.Function, var3863=null, var1342=null_type, var3492=$r50, var3261=$r3, var3894=java.util.concurrent.atomic.AtomicLong, var1704=$r2, var12=$l0, var1096=$r4, var2790=$r6, var569=$i1, var1149=$r12, var197=$r51, var2525=$r10, var2636=$r9, var2145=$r11, var640=$r41, var2729=$r13, var324=$r33, var1310=$r14, var3773=java.lang.Package, var396=$r34, var667=r45, var3944=r44, var1585=$i2, var910=com.alibaba.fastjson2.internal.asm.ASMUtils, var2698=r46, var3117=$r47, var3728=52, var915=49, var912=com.alibaba.fastjson2.JSONWriter$Feature, var156=$r48, var2862=$l14, var2174=$l15, var3980=$b16, var2685="writeArrayMapping", var3211=$r27, var1561=com.alibaba.fastjson2.util.DynamicClassLoader, var1125=$r17, var2970=$i4, var21=$r28, var3250=java.lang.Throwable, var3516=$r35, var1308=com.alibaba.fastjson2.JSONException, var2169=$r55, var1047=$r54, var901=$r38, var977=java.lang.Object, var1267=$r39, var3598=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1589, r15=var1015, r7=var1714, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3103, r16=var2945, com.alibaba.fastjson2.codec.BeanInfo=var2372, r21=var664, java.util.List=var2658, r5=var3539, l3=var1123, com.alibaba.fastjson2.internal.asm.ClassWriter=var363, $r49=var2282, java.util.function.Function=var434, null=var3863, null_type=var1342, $r50=var3492, $r3=var3261, java.util.concurrent.atomic.AtomicLong=var3894, $r2=var1704, $l0=var12, $r4=var1096, $r6=var2790, $i1=var569, $r12=var1149, $r51=var197, $r10=var2525, $r9=var2636, $r11=var2145, $r41=var640, $r13=var2729, $r33=var324, $r14=var1310, java.lang.Package=var3773, $r34=var396, r45=var667, r44=var3944, $i2=var1585, com.alibaba.fastjson2.internal.asm.ASMUtils=var910, r46=var2698, $r47=var3117, 52=var3728, 49=var915, com.alibaba.fastjson2.JSONWriter$Feature=var912, $r48=var156, $l14=var2862, $l15=var2174, $b16=var3980, "writeArrayMapping"=var2685, $r27=var3211, com.alibaba.fastjson2.util.DynamicClassLoader=var1561, $r17=var1125, $i4=var2970, $r28=var21, java.lang.Throwable=var3250, $r35=var3516, com.alibaba.fastjson2.JSONException=var1308, $r55=var2169, $r54=var1047, $r38=var901, java.lang.Object=var977, $r39=var1267, $r40=var3598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10