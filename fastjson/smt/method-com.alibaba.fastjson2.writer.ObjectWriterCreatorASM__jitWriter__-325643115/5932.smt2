(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1046 0)
(declare-sort var3395 0)
(declare-sort var1250 0)
(declare-sort var2419 0)
(declare-sort var1216 0)
(declare-sort var545 0)
(declare-sort var3380 0)
(declare-sort var1005 0)
(declare-sort var726 0)
(declare-sort var901 0)
(declare-sort var1158 0)
(declare-sort var1628 0)
(declare-sort var3913 0)
(declare-sort var1407 0)
(declare-sort var3800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1046!class ClassObject)
(declare-fun var1216-init () var1216)
(declare-fun <init>/1561585841 (var1216 var545) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var1005) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2419_size/-959786421 (var2419) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var726)
(declare-fun visit/1245821975 (var1216 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var1046 var2419 var1216 String) void)
(declare-fun genMethodInit/736566045 (var1046 var2419 var1216 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var1046 var3395 ClassObject var2419 var1216 String Int) void)
(declare-fun mask/-2077367092 (var1158) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var1046 var3395 String ClassObject Int var2419 var1216 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var1046 var3395 ClassObject Int var2419 var1216 String Int) void)
(declare-fun toByteArray/1561254549 (var1216) (Array Int Int))
(declare-fun classLoader/1229018461 (var1046) var1628)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1628 String (Array Int Int) Int Int) ClassObject)
(declare-fun var1407-init () var1407)
(declare-fun append/-1031950772 (String var3800) String)
(declare-fun cast-from-ClassObject-to-var3800 (ClassObject) var3800)
(declare-fun <init>/-743866570 (var1407 String var3913) void)
(declare-const null-var1046 var1046)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3395 var3395)
(declare-const null-var1250 var1250)
(declare-const null-var2419 var2419)
(declare-const null-Int Int)
(declare-const null-NullType var3380)
(declare-const null-var545 var545)
(declare-const var1046-seed var1005)
(declare-const null-var726 var726)
(declare-const var901-TYPE_OBJECT_WRITER_3 String)
(declare-const var1046-INTERFACES (Array Int String))
(declare-const var1158-BeanToArray var1158)
(declare-const null-var3913 var3913)
(declare-const var2239 var1046) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2239 null-var1046)))
(declare-const var2478 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var2478 null-ClassObject)))
(declare-const var2701 var3395) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2701 null-var3395)))
(declare-const var2552 var1250) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2552 null-var1250)))
(declare-const var2300 var2419) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2300 null-var2419)))
(declare-const var2579 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var2579 null-Int)))
(define-const var2709 var1216 var1216-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var2709 null-var545)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var2709!1 var1216)
(declare-const var3139 var3380)
(define-const var894 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var894)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var894!1 String)
(assert (= var894!1 ""))
(assert true)
(define-const var1412 String (append/672562846 var894!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var894!2 String)
(assert (= var894!2 (str.++ var894!1 "OWG_")))
(define-const var3503 var1005 var1046-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var2979 Int (incrementAndGet/636047358 var3503)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var2524 String (append/-901862667 var1412 var2979)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1412!1 String)
(assert (str.prefixof var1412 var1412!1))
(assert true)
(define-const var720 String (append/672562846 var2524 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2524!1 String)
(assert (= var2524!1 (str.++ var2524 "_")))
(define-const var3669 Int (var2419_size/-959786421 var2300)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var2743 String (append/-1001720160 var720 var3669)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var720!1 String)
(assert (str.prefixof var720 var720!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var2478 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var716 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var865 String (append/672562846 var2743 var716)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var2743!1 String)
(assert (= var2743!1 (str.++ var2743 var716)))
(assert true)
(define-const var327 String (toString/-2075883882 var865)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var807 ClassObject var1046!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var2652 var726 (getPackage/-1841711535 var807)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var2652 null-var726)) ; Cond: $r34 == null 
(define-const var1112 String var327) ; Statement: r45 = $r33 
(define-const var145 String var327) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var1173 Int (var2419_size/-959786421 var2300)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var1173 3) (and (not (= var1173 2)) (and (not (= var1173 1)) true)))) ; Intersect: Cond: $i2 == 3  and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional   
(define-const var2453 String var901-TYPE_OBJECT_WRITER_3) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var2074 (Array Int String) var1046-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var2709!1 52 49 var1112 var2453 var2074)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var2709!2 var1216)
(declare-const var1394 Int)
(declare-const var1583 Int)
(declare-const var1112!1 String)
(declare-const var2453!1 String)
(declare-const var2074!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2239 var2300 var2709!2 var2453!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2239!1 var1046)
(declare-const var2300!1 var2419)
(declare-const var2709!3 var1216)
(declare-const var2453!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2239!1 var2300!1 var2709!3 var1112!1 var2453!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2239!2 var1046)
(declare-const var2300!2 var2419)
(declare-const var2709!4 var1216)
(declare-const var1112!2 String)
(declare-const var2453!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2239!2 var2701 var2478 var2300!2 var2709!4 var1112!2 var2579)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2239!3 var1046)
(declare-const var2701!1 var3395)
(declare-const var2478!1 ClassObject)
(declare-const var2300!3 var2419)
(declare-const var2709!5 var1216)
(declare-const var1112!3 String)
(declare-const var2579!1 Int)
(define-const var1053 var1158 var1158-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1190 Int (mask/-2077367092 var1053)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var1007 Int (bv2nat (bvand ((_ int2bv 64) var2579!1) ((_ int2bv 64) var1190)))) ; Statement: $l15 = l3 & $l14 
(define-const var701 Int (ite (> var1007 0) 1 (ite (< var1007 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var701 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2239!3 var2701!1 "write" var2478!1 var2579!1 var2300!3 var2709!5 var1112!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2239!4 var1046)
(declare-const var2701!2 var3395)
(declare-const var1157 String)
(declare-const var2478!2 ClassObject)
(declare-const var2579!2 Int)
(declare-const var2300!4 var2419)
(declare-const var2709!6 var1216)
(declare-const var1112!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2239!4 var2701!2 var2478!2 var2579!2 var2300!4 var2709!6 var1112!4 var2579!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2239!5 var1046)
(declare-const var2701!3 var3395)
(declare-const var2478!3 ClassObject)
(declare-const var2579!3 Int)
(declare-const var2300!5 var2419)
(declare-const var2709!7 var1216)
(declare-const var1112!5 String)
(declare-const var2579!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2239!5 var2701!3 "writeArrayMapping" var2478!3 var2579!4 var2300!5 var2709!7 var1112!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2239!6 var1046)
(declare-const var2701!4 var3395)
(declare-const var1174 String)
(declare-const var2478!4 ClassObject)
(declare-const var2579!5 Int)
(declare-const var2300!6 var2419)
(declare-const var2709!8 var1216)
(declare-const var1112!6 String)
(assert true)
(define-const var759 (Array Int Int) (toByteArray/1561254549 var2709!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var3624 var1628 (classLoader/1229018461 var2239!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var2159 Int (getLength-Arr-Int-1 var759)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var3647 ClassObject (defineClassPublic/-885393557 var3624 var145 var759 0 var2159)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3471 var3913) ; Statement: $r35 := @caughtexception 
(assert (not (= var3471 null-var3913)))
(define-const var3755 var1407 var1407-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var662 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var662)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var662!1 String)
(assert (= var662!1 ""))
(assert true)
(define-const var1692 String (append/672562846 var662!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var662!2 String)
(assert (= var662!2 (str.++ var662!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var1125 String (append/-1031950772 var1692 (cast-from-ClassObject-to-var3800 var2478!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1692!1 String)
(assert (str.prefixof var1692 var1692!1))
(assert true)
(define-const var2619 String (toString/-2075883882 var1125)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3755 var2619 var3471)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3755!1 var1407)
(declare-const var2619!1 String)
(declare-const var3471!1 var3913)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1216-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2419_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var1407-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3800=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var1046=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2239=r15, var2478=r7, var3395=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2701=r16, var1250=com.alibaba.fastjson2.codec.BeanInfo, var2552=r21, var2419=java.util.List, var2300=r5, var2579=l3, var1216=com.alibaba.fastjson2.internal.asm.ClassWriter, var2709=$r49, var545=java.util.function.Function, var3139=null, var3380=null_type, var894=$r50, var1412=$r3, var1005=java.util.concurrent.atomic.AtomicLong, var3503=$r2, var2979=$l0, var2524=$r4, var720=$r6, var3669=$i1, var2743=$r12, var716=$r41, var865=$r13, var327=$r33, var807=$r14, var726=java.lang.Package, var2652=$r34, var1112=r45, var145=r44, var1173=$i2, var901=com.alibaba.fastjson2.internal.asm.ASMUtils, var2453=r46, var2074=$r47, var1394=52, var1583=49, var1158=com.alibaba.fastjson2.JSONWriter$Feature, var1053=$r48, var1190=$l14, var1007=$l15, var701=$b16, var1157="write", var1174="writeArrayMapping", var759=$r27, var1628=com.alibaba.fastjson2.util.DynamicClassLoader, var3624=$r17, var2159=$i4, var3647=$r28, var3913=java.lang.Throwable, var3471=$r35, var1407=com.alibaba.fastjson2.JSONException, var3755=$r55, var662=$r54, var1692=$r38, var3800=java.lang.Object, var1125=$r39, var2619=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1046, r15=var2239, r7=var2478, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3395, r16=var2701, com.alibaba.fastjson2.codec.BeanInfo=var1250, r21=var2552, java.util.List=var2419, r5=var2300, l3=var2579, com.alibaba.fastjson2.internal.asm.ClassWriter=var1216, $r49=var2709, java.util.function.Function=var545, null=var3139, null_type=var3380, $r50=var894, $r3=var1412, java.util.concurrent.atomic.AtomicLong=var1005, $r2=var3503, $l0=var2979, $r4=var2524, $r6=var720, $i1=var3669, $r12=var2743, $r41=var716, $r13=var865, $r33=var327, $r14=var807, java.lang.Package=var726, $r34=var2652, r45=var1112, r44=var145, $i2=var1173, com.alibaba.fastjson2.internal.asm.ASMUtils=var901, r46=var2453, $r47=var2074, 52=var1394, 49=var1583, com.alibaba.fastjson2.JSONWriter$Feature=var1158, $r48=var1053, $l14=var1190, $l15=var1007, $b16=var701, "write"=var1157, "writeArrayMapping"=var1174, $r27=var759, com.alibaba.fastjson2.util.DynamicClassLoader=var1628, $r17=var3624, $i4=var2159, $r28=var3647, java.lang.Throwable=var3913, $r35=var3471, com.alibaba.fastjson2.JSONException=var1407, $r55=var3755, $r54=var662, $r38=var1692, java.lang.Object=var3800, $r39=var1125, $r40=var2619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10