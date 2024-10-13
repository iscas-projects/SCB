(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3413 0)
(declare-sort var827 0)
(declare-sort var328 0)
(declare-sort var3006 0)
(declare-sort var3740 0)
(declare-sort var2401 0)
(declare-sort var2748 0)
(declare-sort var2930 0)
(declare-sort var2460 0)
(declare-sort var223 0)
(declare-sort var143 0)
(declare-sort var957 0)
(declare-sort var2126 0)
(declare-sort var2367 0)
(declare-sort var3940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3413!class ClassObject)
(declare-fun var3740-init () var3740)
(declare-fun <init>/1561585841 (var3740 var2401) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2930) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3006_size/-959786421 (var3006) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2460)
(declare-fun visit/1245821975 (var3740 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var3413 var3006 var3740 String) void)
(declare-fun genMethodInit/736566045 (var3413 var3006 var3740 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var3413 var827 ClassObject var3006 var3740 String Int) void)
(declare-fun mask/-2077367092 (var143) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var3413 var827 String ClassObject Int var3006 var3740 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var3413 var827 ClassObject Int var3006 var3740 String Int) void)
(declare-fun toByteArray/1561254549 (var3740) (Array Int Int))
(declare-fun classLoader/1229018461 (var3413) var957)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var957 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2367-init () var2367)
(declare-fun append/-1031950772 (String var3940) String)
(declare-fun cast-from-ClassObject-to-var3940 (ClassObject) var3940)
(declare-fun <init>/-743866570 (var2367 String var2126) void)
(declare-const null-var3413 var3413)
(declare-const null-ClassObject ClassObject)
(declare-const null-var827 var827)
(declare-const null-var328 var328)
(declare-const null-var3006 var3006)
(declare-const null-Int Int)
(declare-const null-NullType var2748)
(declare-const null-var2401 var2401)
(declare-const var3413-seed var2930)
(declare-const null-var2460 var2460)
(declare-const var223-TYPE_OBJECT_WRITER_11 String)
(declare-const var3413-INTERFACES (Array Int String))
(declare-const var143-BeanToArray var143)
(declare-const null-var2126 var2126)
(declare-const var2879 var3413) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2879 null-var3413)))
(declare-const var2009 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2009 null-ClassObject)))
(declare-const var3297 var827) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var3297 null-var827)))
(declare-const var792 var328) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var792 null-var328)))
(declare-const var3719 var3006) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3719 null-var3006)))
(declare-const var1059 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var1059 null-Int)))
(define-const var2286 var3740 var3740-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2286 null-var2401)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2286!1 var3740)
(declare-const var276 var2748)
(define-const var3595 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3595)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3595!1 String)
(assert (= var3595!1 ""))
(assert true)
(define-const var505 String (append/672562846 var3595!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3595!2 String)
(assert (= var3595!2 (str.++ var3595!1 "OWG_")))
(define-const var124 var2930 var3413-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var1185 Int (incrementAndGet/636047358 var124)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var751 String (append/-901862667 var505 var1185)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var505!1 String)
(assert (str.prefixof var505 var505!1))
(assert true)
(define-const var1028 String (append/672562846 var751 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var751!1 String)
(assert (= var751!1 (str.++ var751 "_")))
(define-const var2926 Int (var3006_size/-959786421 var3719)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3682 String (append/-1001720160 var1028 var2926)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1028!1 String)
(assert (str.prefixof var1028 var1028!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2009 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var35 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3437 String (append/672562846 var3682 var35)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3682!1 String)
(assert (= var3682!1 (str.++ var3682 var35)))
(assert true)
(define-const var3053 String (toString/-2075883882 var3437)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1937 ClassObject var3413!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var1773 var2460 (getPackage/-1841711535 var1937)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var1773 null-var2460)) ; Cond: $r34 == null 
(define-const var1520 String var3053) ; Statement: r45 = $r33 
(define-const var1753 String var3053) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3229 Int (var3006_size/-959786421 var3719)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3229 11) (and (not (= var3229 10)) (and (not (= var3229 9)) (and (not (= var3229 8)) (and (not (= var3229 7)) (and (not (= var3229 6)) (and (not (= var3229 5)) (and (not (= var3229 4)) (and (not (= var3229 3)) (and (not (= var3229 2)) (and (not (= var3229 1)) true)))))))))))) ; Intersect: Cond: $i2 == 11  and Intersect: Negate: Cond: $i2 == 10   and Intersect: Negate: Cond: $i2 == 9   and Intersect: Negate: Cond: $i2 == 8   and Intersect: Negate: Cond: $i2 == 7   and Intersect: Negate: Cond: $i2 == 6   and Intersect: Negate: Cond: $i2 == 5   and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional           
(define-const var2279 String var223-TYPE_OBJECT_WRITER_11) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2817 (Array Int String) var3413-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2286!1 52 49 var1520 var2279 var2817)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2286!2 var3740)
(declare-const var2502 Int)
(declare-const var2993 Int)
(declare-const var1520!1 String)
(declare-const var2279!1 String)
(declare-const var2817!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2879 var3719 var2286!2 var2279!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2879!1 var3413)
(declare-const var3719!1 var3006)
(declare-const var2286!3 var3740)
(declare-const var2279!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2879!1 var3719!1 var2286!3 var1520!1 var2279!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2879!2 var3413)
(declare-const var3719!2 var3006)
(declare-const var2286!4 var3740)
(declare-const var1520!2 String)
(declare-const var2279!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2879!2 var3297 var2009 var3719!2 var2286!4 var1520!2 var1059)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2879!3 var3413)
(declare-const var3297!1 var827)
(declare-const var2009!1 ClassObject)
(declare-const var3719!3 var3006)
(declare-const var2286!5 var3740)
(declare-const var1520!3 String)
(declare-const var1059!1 Int)
(define-const var3194 var143 var143-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var2309 Int (mask/-2077367092 var3194)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1254 Int (bv2nat (bvand ((_ int2bv 64) var1059!1) ((_ int2bv 64) var2309)))) ; Statement: $l15 = l3 & $l14 
(define-const var1579 Int (ite (> var1254 0) 1 (ite (< var1254 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1579 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2879!3 var3297!1 "write" var2009!1 var1059!1 var3719!3 var2286!5 var1520!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2879!4 var3413)
(declare-const var3297!2 var827)
(declare-const var443 String)
(declare-const var2009!2 ClassObject)
(declare-const var1059!2 Int)
(declare-const var3719!4 var3006)
(declare-const var2286!6 var3740)
(declare-const var1520!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2879!4 var3297!2 var2009!2 var1059!2 var3719!4 var2286!6 var1520!4 var1059!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2879!5 var3413)
(declare-const var3297!3 var827)
(declare-const var2009!3 ClassObject)
(declare-const var1059!3 Int)
(declare-const var3719!5 var3006)
(declare-const var2286!7 var3740)
(declare-const var1520!5 String)
(declare-const var1059!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2879!5 var3297!3 "writeArrayMapping" var2009!3 var1059!4 var3719!5 var2286!7 var1520!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2879!6 var3413)
(declare-const var3297!4 var827)
(declare-const var24 String)
(declare-const var2009!4 ClassObject)
(declare-const var1059!5 Int)
(declare-const var3719!6 var3006)
(declare-const var2286!8 var3740)
(declare-const var1520!6 String)
(assert true)
(define-const var2794 (Array Int Int) (toByteArray/1561254549 var2286!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3098 var957 (classLoader/1229018461 var2879!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3283 Int (getLength-Arr-Int-1 var2794)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var1136 ClassObject (defineClassPublic/-885393557 var3098 var1753 var2794 0 var3283)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2005 var2126) ; Statement: $r35 := @caughtexception 
(assert (not (= var2005 null-var2126)))
(define-const var706 var2367 var2367-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3260 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3260)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3260!1 String)
(assert (= var3260!1 ""))
(assert true)
(define-const var2086 String (append/672562846 var3260!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3260!2 String)
(assert (= var3260!2 (str.++ var3260!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2085 String (append/-1031950772 var2086 (cast-from-ClassObject-to-var3940 var2009!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2086!1 String)
(assert (str.prefixof var2086 var2086!1))
(assert true)
(define-const var3663 String (toString/-2075883882 var2085)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var706 var3663 var2005)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var706!1 var2367)
(declare-const var3663!1 String)
(declare-const var2005!1 var2126)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3740-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3006_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2367-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3940=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var3413=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2879=r15, var2009=r7, var827=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3297=r16, var328=com.alibaba.fastjson2.codec.BeanInfo, var792=r21, var3006=java.util.List, var3719=r5, var1059=l3, var3740=com.alibaba.fastjson2.internal.asm.ClassWriter, var2286=$r49, var2401=java.util.function.Function, var276=null, var2748=null_type, var3595=$r50, var505=$r3, var2930=java.util.concurrent.atomic.AtomicLong, var124=$r2, var1185=$l0, var751=$r4, var1028=$r6, var2926=$i1, var3682=$r12, var35=$r41, var3437=$r13, var3053=$r33, var1937=$r14, var2460=java.lang.Package, var1773=$r34, var1520=r45, var1753=r44, var3229=$i2, var223=com.alibaba.fastjson2.internal.asm.ASMUtils, var2279=r46, var2817=$r47, var2502=52, var2993=49, var143=com.alibaba.fastjson2.JSONWriter$Feature, var3194=$r48, var2309=$l14, var1254=$l15, var1579=$b16, var443="write", var24="writeArrayMapping", var2794=$r27, var957=com.alibaba.fastjson2.util.DynamicClassLoader, var3098=$r17, var3283=$i4, var1136=$r28, var2126=java.lang.Throwable, var2005=$r35, var2367=com.alibaba.fastjson2.JSONException, var706=$r55, var3260=$r54, var2086=$r38, var3940=java.lang.Object, var2085=$r39, var3663=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3413, r15=var2879, r7=var2009, com.alibaba.fastjson2.writer.ObjectWriterProvider=var827, r16=var3297, com.alibaba.fastjson2.codec.BeanInfo=var328, r21=var792, java.util.List=var3006, r5=var3719, l3=var1059, com.alibaba.fastjson2.internal.asm.ClassWriter=var3740, $r49=var2286, java.util.function.Function=var2401, null=var276, null_type=var2748, $r50=var3595, $r3=var505, java.util.concurrent.atomic.AtomicLong=var2930, $r2=var124, $l0=var1185, $r4=var751, $r6=var1028, $i1=var2926, $r12=var3682, $r41=var35, $r13=var3437, $r33=var3053, $r14=var1937, java.lang.Package=var2460, $r34=var1773, r45=var1520, r44=var1753, $i2=var3229, com.alibaba.fastjson2.internal.asm.ASMUtils=var223, r46=var2279, $r47=var2817, 52=var2502, 49=var2993, com.alibaba.fastjson2.JSONWriter$Feature=var143, $r48=var3194, $l14=var2309, $l15=var1254, $b16=var1579, "write"=var443, "writeArrayMapping"=var24, $r27=var2794, com.alibaba.fastjson2.util.DynamicClassLoader=var957, $r17=var3098, $i4=var3283, $r28=var1136, java.lang.Throwable=var2126, $r35=var2005, com.alibaba.fastjson2.JSONException=var2367, $r55=var706, $r54=var3260, $r38=var2086, java.lang.Object=var3940, $r39=var2085, $r40=var3663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10