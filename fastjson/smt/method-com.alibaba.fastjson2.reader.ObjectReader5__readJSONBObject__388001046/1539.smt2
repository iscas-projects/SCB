(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var560 0)
(declare-sort var1946 0)
(declare-sort var164 0)
(declare-sort var3231 0)
(declare-sort var1867 0)
(declare-sort var3298 0)
(declare-sort var2835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serializable/1914013406 (var3231) Bool)
(declare-fun cast-from-var560-to-var3231 (var560) var3231)
(declare-fun isArray/1773110386 (var1946) Bool)
(declare-fun objectClass/1914013406 (var3231) ClassObject)
(declare-fun typeNameHash/1914013406 (var3231) Int)
(declare-fun features/1914013406 (var3231) Int)
(declare-fun checkAutoType/-437932796 (var1946 ClassObject Int Int) var1867)
(declare-fun nextIfMatch/-1486561452 (var1946 Int) Bool)
(declare-fun var3298-init () var3298)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getType/2124218233 (var1946) Int)
(declare-fun var2835_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3298 String) void)
(declare-const null-var560 var560)
(declare-const null-var1946 var1946)
(declare-const null-ClassObject ClassObject)
(declare-const null-var164 var164)
(declare-const null-Int Int)
(declare-const null-var1867 var1867)
(declare-const var1706 var560) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReader5 
(assert (not (= var1706 null-var560)))
(declare-const var2926 var1946) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2926 null-var1946)))
(declare-const var1031 ClassObject) ; Statement: r31 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1031 null-ClassObject)))
(declare-const var1382 var164) ; Statement: r32 := @parameter2: java.lang.Object 
(assert (not (= var1382 null-var164)))
(declare-const var3005 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var3005 null-Int)))
(define-const var428 Bool (serializable/1914013406 (cast-from-var560-to-var3231 var1706))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: boolean serializable> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
(assert (not (= (ite var428 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3881 Bool (isArray/1773110386 var2926)) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.lang.Class objectClass> 
(assert (= (ite var3881 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3608 ClassObject (objectClass/1914013406 (cast-from-var560-to-var3231 var1706))) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.lang.Class objectClass> 
(define-const var3804 Int (typeNameHash/1914013406 (cast-from-var560-to-var3231 var1706))) ; Statement: $l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: long typeNameHash> 
(define-const var925 Int (features/1914013406 (cast-from-var560-to-var3231 var1706))) ; Statement: $l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: long features> 
(define-const var3843 Int (bv2nat (bvor ((_ int2bv 64) var925) ((_ int2bv 64) var3005)))) ; Statement: $l2 = $l1 | l0 
(assert true)
(define-const var1714 var1867 (checkAutoType/-437932796 var2926 var3608 var3804 var3843)) ; Statement: r48 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2) 
 ; Statement: if r48 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
(assert (= var1714 null-var1867)) ; Cond: r48 == null 
(assert true)
(define-const var274 Bool (nextIfMatch/-1486561452 var2926 (- 90))) ; Statement: $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.util.function.Supplier creator> 
(assert (not (not (= (ite var274 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1322 var3298 var3298-init) ; Statement: $r23 = new com.alibaba.fastjson2.JSONException 
(define-const var1739 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1739)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1739!1 String)
(assert (= var1739!1 ""))
(assert true)
(define-const var2034 String (append/672562846 var1739!1 "expect object, but ")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ") 
(declare-const var1739!2 String)
(assert (= var1739!2 (str.++ var1739!1 "expect object, but ")))
(assert true)
(define-const var204 Int (getType/2124218233 var2926)) ; Statement: $b33 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var3224 String (var2835_typeName/1994747818 var204)) ; Statement: $r25 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b33) 
(assert true)
(define-const var3856 String (append/672562846 var2034 var3224)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2034!1 String)
(assert (= var2034!1 (str.++ var2034 var3224)))
(assert true)
(define-const var1223 String (toString/-2075883882 var3856)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1322 var1223)) ; Statement: specialinvoke $r23.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r28) 

(declare-const var1322!1 var3298)
(declare-const var1223!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {serializable/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], boolean), cast-from-var560-to-var3231=([com.alibaba.fastjson2.reader.ObjectReader5], com.alibaba.fastjson2.reader.ObjectReaderBean), isArray/1773110386=([com.alibaba.fastjson2.JSONReader], boolean), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), typeNameHash/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), features/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), checkAutoType/-437932796=([com.alibaba.fastjson2.JSONReader, java.lang.Class, long, long], com.alibaba.fastjson2.reader.ObjectReader), nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), var3298-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), var2835_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var560=com.alibaba.fastjson2.reader.ObjectReader5, var1706=r0, var1946=com.alibaba.fastjson2.JSONReader, var2926=r1, var1031=r31, var164=java.lang.Object, var1382=r32, var3005=l0, var3231=com.alibaba.fastjson2.reader.ObjectReaderBean, var428=$z0, var3881=$z1, var3608=$r2, var3804=$l3, var925=$l1, var3843=$l2, var1867=com.alibaba.fastjson2.reader.ObjectReader, var1714=r48, var274=$z2, var3298=com.alibaba.fastjson2.JSONException, var1322=$r23, var1739=$r24, var2034=$r26, var204=$b33, var2835=com.alibaba.fastjson2.JSONB, var3224=$r25, var3856=$r27, var1223=$r28}
; {com.alibaba.fastjson2.reader.ObjectReader5=var560, r0=var1706, com.alibaba.fastjson2.JSONReader=var1946, r1=var2926, r31=var1031, java.lang.Object=var164, r32=var1382, l0=var3005, com.alibaba.fastjson2.reader.ObjectReaderBean=var3231, $z0=var428, $z1=var3881, $r2=var3608, $l3=var3804, $l1=var925, $l2=var3843, com.alibaba.fastjson2.reader.ObjectReader=var1867, r48=var1714, $z2=var274, com.alibaba.fastjson2.JSONException=var3298, $r23=var1322, $r24=var1739, $r26=var2034, $b33=var204, com.alibaba.fastjson2.JSONB=var2835, $r25=var3224, $r27=var3856, $r28=var1223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReader5;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	r31 := @parameter1: java.lang.reflect.Type;	r32 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: boolean serializable>;	if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.lang.Class objectClass>;	$r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.lang.Class objectClass>;	$l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: long typeNameHash>;	$l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: long features>;	$l2 = $l1 | l0;	r48 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2);	if r48 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	$z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader5: java.util.function.Supplier creator>;	$r23 = new com.alibaba.fastjson2.JSONException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ");	$b33 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$r25 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b33);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r28);	throw $r23
;block_num 5