(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var646 0)
(declare-sort var3911 0)
(declare-sort var3570 0)
(declare-sort var3331 0)
(declare-sort var1500 0)
(declare-sort var2035 0)
(declare-sort var3330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serializable/1914013406 (var3331) Bool)
(declare-fun cast-from-var646-to-var3331 (var646) var3331)
(declare-fun isArray/1773110386 (var3911) Bool)
(declare-fun objectClass/1914013406 (var3331) ClassObject)
(declare-fun typeNameHash/1914013406 (var3331) Int)
(declare-fun features/1914013406 (var3331) Int)
(declare-fun checkAutoType/-437932796 (var3911 ClassObject Int Int) var1500)
(declare-fun nextIfMatch/-1486561452 (var3911 Int) Bool)
(declare-fun var2035-init () var2035)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getType/2124218233 (var3911) Int)
(declare-fun var3330_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3911 String) String)
(declare-fun <init>/-2099196170 (var2035 String) void)
(declare-const null-var646 var646)
(declare-const null-var3911 var3911)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3570 var3570)
(declare-const null-Int Int)
(declare-const null-var1500 var1500)
(declare-const var2969 var646) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReader4 
(assert (not (= var2969 null-var646)))
(declare-const var894 var3911) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var894 null-var3911)))
(declare-const var3830 ClassObject) ; Statement: r30 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3830 null-ClassObject)))
(declare-const var1530 var3570) ; Statement: r31 := @parameter2: java.lang.Object 
(assert (not (= var1530 null-var3570)))
(declare-const var3337 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var3337 null-Int)))
(define-const var2140 Bool (serializable/1914013406 (cast-from-var646-to-var3331 var2969))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: boolean serializable> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
(assert (not (= (ite var2140 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var641 Bool (isArray/1773110386 var894)) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.lang.Class objectClass> 
(assert (= (ite var641 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1628 ClassObject (objectClass/1914013406 (cast-from-var646-to-var3331 var2969))) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.lang.Class objectClass> 
(define-const var2598 Int (typeNameHash/1914013406 (cast-from-var646-to-var3331 var2969))) ; Statement: $l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: long typeNameHash> 
(define-const var3164 Int (features/1914013406 (cast-from-var646-to-var3331 var2969))) ; Statement: $l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: long features> 
(define-const var719 Int (bv2nat (bvor ((_ int2bv 64) var3164) ((_ int2bv 64) var3337)))) ; Statement: $l2 = $l1 | l0 
(assert true)
(define-const var929 var1500 (checkAutoType/-437932796 var894 var1628 var2598 var719)) ; Statement: r46 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2) 
 ; Statement: if r46 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
(assert (= var929 null-var1500)) ; Cond: r46 == null 
(assert true)
(define-const var2312 Bool (nextIfMatch/-1486561452 var894 (- 90))) ; Statement: $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.util.function.Supplier creator> 
(assert (not (not (= (ite var2312 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3759 var2035 var2035-init) ; Statement: $r21 = new com.alibaba.fastjson2.JSONException 
(define-const var2080 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2080)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2080!1 String)
(assert (= var2080!1 ""))
(assert true)
(define-const var1444 String (append/672562846 var2080!1 "expect object, but ")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ") 
(declare-const var2080!2 String)
(assert (= var2080!2 (str.++ var2080!1 "expect object, but ")))
(assert true)
(define-const var1036 Int (getType/2124218233 var894)) ; Statement: $b29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var2210 String (var3330_typeName/1994747818 var1036)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b29) 
(assert true)
(define-const var2002 String (append/672562846 var1444 var2210)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1444!1 String)
(assert (= var1444!1 (str.++ var1444 var2210)))
(assert true)
(define-const var2575 String (toString/-2075883882 var2002)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3185 String (info/-1659839707 var894 var2575)) ; Statement: $r27 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26) 
(assert true)
;(assert (<init>/-2099196170 var3759 var3185)) ; Statement: specialinvoke $r21.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27) 

(declare-const var3759!1 var2035)
(declare-const var3185!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {serializable/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], boolean), cast-from-var646-to-var3331=([com.alibaba.fastjson2.reader.ObjectReader4], com.alibaba.fastjson2.reader.ObjectReaderBean), isArray/1773110386=([com.alibaba.fastjson2.JSONReader], boolean), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), typeNameHash/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), features/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), checkAutoType/-437932796=([com.alibaba.fastjson2.JSONReader, java.lang.Class, long, long], com.alibaba.fastjson2.reader.ObjectReader), nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), var2035-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), var3330_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var646=com.alibaba.fastjson2.reader.ObjectReader4, var2969=r0, var3911=com.alibaba.fastjson2.JSONReader, var894=r1, var3830=r30, var3570=java.lang.Object, var1530=r31, var3337=l0, var3331=com.alibaba.fastjson2.reader.ObjectReaderBean, var2140=$z0, var641=$z1, var1628=$r2, var2598=$l3, var3164=$l1, var719=$l2, var1500=com.alibaba.fastjson2.reader.ObjectReader, var929=r46, var2312=$z2, var2035=com.alibaba.fastjson2.JSONException, var3759=$r21, var2080=$r22, var1444=$r24, var1036=$b29, var3330=com.alibaba.fastjson2.JSONB, var2210=$r23, var2002=$r25, var2575=$r26, var3185=$r27}
; {com.alibaba.fastjson2.reader.ObjectReader4=var646, r0=var2969, com.alibaba.fastjson2.JSONReader=var3911, r1=var894, r30=var3830, java.lang.Object=var3570, r31=var1530, l0=var3337, com.alibaba.fastjson2.reader.ObjectReaderBean=var3331, $z0=var2140, $z1=var641, $r2=var1628, $l3=var2598, $l1=var3164, $l2=var719, com.alibaba.fastjson2.reader.ObjectReader=var1500, r46=var929, $z2=var2312, com.alibaba.fastjson2.JSONException=var2035, $r21=var3759, $r22=var2080, $r24=var1444, $b29=var1036, com.alibaba.fastjson2.JSONB=var3330, $r23=var2210, $r25=var2002, $r26=var2575, $r27=var3185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReader4;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	r30 := @parameter1: java.lang.reflect.Type;	r31 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: boolean serializable>;	if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.lang.Class objectClass>;	$r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.lang.Class objectClass>;	$l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: long typeNameHash>;	$l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: long features>;	$l2 = $l1 | l0;	r46 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2);	if r46 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	$z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader4: java.util.function.Supplier creator>;	$r21 = new com.alibaba.fastjson2.JSONException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ");	$b29 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$r23 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b29);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26);	specialinvoke $r21.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27);	throw $r21
;block_num 5