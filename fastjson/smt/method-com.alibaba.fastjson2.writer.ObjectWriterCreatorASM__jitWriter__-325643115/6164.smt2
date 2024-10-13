(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var498 0)
(declare-sort var3845 0)
(declare-sort var2083 0)
(declare-sort var2062 0)
(declare-sort var1760 0)
(declare-sort var1126 0)
(declare-sort var3761 0)
(declare-sort var2996 0)
(declare-sort var532 0)
(declare-sort var1007 0)
(declare-sort var1654 0)
(declare-sort var1572 0)
(declare-sort var1794 0)
(declare-sort var2719 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var498!class ClassObject)
(declare-fun var1760-init () var1760)
(declare-fun <init>/1561585841 (var1760 var1126) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun incrementAndGet/636047358 (var2996) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun var2062_size/-959786421 (var2062) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getPackage/-1841711535 (ClassObject) var532)
(declare-fun visit/1245821975 (var1760 Int Int String String (Array Int String)) void)
(declare-fun genFields/-1901790442 (var498 var2062 var1760 String) void)
(declare-fun genMethodInit/736566045 (var498 var2062 var1760 String String) void)
(declare-fun genMethodWriteJSONB/-809205014 (var498 var3845 ClassObject var2062 var1760 String Int) void)
(declare-fun mask/-2077367092 (var1654) Int)
(declare-fun genMethodWriteArrayMapping/749331648 (var498 var3845 String ClassObject Int var2062 var1760 String) void)
(declare-fun genMethodWriteArrayMappingJSONB/3756667 (var498 var3845 ClassObject Int var2062 var1760 String Int) void)
(declare-fun toByteArray/1561254549 (var1760) (Array Int Int))
(declare-fun classLoader/1229018461 (var498) var1572)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun defineClassPublic/-885393557 (var1572 String (Array Int Int) Int Int) ClassObject)
(declare-fun var2719-init () var2719)
(declare-fun append/-1031950772 (String var2394) String)
(declare-fun cast-from-ClassObject-to-var2394 (ClassObject) var2394)
(declare-fun <init>/-743866570 (var2719 String var1794) void)
(declare-const null-var498 var498)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3845 var3845)
(declare-const null-var2083 var2083)
(declare-const null-var2062 var2062)
(declare-const null-Int Int)
(declare-const null-NullType var3761)
(declare-const null-var1126 var1126)
(declare-const var498-seed var2996)
(declare-const null-var532 var532)
(declare-const var1007-TYPE_OBJECT_WRITER_5 String)
(declare-const var498-INTERFACES (Array Int String))
(declare-const var1654-BeanToArray var1654)
(declare-const null-var1794 var1794)
(declare-const var2711 var498) ; Statement: r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2711 null-var498)))
(declare-const var132 ClassObject) ; Statement: r7 := @parameter0: java.lang.Class 
(assert (not (= var132 null-ClassObject)))
(declare-const var2857 var3845) ; Statement: r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var2857 null-var3845)))
(declare-const var2321 var2083) ; Statement: r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo 
(assert (not (= var2321 null-var2083)))
(declare-const var2251 var2062) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var2251 null-var2062)))
(declare-const var424 Int) ; Statement: l3 := @parameter4: long 
(assert (not (= var424 null-Int)))
(define-const var3431 var1760 var1760-init) ; Statement: $r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert true)
;(assert (<init>/1561585841 var3431 null-var1126)) ; Statement: specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null) 

