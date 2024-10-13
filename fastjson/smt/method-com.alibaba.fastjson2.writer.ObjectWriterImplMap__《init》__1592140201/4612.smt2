(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var783 0)
(declare-sort var1371 0)
(declare-sort var1881 0)
(declare-sort var1861 0)
(declare-sort var3253 0)
(declare-sort var1095 0)
(declare-sort var911 0)
(declare-sort var2865 0)
(declare-sort var2738 0)
(declare-sort var2124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1696313286 (var1881) void)
(declare-fun cast-from-var783-to-var1881 (var783) var1881)
(declare-fun keyType/-754356434 (var783) ClassObject)
(declare-fun valueType/-754356434 (var783) ClassObject)
(declare-fun format/-754356434 (var783) String)
(declare-fun objectClass/-754356434 (var783) ClassObject)
(declare-fun objectType/-754356434 (var783) ClassObject)
(declare-fun features/-754356434 (var783) Int)
(declare-fun valueTypeRefDetect/-754356434 (var783) Bool)
(declare-fun var1861_getTypeName/1260098013 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun typeInfoUTF16/-754356434 (var783) (Array Int Int))
(declare-fun getBytes/-163691139 (String var3253) (Array Int Int))
(declare-fun typeInfoUTF8/-754356434 (var783) (Array Int Int))
(declare-fun jsonObject1/-754356434 (var783) Bool)
(declare-fun var911_toBytes/-815774109 (String) (Array Int Int))
(declare-fun jsonbTypeInfo/-754356434 (var783) (Array Int Int))
(declare-fun var2865_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-754356434 (var783) Int)
(declare-fun var2124_getDeclaredField/-2112930401 (ClassObject String) var2738)
(declare-fun jsonObject1InnerMap/-754356434 (var783) var2738)
(declare-fun jsonObject1InnerMapOffset/-754356434 (var783) Int)
(declare-const null-var783 var783)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1095-UTF_8 var3253)
(declare-const null-var2738 var2738)
(declare-const var3391 var783) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplMap 
(assert (not (= var3391 null-var783)))
(declare-const var3283 ClassObject) ; Statement: r1 := @parameter0: java.lang.reflect.Type 
(assert (not (= var3283 null-ClassObject)))
(declare-const var587 ClassObject) ; Statement: r2 := @parameter1: java.lang.reflect.Type 
(assert (not (= var587 null-ClassObject)))
(declare-const var271 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var271 null-String)))
(declare-const var1114 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var1114 null-ClassObject)))
(declare-const var1404 ClassObject) ; Statement: r5 := @parameter4: java.lang.reflect.Type 
(assert (not (= var1404 null-ClassObject)))
(declare-const var2760 Int) ; Statement: l0 := @parameter5: long 
(assert (not (= var2760 null-Int)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var783-to-var1881 var3391))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var3391!1 var783)
(declare-const var3391!2 var783)
(assert (not (= var3391!2 null-var783)))
(assert (= (keyType/-754356434 var3391!2) var3283)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type keyType> = r1 
(declare-const var3391!3 var783)
(assert (not (= var3391!3 null-var783)))
(assert (= (valueType/-754356434 var3391!3) var587)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type valueType> = r2 
(declare-const var3391!4 var783)
(assert (not (= var3391!4 null-var783)))
(assert (= (format/-754356434 var3391!4) var271)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.String format> = r3 
(declare-const var3391!5 var783)
(assert (not (= var3391!5 null-var783)))
(assert (= (objectClass/-754356434 var3391!5) var1114)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.Class objectClass> = r4 
(declare-const var3391!6 var783)
(assert (not (= var3391!6 null-var783)))
(assert (= (objectType/-754356434 var3391!6) var1404)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type objectType> = r5 
(declare-const var3391!7 var783)
(assert (not (= var3391!7 null-var783)))
(assert (= (features/-754356434 var3391!7) var2760)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long features> = l0 
 ; Statement: if r2 != null goto $r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>(r2) 
(assert (not (not (= var587 null-ClassObject)))) ; Negate: Cond: r2 != null  
(declare-const var3391!8 var783)
(assert (not (= var3391!8 null-var783)))
(assert (= (valueTypeRefDetect/-754356434 var3391!8) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean valueTypeRefDetect> = 1 
 ; Statement: goto [?= $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4)] 
(assert true) ; Non Conditional
(define-const var779 String (var1861_getTypeName/1260098013 var1114)) ; Statement: $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4) 
(define-const var1016 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1016)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1016!1 String)
(assert (= var1016!1 ""))
(assert true)
(define-const var1040 String (append/672562846 var1016!1 "\u0022@type\u0022:\u0022")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"@type\":\"") 
(declare-const var1016!2 String)
(assert (= var1016!2 (str.++ var1016!1 "\u0022@type\u0022:\u0022")))
(assert true)
(define-const var2994 String (getName/-1958580599 var1114)) ; Statement: $r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1753 String (append/672562846 var1040 var2994)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1040!1 String)
(assert (= var1040!1 (str.++ var1040 var2994)))
(assert true)
(define-const var1334 String (append/672562846 var1753 "\u0022")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 "\u0022")))
(assert true)
(define-const var2003 String (toString/-2075883882 var1334)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1744 (Array Int Int) (toCharArray/415275702 var2003)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.String: char[] toCharArray()>() 
(declare-const var3391!9 var783)
(assert (not (= var3391!9 null-var783)))
(assert (= (typeInfoUTF16/-754356434 var3391!9) var1744)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: char[] typeInfoUTF16> = $r19 
(define-const var1381 var3253 var1095-UTF_8) ; Statement: $r20 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1548 (Array Int Int) (getBytes/-163691139 var2003 var1381)) ; Statement: $r21 = virtualinvoke $r18.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r20) 
(declare-const var3391!10 var783)
(assert (not (= var3391!10 null-var783)))
(assert (= (typeInfoUTF8/-754356434 var3391!10) var1548)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] typeInfoUTF8> = $r21 
(define-const var1249 String "JO1") ; Statement: $r22 = "JO1" 
(assert true)
(define-const var2467 Bool (= var1249 var779)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r12) 
(declare-const var3391!11 var783)
(assert (not (= var3391!11 null-var783)))
(assert (= (jsonObject1/-754356434 var3391!11) var2467)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> = $z2 
(define-const var3729 (Array Int Int) (var911_toBytes/-815774109 var779)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r12) 
(declare-const var3391!12 var783)
(assert (not (= var3391!12 null-var783)))
(assert (= (jsonbTypeInfo/-754356434 var3391!12) var3729)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] jsonbTypeInfo> = $r23 
(define-const var2588 Int (var2865_hashCode64/-647279352 var779)) ; Statement: $l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r12) 
(declare-const var3391!13 var783)
(assert (not (= var3391!13 null-var783)))
(assert (= (typeNameHash/-754356434 var3391!13) var2588)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long typeNameHash> = $l1 
(define-const var772 Int (- 1)) ; Statement: l2 = -1L 
(define-const var3036 Bool (jsonObject1/-754356434 var3391!13)) ; Statement: $z3 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> 
 ; Statement: if $z3 == 0 goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null 
(assert (not (= (ite var3036 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3533 var2738 (var2124_getDeclaredField/-2112930401 var1114 "map")) ; Statement: $r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.reflect.Field getDeclaredField(java.lang.Class,java.lang.String)>(r4, "map") 
(declare-const var3391!14 var783)
(assert (not (= var3391!14 null-var783)))
(assert (= (jsonObject1InnerMap/-754356434 var3391!14) var3533)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = $r7 
(define-const var481 var2738 (jsonObject1InnerMap/-754356434 var3391!14)) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> 
 ; Statement: if $r8 == null goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2 
(assert (= var481 null-var2738)) ; Cond: $r8 == null 
(declare-const var3391!15 var783)
(assert (not (= var3391!15 null-var783)))
(assert (= (jsonObject1InnerMapOffset/-754356434 var3391!15) var772)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var783-to-var1881=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), keyType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), valueType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), format/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.String), objectClass/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.Class), objectType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), features/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long), valueTypeRefDetect/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], boolean), var1861_getTypeName/1260098013=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), typeInfoUTF16/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], char[]), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), typeInfoUTF8/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], byte[]), jsonObject1/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], boolean), var911_toBytes/-815774109=([java.lang.String], byte[]), jsonbTypeInfo/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], byte[]), var2865_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long), var2124_getDeclaredField/-2112930401=([java.lang.Class, java.lang.String], java.lang.reflect.Field), jsonObject1InnerMap/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Field), jsonObject1InnerMapOffset/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long)}
; {var783=com.alibaba.fastjson2.writer.ObjectWriterImplMap, var3391=r0, var3283=r1, var587=r2, var271=r3, var1371=null_type, var1114=r4, var1404=r5, var2760=l0, var1881=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var1861=com.alibaba.fastjson2.util.TypeUtils, var779=$r12, var1016=$r13, var1040=$r14, var2994=$r15, var1753=$r16, var1334=$r17, var2003=$r18, var1744=$r19, var3253=java.nio.charset.Charset, var1095=java.nio.charset.StandardCharsets, var1381=$r20, var1548=$r21, var1249=$r22, var2467=$z2, var911=com.alibaba.fastjson2.JSONB, var3729=$r23, var2865=com.alibaba.fastjson2.util.Fnv, var2588=$l1, var772=l2, var3036=$z3, var2738=java.lang.reflect.Field, var2124=com.alibaba.fastjson2.util.BeanUtils, var3533=$r7, var481=$r8}
; {com.alibaba.fastjson2.writer.ObjectWriterImplMap=var783, r0=var3391, r1=var3283, r2=var587, r3=var271, null_type=var1371, r4=var1114, r5=var1404, l0=var2760, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var1881, com.alibaba.fastjson2.util.TypeUtils=var1861, $r12=var779, $r13=var1016, $r14=var1040, $r15=var2994, $r16=var1753, $r17=var1334, $r18=var2003, $r19=var1744, java.nio.charset.Charset=var3253, java.nio.charset.StandardCharsets=var1095, $r20=var1381, $r21=var1548, $r22=var1249, $z2=var2467, com.alibaba.fastjson2.JSONB=var911, $r23=var3729, com.alibaba.fastjson2.util.Fnv=var2865, $l1=var2588, l2=var772, $z3=var3036, java.lang.reflect.Field=var2738, com.alibaba.fastjson2.util.BeanUtils=var2124, $r7=var3533, $r8=var481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplMap;	r1 := @parameter0: java.lang.reflect.Type;	r2 := @parameter1: java.lang.reflect.Type;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.reflect.Type;	l0 := @parameter5: long;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type keyType> = r1;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type valueType> = r2;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.String format> = r3;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.Class objectClass> = r4;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type objectType> = r5;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long features> = l0;	if r2 != null goto $r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>(r2);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean valueTypeRefDetect> = 1;	goto [?= $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4)];	$r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"@type\":\"");	$r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke $r18.<java.lang.String: char[] toCharArray()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: char[] typeInfoUTF16> = $r19;	$r20 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r21 = virtualinvoke $r18.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r20);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] typeInfoUTF8> = $r21;	$r22 = "JO1";	$z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> = $z2;	$r23 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] jsonbTypeInfo> = $r23;	$l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long typeNameHash> = $l1;	l2 = -1L;	$z3 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1>;	if $z3 == 0 goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null;	$r7 = staticinvoke <com.alibaba.fastjson2.util.BeanUtils: java.lang.reflect.Field getDeclaredField(java.lang.Class,java.lang.String)>(r4, "map");	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = $r7;	$r8 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap>;	if $r8 == null goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2;	return
;block_num 5