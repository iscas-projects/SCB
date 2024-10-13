(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var2385 0)
(declare-sort var3150 0)
(declare-sort var1241 0)
(declare-sort var1792 0)
(declare-sort var876 0)
(declare-sort var3723 0)
(declare-sort var2853 0)
(declare-sort var3662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1696313286 (var3150) void)
(declare-fun cast-from-var3389-to-var3150 (var3389) var3150)
(declare-fun keyType/-754356434 (var3389) ClassObject)
(declare-fun valueType/-754356434 (var3389) ClassObject)
(declare-fun format/-754356434 (var3389) String)
(declare-fun objectClass/-754356434 (var3389) ClassObject)
(declare-fun objectType/-754356434 (var3389) ClassObject)
(declare-fun features/-754356434 (var3389) Int)
(declare-fun valueTypeRefDetect/-754356434 (var3389) Bool)
(declare-fun var1241_getTypeName/1260098013 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun typeInfoUTF16/-754356434 (var3389) (Array Int Int))
(declare-fun getBytes/-163691139 (String var1792) (Array Int Int))
(declare-fun typeInfoUTF8/-754356434 (var3389) (Array Int Int))
(declare-fun jsonObject1/-754356434 (var3389) Bool)
(declare-fun var3723_toBytes/-815774109 (String) (Array Int Int))
(declare-fun jsonbTypeInfo/-754356434 (var3389) (Array Int Int))
(declare-fun var2853_hashCode64/-647279352 (String) Int)
(declare-fun typeNameHash/-754356434 (var3389) Int)
(declare-fun jsonObject1InnerMap/-754356434 (var3389) var3662)
(declare-fun jsonObject1InnerMapOffset/-754356434 (var3389) Int)
(declare-const null-var3389 var3389)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var876-UTF_8 var1792)
(declare-const null-var3662 var3662)
(declare-const var389 var3389) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplMap 
(assert (not (= var389 null-var3389)))
(declare-const var3383 ClassObject) ; Statement: r1 := @parameter0: java.lang.reflect.Type 
(assert (not (= var3383 null-ClassObject)))
(declare-const var1586 ClassObject) ; Statement: r2 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1586 null-ClassObject)))
(declare-const var3530 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3530 null-String)))
(declare-const var2245 ClassObject) ; Statement: r4 := @parameter3: java.lang.Class 
(assert (not (= var2245 null-ClassObject)))
(declare-const var381 ClassObject) ; Statement: r5 := @parameter4: java.lang.reflect.Type 
(assert (not (= var381 null-ClassObject)))
(declare-const var1627 Int) ; Statement: l0 := @parameter5: long 
(assert (not (= var1627 null-Int)))
(assert true)
;(assert (<init>/-1696313286 (cast-from-var3389-to-var3150 var389))) ; Statement: specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>() 