(declare-const var3431!1 var1760)
(declare-const var3697 var3761)
(define-const var887 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var887)) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>()>() 
(declare-const var887!1 String)
(assert (= var887!1 ""))
(assert true)
(define-const var2296 String (append/672562846 var887!1 "OWG_")) ; Statement: $r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_") 
(declare-const var887!2 String)
(assert (= var887!2 (str.++ var887!1 "OWG_")))
(define-const var2156 var2996 var498-seed) ; Statement: $r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed> 
(assert true)
(define-const var3360 Int (incrementAndGet/636047358 var2156)) ; Statement: $l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>() 
(assert true)
(define-const var3832 String (append/-901862667 var2296 var3360)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2296!1 String)
(assert (str.prefixof var2296 var2296!1))
(assert true)
(define-const var633 String (append/672562846 var3832 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3832!1 String)
(assert (= var3832!1 (str.++ var3832 "_")))
(define-const var3763 Int (var2062_size/-959786421 var2251)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(assert true)
(define-const var3251 String (append/-1001720160 var633 var3763)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var633!1 String)
(assert (str.prefixof var633 var633!1))
 ; Statement: if r7 != null goto $r51 = new java.lang.StringBuilder 
(assert (not (not (= var132 null-ClassObject)))) ; Negate: Cond: r7 != null  
(define-const var537 String "") ; Statement: $r41 = "" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)] 
(assert true) ; Non Conditional
(assert true)
(define-const var217 String (append/672562846 var3251 var537)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41) 
(declare-const var3251!1 String)
(assert (= var3251!1 (str.++ var3251 var537)))
(assert true)
(define-const var2751 String (toString/-2075883882 var217)) ; Statement: $r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2402 ClassObject var498!class) ; Statement: $r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;" 
(assert true)
(define-const var3652 var532 (getPackage/-1841711535 var2402)) ; Statement: $r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>() 
 ; Statement: if $r34 == null goto r45 = $r33 
(assert (= var3652 null-var532)) ; Cond: $r34 == null 
(define-const var1375 String var2751) ; Statement: r45 = $r33 
(define-const var2093 String var2751) ; Statement: r44 = $r33 
(assert true) ; Non Conditional
(define-const var3911 Int (var2062_size/-959786421 var2251)) ; Statement: $i2 = interfaceinvoke r5.<java.util.List: int size()>() 
 ; Statement: tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; } 
(assert (and (= var3911 5) (and (not (= var3911 4)) (and (not (= var3911 3)) (and (not (= var3911 2)) (and (not (= var3911 1)) true)))))) ; Intersect: Cond: $i2 == 5  and Intersect: Negate: Cond: $i2 == 4   and Intersect: Negate: Cond: $i2 == 3   and Intersect: Negate: Cond: $i2 == 2   and Intersect: Negate: Cond: $i2 == 1   and Non Conditional     
(define-const var1531 String var1007-TYPE_OBJECT_WRITER_5) ; Statement: r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5> 
 ; Statement: goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>] 
(assert true) ; Non Conditional
(define-const var1738 (Array Int String) var498-INTERFACES) ; Statement: $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES> 
(assert true)
;(assert (visit/1245821975 var3431!1 52 49 var1375 var1531 var1738)) ; Statement: virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47) 

(declare-const var3431!2 var1760)
(declare-const var917 Int)
(declare-const var3422 Int)
(declare-const var1375!1 String)
(declare-const var1531!1 String)
(declare-const var1738!1 (Array Int String))
(assert true)
;(assert (genFields/-1901790442 var2711 var2251 var3431!2 var1531!1)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46) 

