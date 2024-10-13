(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2538 0)
(declare-sort var498 0)
(declare-sort var2646 0)
(declare-sort var2648 0)
(declare-sort var3944 0)
(declare-sort var19 0)
(declare-sort var2832 0)
(declare-sort var2249 0)
(declare-sort var1723 0)
(declare-sort var2091 0)
(declare-sort var2955 0)
(declare-sort var142 0)
(declare-sort var765 0)
(declare-sort var3493 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2538!class ClassObject)
(declare-fun var3944-init () var3944)
(declare-fun <init>/1561585841 (var3944 var19) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2249) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2648_size/-959786421 (var2648) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var1723)
(declare-fun visit/1245821975 (var3944 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var2538 var2648 var3944 String) void)
(declare-fun genMethodInit/736566045 (var2538 var2648 var3944 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var2538 var498 ClassObject var2648 var3944 String Int) void)
(declare-fun mask/-2077367092 (var2955) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var2538 var498 String ClassObject Int var2648 var3944 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var2538 var498 ClassObject Int var2648 var3944 String Int) void)
(declare-fun toByteArray/1561254549 (var3944) (Array Int Int))
(declare-fun classLoader/1229018461 (var2538) var142)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var142 String (Array Int Int) Int Int) ClassObject)
(declare-fun var3493-init () var3493)
(declare-fun append/-1031950772 (String var2859) String)
(declare-fun cast-from-ClassObject-to-var2859 (ClassObject) var2859)
(declare-fun <init>/-743866570 (var3493 String var765) void)
(declare-const null-var2538 var2538)
(declare-const null-ClassObject ClassObject)
(declare-const null-var498 var498)
(declare-const null-var2646 var2646)
(declare-const null-var2648 var2648)
(declare-const null-Int Int)
(declare-const null-NullType var2832)
(declare-const null-var19 var19)
(declare-const var2538-seed var2249)
(declare-const null-var1723 var1723)
(declare-const var2091-TYPE_OBJECT_WRITER_ADAPTER String)
(declare-const var2538-INTERFACES (Array Int String))
(declare-const var2955-BeanToArray var2955)
(declare-const null-var765 var765)
(declare-const var3447 var2538) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3447 null-var2538)))
(declare-const var455 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var455 null-ClassObject)))
(declare-const var737 var498) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var737 null-var498)))
(declare-const var3276 var2646) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3276 null-var2646)))
(declare-const var3153 var2648) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3153 null-var2648)))
(declare-const var1810 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1810 null-Int)))
(define-const var2182 var3944 var3944-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2182 null-var19)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2182!1 var3944)
(declare-const var2594 var2832)
(define-const var1495 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1495)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1495!1 String)
(assert (= var1495!1 ""))
(assert true)
(define-const var349 String (append/672562846 var1495!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var1495!2 String)
(assert (= var1495!2 (str.++ var1495!1 "OWG_")))
(define-const var3175 var2249 var2538-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2210 Int (incrementAndGet/636047358 var3175)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2881 String (append/-901862667 var349 var2210)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var349!1 String)
(assert (str.prefixof var349 var349!1))
(assert true)
(define-const var3172 String (append/672562846 var2881 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2881!1 String)
(assert (= var2881!1 (str.++ var2881 "_")))
(define-const var3788 Int (var2648_size/-959786421 var3153)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2900 String (append/-1001720160 var3172 var3788)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3172!1 String)
(assert (str.prefixof var3172 var3172!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (= var455 null-ClassObject))) ; Cond: r7 != null 
(define-const var1485 String String-init) ; Statement: $r51 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1485)) ; Statement: specialinvoke $r51.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1485!1 String)
(assert (= var1485!1 ""))
(assert true)
(define-const var1167 String (append/672562846 var1485!1 "_")) ; Statement: $r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1485!2 String)
(assert (= var1485!2 (str.++ var1485!1 "_")))
(assert true)
(define-const var2993 String (getSimpleName/-390194377 var455)) ; Statement: $r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var420 String (append/672562846 var1167 var2993)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1167!1 String)
(assert (= var1167!1 (str.++ var1167 var2993)))
(assert true)
(define-const var2324 String (toString/-2075883882 var420)) ; Statement: $r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2774 String (append/672562846 var2900 var2324)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2900!1 String)
(assert (= var2900!1 (str.++ var2900 var2324)))
(assert true)
(define-const var3711 String (toString/-2075883882 var2774)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var939 ClassObject var2538!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1015 var1723 (getPackage/-1841711535 var939)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1015 null-var1723)) ; Cond: $r34 == null 
(define-const var2414 String var3711) ; Statement: r45 = $r33 
(define-const var1346 String var3711) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var434 Int (var2648_size/-959786421 var3153)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (not (= var434 12)) (and (not (= var434 11)) (and (not (= var434 10)) (and (not (= var434 9)) (and (not (= var434 8)) (and (not (= var434 7)) (and (not (= var434 6)) (and (not (= var434 5)) (and (not (= var434 4)) (and (not (= var434 3)) (and (not (= var434 2)) (and (not (= var434 1)) true))))))))))))) ; Intersect: Negate: Cond: $i2 == 12   and Intersect: Negate: Cond: $i2 == 11   and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional            
(define-const var2419 String var2091-TYPE_OBJECT_WRITER_ADAPTER) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER> 
(assert true) ; Non Conditional
(define-const var2437 (Array Int String) var2538-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2182!1 52 49 var2414 var2419 var2437)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2182!2 var3944)
(declare-const var3857 Int)
(declare-const var2839 Int)
(declare-const var2414!1 String)
(declare-const var2419!1 String)
(declare-const var2437!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var3447 var3153 var2182!2 var2419!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var3447!1 var2538)
(declare-const var3153!1 var2648)
(declare-const var2182!3 var3944)
(declare-const var2419!2 String)
(assert true)
;(assert (genMethodInit/736566045 var3447!1 var3153!1 var2182!3 var2414!1 var2419!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var3447!2 var2538)
(declare-const var3153!2 var2648)
(declare-const var2182!4 var3944)
(declare-const var2414!2 String)
(declare-const var2419!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var3447!2 var737 var455 var3153!2 var2182!4 var2414!2 var1810)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var3447!3 var2538)
(declare-const var737!1 var498)
(declare-const var455!1 ClassObject)
(declare-const var3153!3 var2648)
(declare-const var2182!5 var3944)
(declare-const var2414!3 String)
(declare-const var1810!1 Int)
(define-const var2129 var2955 var2955-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2815 Int (mask/-2077367092 var2129)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2161 Int (bv2nat (bvand ((_ int2bv 64) var1810!1) ((_ int2bv 64) var2815)))) ; Statement: $l15 = l3 & $l14 
(define-const var3510 Int (ite (> var2161 0) 1 (ite (< var2161 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var3510 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3447!3 var737!1 "write" var455!1 var1810!1 var3153!3 var2182!5 var2414!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var3447!4 var2538)
(declare-const var737!2 var498)
(declare-const var1925 String)
(declare-const var455!2 ClassObject)
(declare-const var1810!2 Int)
(declare-const var3153!4 var2648)
(declare-const var2182!6 var3944)
(declare-const var2414!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var3447!4 var737!2 var455!2 var1810!2 var3153!4 var2182!6 var2414!4 var1810!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var3447!5 var2538)
(declare-const var737!3 var498)
(declare-const var455!3 ClassObject)
(declare-const var1810!3 Int)
(declare-const var3153!5 var2648)
(declare-const var2182!7 var3944)
(declare-const var2414!5 String)
(declare-const var1810!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var3447!5 var737!3 "writeArrayMapping" var455!3 var1810!4 var3153!5 var2182!7 var2414!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var3447!6 var2538)
(declare-const var737!4 var498)
(declare-const var1566 String)
(declare-const var455!4 ClassObject)
(declare-const var1810!5 Int)
(declare-const var3153!6 var2648)
(declare-const var2182!8 var3944)
(declare-const var2414!6 String)
(assert true)
(define-const var1196 (Array Int Int) (toByteArray/1561254549 var2182!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var2952 var142 (classLoader/1229018461 var3447!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3019 Int (getLength-Arr-Int-1 var1196)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2642 ClassObject (defineClassPublic/-885393557 var2952 var1346 var1196 0 var3019)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1114 var765) ; Statement: $r35 := @caughtexception 
(assert (not (= var1114 null-var765)))
(define-const var3428 var3493 var3493-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1848 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1848)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1848!1 String)
(assert (= var1848!1 ""))
(assert true)
(define-const var2248 String (append/672562846 var1848!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1848!2 String)
(assert (= var1848!2 (str.++ var1848!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2854 String (append/-1031950772 var2248 (cast-from-ClassObject-to-var2859 var455!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2248!1 String)
(assert (str.prefixof var2248 var2248!1))
(assert true)
(define-const var3658 String (toString/-2075883882 var2854)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3428 var3658 var1114)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3428!1 var3493)
(declare-const var3658!1 String)
(declare-const var1114!1 var765)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3944-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2648_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var3493-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2859=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var2538=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3447=r15, var455=r7, var498=com.alibaba.fastjson2.writer.ObjectWriterProvider, var737=r16, var2646=com.alibaba.fastjson2.codec.BeanInfo, var3276=r21, var2648=java.util.List, var3153=r5, var1810=l3, var3944=com.alibaba.fastjson2.internal.asm.ClassWriter, var2182=$r49, var19=java.util.function.Function, var2594=null, var2832=null_type, var1495=$r50, var349=$r3, var2249=java.util.concurrent.atomic.AtomicLong, var3175=$r2, var2210=$l0, var2881=$r4, var3172=$r6, var3788=$i1, var2900=$r12, var1485=$r51, var1167=$r10, var2993=$r9, var420=$r11, var2324=$r41, var2774=$r13, var3711=$r33, var939=$r14, var1723=java.lang.Package, var1015=$r34, var2414=r45, var1346=r44, var434=$i2, var2091=com.alibaba.fastjson2.internal.asm.ASMUtils, var2419=r46, var2437=$r47, var3857=52, var2839=49, var2955=com.alibaba.fastjson2.JSONWriter$Feature, var2129=$r48, var2815=$l14, var2161=$l15, var3510=$b16, var1925="write", var1566="writeArrayMapping", var1196=$r27, var142=com.alibaba.fastjson2.util.DynamicClassLoader, var2952=$r17, var3019=$i4, var2642=$r28, var765=java.lang.Throwable, var1114=$r35, var3493=com.alibaba.fastjson2.JSONException, var3428=$r55, var1848=$r54, var2248=$r38, var2859=java.lang.Object, var2854=$r39, var3658=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2538, r15=var3447, r7=var455, com.alibaba.fastjson2.writer.ObjectWriterProvider=var498, r16=var737, com.alibaba.fastjson2.codec.BeanInfo=var2646, r21=var3276, java.util.List=var2648, r5=var3153, l3=var1810, com.alibaba.fastjson2.internal.asm.ClassWriter=var3944, $r49=var2182, java.util.function.Function=var19, null=var2594, null_type=var2832, $r50=var1495, $r3=var349, java.util.concurrent.atomic.AtomicLong=var2249, $r2=var3175, $l0=var2210, $r4=var2881, $r6=var3172, $i1=var3788, $r12=var2900, $r51=var1485, $r10=var1167, $r9=var2993, $r11=var420, $r41=var2324, $r13=var2774, $r33=var3711, $r14=var939, java.lang.Package=var1723, $r34=var1015, r45=var2414, r44=var1346, $i2=var434, com.alibaba.fastjson2.internal.asm.ASMUtils=var2091, r46=var2419, $r47=var2437, 52=var3857, 49=var2839, com.alibaba.fastjson2.JSONWriter$Feature=var2955, $r48=var2129, $l14=var2815, $l15=var2161, $b16=var3510, "write"=var1925, "writeArrayMapping"=var1566, $r27=var1196, com.alibaba.fastjson2.util.DynamicClassLoader=var142, $r17=var2952, $i4=var3019, $r28=var2642, java.lang.Throwable=var765, $r35=var1114, com.alibaba.fastjson2.JSONException=var3493, $r55=var3428, $r54=var1848, $r38=var2248, java.lang.Object=var2859, $r39=var2854, $r40=var3658}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r51 = new java.lang.StringBuilder;	specialinvoke $r51.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r9 = virtualinvoke r7.<java.lang.Class: java.lang.String getSimpleName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r41 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>;	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10