(declare-const var389!1 var3389)
(declare-const var389!2 var3389)
(assert (not (= var389!2 null-var3389)))
(assert (= (keyType/-754356434 var389!2) var3383)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type keyType> = r1 
(declare-const var389!3 var3389)
(assert (not (= var389!3 null-var3389)))
(assert (= (valueType/-754356434 var389!3) var1586)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type valueType> = r2 
(declare-const var389!4 var3389)
(assert (not (= var389!4 null-var3389)))
(assert (= (format/-754356434 var389!4) var3530)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.String format> = r3 
(declare-const var389!5 var3389)
(assert (not (= var389!5 null-var3389)))
(assert (= (objectClass/-754356434 var389!5) var2245)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.Class objectClass> = r4 
(declare-const var389!6 var3389)
(assert (not (= var389!6 null-var3389)))
(assert (= (objectType/-754356434 var389!6) var381)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type objectType> = r5 
(declare-const var389!7 var3389)
(assert (not (= var389!7 null-var3389)))
(assert (= (features/-754356434 var389!7) var1627)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long features> = l0 
 ; Statement: if r2 != null goto $r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>(r2) 
(assert (not (not (= var1586 null-ClassObject)))) ; Negate: Cond: r2 != null  
(declare-const var389!8 var3389)
(assert (not (= var389!8 null-var3389)))
(assert (= (valueTypeRefDetect/-754356434 var389!8) (ite (= 1 1) true false))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean valueTypeRefDetect> = 1 
 ; Statement: goto [?= $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4)] 
(assert true) ; Non Conditional
(define-const var2291 String (var1241_getTypeName/1260098013 var2245)) ; Statement: $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4) 
(define-const var3230 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3230)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3230!1 String)
(assert (= var3230!1 ""))
(assert true)
(define-const var2646 String (append/672562846 var3230!1 "\u0022@type\u0022:\u0022")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"@type\":\"") 
(declare-const var3230!2 String)
(assert (= var3230!2 (str.++ var3230!1 "\u0022@type\u0022:\u0022")))
(assert true)
(define-const var2014 String (getName/-1958580599 var2245)) ; Statement: $r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3317 String (append/672562846 var2646 var2014)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2646!1 String)
(assert (= var2646!1 (str.++ var2646 var2014)))
(assert true)
(define-const var2714 String (append/672562846 var3317 "\u0022")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3317!1 String)
(assert (= var3317!1 (str.++ var3317 "\u0022")))
(assert true)
(define-const var384 String (toString/-2075883882 var2714)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1543 (Array Int Int) (toCharArray/415275702 var384)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.String: char[] toCharArray()>() 
(declare-const var389!9 var3389)
(assert (not (= var389!9 null-var3389)))
(assert (= (typeInfoUTF16/-754356434 var389!9) var1543)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: char[] typeInfoUTF16> = $r19 
(define-const var1435 var1792 var876-UTF_8) ; Statement: $r20 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1605 (Array Int Int) (getBytes/-163691139 var384 var1435)) ; Statement: $r21 = virtualinvoke $r18.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r20) 
(declare-const var389!10 var3389)
(assert (not (= var389!10 null-var3389)))
(assert (= (typeInfoUTF8/-754356434 var389!10) var1605)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] typeInfoUTF8> = $r21 
(define-const var1754 String "JO1") ; Statement: $r22 = "JO1" 
(assert true)
(define-const var984 Bool (= var1754 var2291)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r12) 
(declare-const var389!11 var3389)
(assert (not (= var389!11 null-var3389)))
(assert (= (jsonObject1/-754356434 var389!11) var984)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> = $z2 
(define-const var3532 (Array Int Int) (var3723_toBytes/-815774109 var2291)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r12) 
(declare-const var389!12 var3389)
(assert (not (= var389!12 null-var3389)))
(assert (= (jsonbTypeInfo/-754356434 var389!12) var3532)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] jsonbTypeInfo> = $r23 
(define-const var3851 Int (var2853_hashCode64/-647279352 var2291)) ; Statement: $l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r12) 
(declare-const var389!13 var3389)
(assert (not (= var389!13 null-var3389)))
(assert (= (typeNameHash/-754356434 var389!13) var3851)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long typeNameHash> = $l1 
(define-const var2113 Int (- 1)) ; Statement: l2 = -1L 
(define-const var2164 Bool (jsonObject1/-754356434 var389!13)) ; Statement: $z3 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> 
 ; Statement: if $z3 == 0 goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null 
(assert (= (ite var2164 1 0) 0)) ; Cond: $z3 == 0 
(declare-const var389!14 var3389)
(assert (not (= var389!14 null-var3389)))
(assert (= (jsonObject1InnerMap/-754356434 var389!14) null-var3662)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null 
(assert true) ; Non Conditional
(declare-const var389!15 var3389)
(assert (not (= var389!15 null-var3389)))
(assert (= (jsonObject1InnerMapOffset/-754356434 var389!15) var2113)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1696313286=([com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl], void), cast-from-var3389-to-var3150=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl), keyType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), valueType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), format/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.String), objectClass/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.Class), objectType/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Type), features/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long), valueTypeRefDetect/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], boolean), var1241_getTypeName/1260098013=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), typeInfoUTF16/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], char[]), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), typeInfoUTF8/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], byte[]), jsonObject1/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], boolean), var3723_toBytes/-815774109=([java.lang.String], byte[]), jsonbTypeInfo/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], byte[]), var2853_hashCode64/-647279352=([java.lang.String], long), typeNameHash/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long), jsonObject1InnerMap/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], java.lang.reflect.Field), jsonObject1InnerMapOffset/-754356434=([com.alibaba.fastjson2.writer.ObjectWriterImplMap], long)}
; {var3389=com.alibaba.fastjson2.writer.ObjectWriterImplMap, var389=r0, var3383=r1, var1586=r2, var3530=r3, var2385=null_type, var2245=r4, var381=r5, var1627=l0, var3150=com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl, var1241=com.alibaba.fastjson2.util.TypeUtils, var2291=$r12, var3230=$r13, var2646=$r14, var2014=$r15, var3317=$r16, var2714=$r17, var384=$r18, var1543=$r19, var1792=java.nio.charset.Charset, var876=java.nio.charset.StandardCharsets, var1435=$r20, var1605=$r21, var1754=$r22, var984=$z2, var3723=com.alibaba.fastjson2.JSONB, var3532=$r23, var2853=com.alibaba.fastjson2.util.Fnv, var3851=$l1, var2113=l2, var2164=$z3, var3662=java.lang.reflect.Field}
; {com.alibaba.fastjson2.writer.ObjectWriterImplMap=var3389, r0=var389, r1=var3383, r2=var1586, r3=var3530, null_type=var2385, r4=var2245, r5=var381, l0=var1627, com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl=var3150, com.alibaba.fastjson2.util.TypeUtils=var1241, $r12=var2291, $r13=var3230, $r14=var2646, $r15=var2014, $r16=var3317, $r17=var2714, $r18=var384, $r19=var1543, java.nio.charset.Charset=var1792, java.nio.charset.StandardCharsets=var876, $r20=var1435, $r21=var1605, $r22=var1754, $z2=var984, com.alibaba.fastjson2.JSONB=var3723, $r23=var3532, com.alibaba.fastjson2.util.Fnv=var2853, $l1=var3851, l2=var2113, $z3=var2164, java.lang.reflect.Field=var3662}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterImplMap;	r1 := @parameter0: java.lang.reflect.Type;	r2 := @parameter1: java.lang.reflect.Type;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.Class;	r5 := @parameter4: java.lang.reflect.Type;	l0 := @parameter5: long;	specialinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type keyType> = r1;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type valueType> = r2;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.String format> = r3;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.Class objectClass> = r4;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Type objectType> = r5;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long features> = l0;	if r2 != null goto $r6 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Class getClass(java.lang.reflect.Type)>(r2);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean valueTypeRefDetect> = 1;	goto [?= $r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4)];	$r12 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(r4);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"@type\":\"");	$r15 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = virtualinvoke $r18.<java.lang.String: char[] toCharArray()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: char[] typeInfoUTF16> = $r19;	$r20 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r21 = virtualinvoke $r18.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r20);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] typeInfoUTF8> = $r21;	$r22 = "JO1";	$z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1> = $z2;	$r23 = staticinvoke <com.alibaba.fastjson2.JSONB: byte[] toBytes(java.lang.String)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: byte[] jsonbTypeInfo> = $r23;	$l1 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r12);	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long typeNameHash> = $l1;	l2 = -1L;	$z3 = r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: boolean jsonObject1>;	if $z3 == 0 goto r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: java.lang.reflect.Field jsonObject1InnerMap> = null;	r0.<com.alibaba.fastjson2.writer.ObjectWriterImplMap: long jsonObject1InnerMapOffset> = l2;	return
;block_num 5