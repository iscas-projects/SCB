(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1255 0)
(declare-sort var3886 0)
(declare-sort var2626 0)
(declare-sort var3485 0)
(declare-sort var3417 0)
(declare-sort var3960 0)
(declare-sort var2212 0)
(declare-sort var1838 0)
(declare-sort var2243 0)
(declare-sort var2981 0)
(declare-sort var3156 0)
(declare-sort var139 0)
(declare-sort var1696 0)
(declare-sort var2830 0)
(declare-sort var830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1255!class ClassObject)
(declare-fun var3417-init () var3417)
(declare-fun <init>/1561585841 (var3417 var3960) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1838) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var3485_size/-959786421 (var3485) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var2243)
(declare-fun visit/1245821975 (var3417 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1255 var3485 var3417 String) void)
(declare-fun genMethodInit/736566045 (var1255 var3485 var3417 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1255 var3886 ClassObject var3485 var3417 String Int) void)
(declare-fun mask/-2077367092 (var3156) Int)
(declare-fun genMethodWrite/551741206 (var1255 var3886 ClassObject var3485 var3417 String Int) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1255 var3886 ClassObject Int var3485 var3417 String Int) void)
(declare-fun genMethodWriteArrayMapping/749331648 (var1255 var3886 String ClassObject Int var3485 var3417 String) void)
(declare-fun toByteArray/1561254549 (var3417) (Array Int Int))
(declare-fun classLoader/1229018461 (var1255) var139)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var139 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2830-init () var2830)
(declare-fun append/-1031950772 (String var830) String)
(declare-fun cast-from-ClassObject-to-var830 (ClassObject) var830)
(declare-fun <init>/-743866570 (var2830 String var1696) void)
(declare-const null-var1255 var1255)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3886 var3886)
(declare-const null-var2626 var2626)
(declare-const null-var3485 var3485)
(declare-const null-Int Int)
(declare-const null-NullType var2212)
(declare-const null-var3960 var3960)
(declare-const var1255-seed var1838)
(declare-const null-var2243 var2243)
(declare-const var2981-TYPE_OBJECT_WRITER_1 String)
(declare-const var1255-INTERFACES (Array Int String))
(declare-const var3156-BeanToArray var3156)
(declare-const null-var1696 var1696)
(declare-const var549 var1255) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var549 null-var1255)))
(declare-const var1789 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var1789 null-ClassObject)))
(declare-const var2751 var3886) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2751 null-var3886)))
(declare-const var3150 var2626) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var3150 null-var2626)))
(declare-const var3664 var3485) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var3664 null-var3485)))
(declare-const var3282 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var3282 null-Int)))
(define-const var3337 var3417 var3417-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3337 null-var3960)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3337!1 var3417)
(declare-const var38 var2212)
(define-const var3530 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3530)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3530!1 String)
(assert (= var3530!1 ""))
(assert true)
(define-const var47 String (append/672562846 var3530!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var3530!2 String)
(assert (= var3530!2 (str.++ var3530!1 "OWG_")))
(define-const var2795 var1838 var1255-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var569 Int (incrementAndGet/636047358 var2795)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2312 String (append/-901862667 var47 var569)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var47!1 String)
(assert (str.prefixof var47 var47!1))
(assert true)
(define-const var3736 String (append/672562846 var2312 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 "_")))
(define-const var3411 Int (var3485_size/-959786421 var3664)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var1965 String (append/-1001720160 var3736 var3411)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3736!1 String)
(assert (str.prefixof var3736 var3736!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var1789 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var2305 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3531 String (append/672562846 var1965 var2305)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var1965!1 String)
(assert (= var1965!1 (str.++ var1965 var2305)))
(assert true)
(define-const var2398 String (toString/-2075883882 var3531)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var898 ClassObject var1255!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2597 var2243 (getPackage/-1841711535 var898)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2597 null-var2243)) ; Cond: $r34 == null 
(define-const var2049 String var2398) ; Statement: r45 = $r33 
(define-const var2311 String var2398) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1628 Int (var3485_size/-959786421 var3664)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1628 1) true)) ; Intersect: Cond: $i2 == 1  and Non Conditional 
(define-const var1509 String var2981-TYPE_OBJECT_WRITER_1) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1614 (Array Int String) var1255-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3337!1 52 49 var2049 var1509 var1614)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3337!2 var3417)
(declare-const var1150 Int)
(declare-const var416 Int)
(declare-const var2049!1 String)
(declare-const var1509!1 String)
(declare-const var1614!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var549 var3664 var3337!2 var1509!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var549!1 var1255)
(declare-const var3664!1 var3485)
(declare-const var3337!3 var3417)
(declare-const var1509!2 String)
(assert true)
;(assert (genMethodInit/736566045 var549!1 var3664!1 var3337!3 var2049!1 var1509!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var549!2 var1255)
(declare-const var3664!2 var3485)
(declare-const var3337!4 var3417)
(declare-const var2049!2 String)
(declare-const var1509!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var549!2 var2751 var1789 var3664!2 var3337!4 var2049!2 var3282)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var549!3 var1255)
(declare-const var2751!1 var3886)
(declare-const var1789!1 ClassObject)
(declare-const var3664!3 var3485)
(declare-const var3337!5 var3417)
(declare-const var2049!3 String)
(declare-const var3282!1 Int)
(define-const var1134 var3156 var3156-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1411 Int (mask/-2077367092 var1134)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var3184 Int (bv2nat (bvand ((_ int2bv 64) var3282!1) ((_ int2bv 64) var1411)))) ; Statement: $l15 = l3 & $l14 
(define-const var3630 Int (ite (> var3184 0) 1 (ite (< var3184 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (= var3630 0)) ; Cond: $b16 == 0 
(assert true)
;(assert (genMethodWrite/551741206 var549!3 var2751!1 var1789!1 var3664!3 var3337!5 var2049!3 var3282!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var549!4 var1255)
(declare-const var2751!2 var3886)
(declare-const var1789!2 ClassObject)
(declare-const var3664!4 var3485)
(declare-const var3337!6 var3417)
(declare-const var2049!4 String)
(declare-const var3282!2 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var549!4 var2751!2 var1789!2 var3282!2 var3664!4 var3337!6 var2049!4 var3282!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var549!5 var1255)
(declare-const var2751!3 var3886)
(declare-const var1789!3 ClassObject)
(declare-const var3282!3 Int)
(declare-const var3664!5 var3485)
(declare-const var3337!7 var3417)
(declare-const var2049!5 String)
(declare-const var3282!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var549!5 var2751!3 "writeArrayMapping" var1789!3 var3282!4 var3664!5 var3337!7 var2049!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var549!6 var1255)
(declare-const var2751!4 var3886)
(declare-const var2794 String)
(declare-const var1789!4 ClassObject)
(declare-const var3282!5 Int)
(declare-const var3664!6 var3485)
(declare-const var3337!8 var3417)
(declare-const var2049!6 String)
(assert true)
(define-const var2221 (Array Int Int) (toByteArray/1561254549 var3337!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3413 var139 (classLoader/1229018461 var549!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var1947 Int (getLength-Arr-Int-1 var2221)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var2607 ClassObject (defineClassPublic/-885393557 var3413 var2311 var2221 0 var1947)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3789 var1696) ; Statement: $r35 := @caughtexception 
(assert (not (= var3789 null-var1696)))
(define-const var2074 var2830 var2830-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var1225 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1225)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1225!1 String)
(assert (= var1225!1 ""))
(assert true)
(define-const var3066 String (append/672562846 var1225!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var1225!2 String)
(assert (= var1225!2 (str.++ var1225!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var2339 String (append/-1031950772 var3066 (cast-from-ClassObject-to-var830 var1789!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var3066!1 String)
(assert (str.prefixof var3066 var3066!1))
(assert true)
(define-const var3042 String (toString/-2075883882 var2339)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2074 var3042 var3789)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var2074!1 var2830)
(declare-const var3042!1 String)
(declare-const var3789!1 var1696)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var3417-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var3485_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWrite/551741206=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2830-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var830=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1255=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var549=r15, var1789=r7, var3886=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2751=r16, var2626=com.alibaba.fastjson2.codec.BeanInfo, var3150=r21, var3485=java.util.List, var3664=r5, var3282=l3, var3417=com.alibaba.fastjson2.internal.asm.ClassWriter, var3337=$r49, var3960=java.util.function.Function, var38=null, var2212=null_type, var3530=$r50, var47=$r3, var1838=java.util.concurrent.atomic.AtomicLong, var2795=$r2, var569=$l0, var2312=$r4, var3736=$r6, var3411=$i1, var1965=$r12, var2305=$r41, var3531=$r13, var2398=$r33, var898=$r14, var2243=java.lang.Package, var2597=$r34, var2049=r45, var2311=r44, var1628=$i2, var2981=com.alibaba.fastjson2.internal.asm.ASMUtils, var1509=r46, var1614=$r47, var1150=52, var416=49, var3156=com.alibaba.fastjson2.JSONWriter$Feature, var1134=$r48, var1411=$l14, var3184=$l15, var3630=$b16, var2794="writeArrayMapping", var2221=$r27, var139=com.alibaba.fastjson2.util.DynamicClassLoader, var3413=$r17, var1947=$i4, var2607=$r28, var1696=java.lang.Throwable, var3789=$r35, var2830=com.alibaba.fastjson2.JSONException, var2074=$r55, var1225=$r54, var3066=$r38, var830=java.lang.Object, var2339=$r39, var3042=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1255, r15=var549, r7=var1789, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3886, r16=var2751, com.alibaba.fastjson2.codec.BeanInfo=var2626, r21=var3150, java.util.List=var3485, r5=var3664, l3=var3282, com.alibaba.fastjson2.internal.asm.ClassWriter=var3417, $r49=var3337, java.util.function.Function=var3960, null=var38, null_type=var2212, $r50=var3530, $r3=var47, java.util.concurrent.atomic.AtomicLong=var1838, $r2=var2795, $l0=var569, $r4=var2312, $r6=var3736, $i1=var3411, $r12=var1965, $r41=var2305, $r13=var3531, $r33=var2398, $r14=var898, java.lang.Package=var2243, $r34=var2597, r45=var2049, r44=var2311, $i2=var1628, com.alibaba.fastjson2.internal.asm.ASMUtils=var2981, r46=var1509, $r47=var1614, 52=var1150, 49=var416, com.alibaba.fastjson2.JSONWriter$Feature=var3156, $r48=var1134, $l14=var1411, $l15=var3184, $b16=var3630, "writeArrayMapping"=var2794, $r27=var2221, com.alibaba.fastjson2.util.DynamicClassLoader=var139, $r17=var3413, $i4=var1947, $r28=var2607, java.lang.Throwable=var1696, $r35=var3789, com.alibaba.fastjson2.JSONException=var2830, $r55=var2074, $r54=var1225, $r38=var3066, java.lang.Object=var830, $r39=var2339, $r40=var3042}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10