(declare-const var2711!1 var498)
(declare-const var2251!1 var2062)
(declare-const var3431!3 var1760)
(declare-const var1531!2 String)
(assert true)
;(assert (genMethodInit/736566045 var2711!1 var2251!1 var3431!3 var1375!1 var1531!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46) 

(declare-const var2711!2 var498)
(declare-const var2251!2 var2062)
(declare-const var3431!4 var1760)
(declare-const var1375!2 String)
(declare-const var1531!3 String)
(assert true)
;(assert (genMethodWriteJSONB/-809205014 var2711!2 var2857 var132 var2251!2 var3431!4 var1375!2 var424)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 

(declare-const var2711!3 var498)
(declare-const var2857!1 var3845)
(declare-const var132!1 ClassObject)
(declare-const var2251!3 var2062)
(declare-const var3431!5 var1760)
(declare-const var1375!3 String)
(declare-const var424!1 Int)
(define-const var1232 var1654 var1654-BeanToArray) ; Statement: $r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray> 
(define-const var1786 Int (mask/-2077367092 var1232)) ; Statement: $l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask> 
(define-const var2524 Int (bv2nat (bvand ((_ int2bv 64) var424!1) ((_ int2bv 64) var1786)))) ; Statement: $l15 = l3 & $l14 
(define-const var1737 Int (ite (> var2524 0) 1 (ite (< var2524 0) (- 1) 0))) ; Statement: $b16 = $l15 cmp 0L 
 ; Statement: if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3) 
(assert (not (= var1737 0))) ; Negate: Cond: $b16 == 0  
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2711!3 var2857!1 "write" var132!1 var424!1 var2251!3 var3431!5 var1375!3)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45) 

(declare-const var2711!4 var498)
(declare-const var2857!2 var3845)
(declare-const var3212 String)
(declare-const var132!2 ClassObject)
(declare-const var424!2 Int)
(declare-const var2251!4 var2062)
(declare-const var3431!6 var1760)
(declare-const var1375!4 String)
 ; Statement: goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (genMethodWriteArrayMappingJSONB/3756667 var2711!4 var2857!2 var132!2 var424!2 var2251!4 var3431!6 var1375!4 var424!2)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3) 

(declare-const var2711!5 var498)
(declare-const var2857!3 var3845)
(declare-const var132!3 ClassObject)
(declare-const var424!3 Int)
(declare-const var2251!5 var2062)
(declare-const var3431!7 var1760)
(declare-const var1375!5 String)
(declare-const var424!4 Int)
(assert true)
;(assert (genMethodWriteArrayMapping/749331648 var2711!5 var2857!3 "writeArrayMapping" var132!3 var424!4 var2251!5 var3431!7 var1375!5)) ; Statement: specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45) 

(declare-const var2711!6 var498)
(declare-const var2857!4 var3845)
(declare-const var1182 String)
(declare-const var132!4 ClassObject)
(declare-const var424!5 Int)
(declare-const var2251!6 var2062)
(declare-const var3431!8 var1760)
(declare-const var1375!6 String)
(assert true)
(define-const var2274 (Array Int Int) (toByteArray/1561254549 var3431!8)) ; Statement: $r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>() 
(define-const var86 var1572 (classLoader/1229018461 var2711!6)) ; Statement: $r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader> 
(define-const var3045 Int (getLength-Arr-Int-1 var2274)) ; Statement: $i4 = lengthof $r27 
(assert true)
(define-const var721 ClassObject (defineClassPublic/-885393557 var86 var2093 var2274 0 var3045)) ; Statement: $r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2236 var1794) ; Statement: $r35 := @caughtexception 
(assert (not (= var2236 null-var1794)))
(define-const var3849 var2719 var2719-init) ; Statement: $r55 = new com.alibaba.fastjson2.JSONException 
(define-const var3914 String String-init) ; Statement: $r54 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3914)) ; Statement: specialinvoke $r54.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3914!1 String)
(assert (= var3914!1 ""))
(assert true)
(define-const var2607 String (append/672562846 var3914!1 "create objectWriter error, objectType ")) ; Statement: $r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ") 
(declare-const var3914!2 String)
(assert (= var3914!2 (str.++ var3914!1 "create objectWriter error, objectType ")))
(assert true)
(define-const var3497 String (append/-1031950772 var2607 (cast-from-ClassObject-to-var2394 var132!4))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var2607!1 String)
(assert (str.prefixof var2607 var2607!1))
(assert true)
(define-const var2237 String (toString/-2075883882 var3497)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3849 var2237 var2236)) ; Statement: specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35) 

