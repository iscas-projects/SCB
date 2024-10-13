(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var267 0)
(declare-sort var1441 0)
(declare-sort var1460 0)
(declare-sort var1478 0)
(declare-sort var1058 0)
(declare-sort var1642 0)
(declare-sort var3032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serializable/1914013406 (var1478) Bool)
(declare-fun cast-from-var267-to-var1478 (var267) var1478)
(declare-fun isArray/1773110386 (var1441) Bool)
(declare-fun objectClass/1914013406 (var1478) ClassObject)
(declare-fun typeNameHash/1914013406 (var1478) Int)
(declare-fun features/1914013406 (var1478) Int)
(declare-fun checkAutoType/-437932796 (var1441 ClassObject Int Int) var1058)
(declare-fun nextIfMatch/-1486561452 (var1441 Int) Bool)
(declare-fun var1642-init () var1642)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getType/2124218233 (var1441) Int)
(declare-fun var3032_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1441 String) String)
(declare-fun <init>/-2099196170 (var1642 String) void)
(declare-const null-var267 var267)
(declare-const null-var1441 var1441)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1460 var1460)
(declare-const null-Int Int)
(declare-const null-var1058 var1058)
(declare-const var2156 var267) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReader3 
(assert (not (= var2156 null-var267)))
(declare-const var1903 var1441) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1903 null-var1441)))
(declare-const var3621 ClassObject) ; Statement: r28 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3621 null-ClassObject)))
(declare-const var2679 var1460) ; Statement: r29 := @parameter2: java.lang.Object 
(assert (not (= var2679 null-var1460)))
(declare-const var1808 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var1808 null-Int)))
(define-const var2940 Bool (serializable/1914013406 (cast-from-var267-to-var1478 var2156))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: boolean serializable> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
(assert (not (= (ite var2940 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3574 Bool (isArray/1773110386 var1903)) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.lang.Class objectClass> 
(assert (= (ite var3574 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1739 ClassObject (objectClass/1914013406 (cast-from-var267-to-var1478 var2156))) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.lang.Class objectClass> 
(define-const var2087 Int (typeNameHash/1914013406 (cast-from-var267-to-var1478 var2156))) ; Statement: $l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: long typeNameHash> 
(define-const var3305 Int (features/1914013406 (cast-from-var267-to-var1478 var2156))) ; Statement: $l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: long features> 
(define-const var3024 Int (bv2nat (bvor ((_ int2bv 64) var3305) ((_ int2bv 64) var1808)))) ; Statement: $l2 = $l1 | l0 
(assert true)
(define-const var1598 var1058 (checkAutoType/-437932796 var1903 var1739 var2087 var3024)) ; Statement: r43 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2) 
 ; Statement: if r43 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
(assert (= var1598 null-var1058)) ; Cond: r43 == null 
(assert true)
(define-const var560 Bool (nextIfMatch/-1486561452 var1903 (- 90))) ; Statement: $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.util.function.Supplier creator> 
(assert (not (not (= (ite var560 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var657 var1642 var1642-init) ; Statement: $r19 = new com.alibaba.fastjson2.JSONException 
(define-const var2010 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2010)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2010!1 String)
(assert (= var2010!1 ""))
(assert true)
(define-const var3539 String (append/672562846 var2010!1 "expect object, but ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ") 
(declare-const var2010!2 String)
(assert (= var2010!2 (str.++ var2010!1 "expect object, but ")))
(assert true)
(define-const var913 Int (getType/2124218233 var1903)) ; Statement: $b25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var3334 String (var3032_typeName/1994747818 var913)) ; Statement: $r21 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b25) 
(assert true)
(define-const var3300 String (append/672562846 var3539 var3334)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3539!1 String)
(assert (= var3539!1 (str.++ var3539 var3334)))
(assert true)
(define-const var3326 String (toString/-2075883882 var3300)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3677 String (info/-1659839707 var1903 var3326)) ; Statement: $r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r24) 
(assert true)
;(assert (<init>/-2099196170 var657 var3677)) ; Statement: specialinvoke $r19.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25) 

(declare-const var657!1 var1642)
(declare-const var3677!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {serializable/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], boolean), cast-from-var267-to-var1478=([com.alibaba.fastjson2.reader.ObjectReader3], com.alibaba.fastjson2.reader.ObjectReaderBean), isArray/1773110386=([com.alibaba.fastjson2.JSONReader], boolean), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), typeNameHash/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), features/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), checkAutoType/-437932796=([com.alibaba.fastjson2.JSONReader, java.lang.Class, long, long], com.alibaba.fastjson2.reader.ObjectReader), nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), var1642-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), var3032_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var267=com.alibaba.fastjson2.reader.ObjectReader3, var2156=r0, var1441=com.alibaba.fastjson2.JSONReader, var1903=r1, var3621=r28, var1460=java.lang.Object, var2679=r29, var1808=l0, var1478=com.alibaba.fastjson2.reader.ObjectReaderBean, var2940=$z0, var3574=$z1, var1739=$r2, var2087=$l3, var3305=$l1, var3024=$l2, var1058=com.alibaba.fastjson2.reader.ObjectReader, var1598=r43, var560=$z2, var1642=com.alibaba.fastjson2.JSONException, var657=$r19, var2010=$r20, var3539=$r22, var913=$b25, var3032=com.alibaba.fastjson2.JSONB, var3334=$r21, var3300=$r23, var3326=$r24, var3677=$r25}
; {com.alibaba.fastjson2.reader.ObjectReader3=var267, r0=var2156, com.alibaba.fastjson2.JSONReader=var1441, r1=var1903, r28=var3621, java.lang.Object=var1460, r29=var2679, l0=var1808, com.alibaba.fastjson2.reader.ObjectReaderBean=var1478, $z0=var2940, $z1=var3574, $r2=var1739, $l3=var2087, $l1=var3305, $l2=var3024, com.alibaba.fastjson2.reader.ObjectReader=var1058, r43=var1598, $z2=var560, com.alibaba.fastjson2.JSONException=var1642, $r19=var657, $r20=var2010, $r22=var3539, $b25=var913, com.alibaba.fastjson2.JSONB=var3032, $r21=var3334, $r23=var3300, $r24=var3326, $r25=var3677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReader3;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	r28 := @parameter1: java.lang.reflect.Type;	r29 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: boolean serializable>;	if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.lang.Class objectClass>;	$r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.lang.Class objectClass>;	$l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: long typeNameHash>;	$l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: long features>;	$l2 = $l1 | l0;	r43 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2);	if r43 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	$z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader3: java.util.function.Supplier creator>;	$r19 = new com.alibaba.fastjson2.JSONException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ");	$b25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$r21 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b25);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r24);	specialinvoke $r19.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r25);	throw $r19
;block_num 5