(declare-const var3849!1 var2719)
(declare-const var2237!1 String)
(declare-const var2236!1 var1794)
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var1760-init=([], com.alibaba.fastjson2.internal.asm.ClassWriter), <init>/1561585841=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.util.function.Function], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), incrementAndGet/636047358=([java.util.concurrent.atomic.AtomicLong], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), var2062_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getPackage/-1841711535=([java.lang.Class], java.lang.Package), visit/1245821975=([com.alibaba.fastjson2.internal.asm.ClassWriter, int, int, java.lang.String, java.lang.String, java.lang.String[]], void), genFields/-1901790442=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodInit/736566045=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, java.lang.String], void), genMethodWriteJSONB/-809205014=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), mask/-2077367092=([com.alibaba.fastjson2.JSONWriter$Feature], long), genMethodWriteArrayMapping/749331648=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.String, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], void), genMethodWriteArrayMappingJSONB/3756667=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, long, java.util.List, com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String, long], void), toByteArray/1561254549=([com.alibaba.fastjson2.internal.asm.ClassWriter], byte[]), classLoader/1229018461=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM], com.alibaba.fastjson2.util.DynamicClassLoader), getLength-Arr-Int-1=([byte[]], int), defineClassPublic/-885393557=([com.alibaba.fastjson2.util.DynamicClassLoader, java.lang.String, byte[], int, int], java.lang.Class), var2719-init=([], com.alibaba.fastjson2.JSONException), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2394=([java.lang.Class], java.lang.Object), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void)}
; {var498=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2711=r15, var132=r7, var3845=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2857=r16, var2083=com.alibaba.fastjson2.codec.BeanInfo, var2321=r21, var2062=java.util.List, var2251=r5, var424=l3, var1760=com.alibaba.fastjson2.internal.asm.ClassWriter, var3431=$r49, var1126=java.util.function.Function, var3697=null, var3761=null_type, var887=$r50, var2296=$r3, var2996=java.util.concurrent.atomic.AtomicLong, var2156=$r2, var3360=$l0, var3832=$r4, var633=$r6, var3763=$i1, var3251=$r12, var537=$r41, var217=$r13, var2751=$r33, var2402=$r14, var532=java.lang.Package, var3652=$r34, var1375=r45, var2093=r44, var3911=$i2, var1007=com.alibaba.fastjson2.internal.asm.ASMUtils, var1531=r46, var1738=$r47, var917=52, var3422=49, var1654=com.alibaba.fastjson2.JSONWriter$Feature, var1232=$r48, var1786=$l14, var2524=$l15, var1737=$b16, var3212="write", var1182="writeArrayMapping", var2274=$r27, var1572=com.alibaba.fastjson2.util.DynamicClassLoader, var86=$r17, var3045=$i4, var721=$r28, var1794=java.lang.Throwable, var2236=$r35, var2719=com.alibaba.fastjson2.JSONException, var3849=$r55, var3914=$r54, var2607=$r38, var2394=java.lang.Object, var3497=$r39, var2237=$r40}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var498, r15=var2711, r7=var132, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3845, r16=var2857, com.alibaba.fastjson2.codec.BeanInfo=var2083, r21=var2321, java.util.List=var2062, r5=var2251, l3=var424, com.alibaba.fastjson2.internal.asm.ClassWriter=var1760, $r49=var3431, java.util.function.Function=var1126, null=var3697, null_type=var3761, $r50=var887, $r3=var2296, java.util.concurrent.atomic.AtomicLong=var2996, $r2=var2156, $l0=var3360, $r4=var3832, $r6=var633, $i1=var3763, $r12=var3251, $r41=var537, $r13=var217, $r33=var2751, $r14=var2402, java.lang.Package=var532, $r34=var3652, r45=var1375, r44=var2093, $i2=var3911, com.alibaba.fastjson2.internal.asm.ASMUtils=var1007, r46=var1531, $r47=var1738, 52=var917, 49=var3422, com.alibaba.fastjson2.JSONWriter$Feature=var1654, $r48=var1232, $l14=var1786, $l15=var2524, $b16=var1737, "write"=var3212, "writeArrayMapping"=var1182, $r27=var2274, com.alibaba.fastjson2.util.DynamicClassLoader=var1572, $r17=var86, $i4=var3045, $r28=var721, java.lang.Throwable=var1794, $r35=var2236, com.alibaba.fastjson2.JSONException=var2719, $r55=var3849, $r54=var3914, $r38=var2607, java.lang.Object=var2394, $r39=var3497, $r40=var2237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r15 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r7 := @parameter0: java.lang.Class;	r16 := @parameter1: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r21 := @parameter2: com.alibaba.fastjson2.codec.BeanInfo;	r5 := @parameter3: java.util.List;	l3 := @parameter4: long;	$r49 = new com.alibaba.fastjson2.internal.asm.ClassWriter;	specialinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void <init>(java.util.function.Function)>(null);	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("OWG_");	$r2 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.util.concurrent.atomic.AtomicLong seed>;	$l0 = virtualinvoke $r2.<java.util.concurrent.atomic.AtomicLong: long incrementAndGet()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r12 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	if r7 != null goto $r51 = new java.lang.StringBuilder;	$r41 = "";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r41);	$r33 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = class "Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;";	$r34 = virtualinvoke $r14.<java.lang.Class: java.lang.Package getPackage()>();	if $r34 == null goto r45 = $r33;	r45 = $r33;	r44 = $r33;	$i2 = interfaceinvoke r5.<java.util.List: int size()>();	tableswitch($i2) {     case 1: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_1>;     case 2: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_2>;     case 3: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_3>;     case 4: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_4>;     case 5: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;     case 6: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_6>;     case 7: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_7>;     case 8: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_8>;     case 9: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_9>;     case 10: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_10>;     case 11: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_11>;     case 12: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_12>;     default: goto r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_ADAPTER>; };	r46 = <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String TYPE_OBJECT_WRITER_5>;	goto [?= $r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>];	$r47 = <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: java.lang.String[] INTERFACES>;	virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: void visit(int,int,java.lang.String,java.lang.String,java.lang.String[])>(52, 49, r45, r46, $r47);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genFields(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r5, $r49, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodInit(java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,java.lang.String)>(r5, $r49, r45, r46);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	$r48 = <com.alibaba.fastjson2.JSONWriter$Feature: com.alibaba.fastjson2.JSONWriter$Feature BeanToArray>;	$l14 = $r48.<com.alibaba.fastjson2.JSONWriter$Feature: long mask>;	$l15 = l3 & $l14;	$b16 = $l15 cmp 0L;	if $b16 == 0 goto specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWrite(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "write", r7, l3, r5, $r49, r45);	goto [?= specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3)];	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMappingJSONB(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String,long)>(r16, r7, l3, r5, $r49, r45, l3);	specialinvoke r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genMethodWriteArrayMapping(com.alibaba.fastjson2.writer.ObjectWriterProvider,java.lang.String,java.lang.Class,long,java.util.List,com.alibaba.fastjson2.internal.asm.ClassWriter,java.lang.String)>(r16, "writeArrayMapping", r7, l3, r5, $r49, r45);	$r27 = virtualinvoke $r49.<com.alibaba.fastjson2.internal.asm.ClassWriter: byte[] toByteArray()>();	$r17 = r15.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: com.alibaba.fastjson2.util.DynamicClassLoader classLoader>;	$i4 = lengthof $r27;	$r28 = virtualinvoke $r17.<com.alibaba.fastjson2.util.DynamicClassLoader: java.lang.Class defineClassPublic(java.lang.String,byte[],int,int)>(r44, $r27, 0, $i4);	$r35 := @caughtexception;	$r55 = new com.alibaba.fastjson2.JSONException;	$r54 = new java.lang.StringBuilder;	specialinvoke $r54.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create objectWriter error, objectType ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r55.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r35);	throw $r55
;block_num 10