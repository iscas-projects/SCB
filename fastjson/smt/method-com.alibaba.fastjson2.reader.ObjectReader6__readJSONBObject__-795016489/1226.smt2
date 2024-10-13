(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var2813 0)
(declare-sort var3005 0)
(declare-sort var2127 0)
(declare-sort var2295 0)
(declare-sort var115 0)
(declare-sort var2803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun serializable/1914013406 (var2127) Bool)
(declare-fun cast-from-var2357-to-var2127 (var2357) var2127)
(declare-fun isArray/1773110386 (var2813) Bool)
(declare-fun objectClass/1914013406 (var2127) ClassObject)
(declare-fun typeNameHash/1914013406 (var2127) Int)
(declare-fun features/1914013406 (var2127) Int)
(declare-fun checkAutoType/-437932796 (var2813 ClassObject Int Int) var2295)
(declare-fun nextIfMatch/-1486561452 (var2813 Int) Bool)
(declare-fun var115-init () var115)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getType/2124218233 (var2813) Int)
(declare-fun var2803_typeName/1994747818 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2813 String) String)
(declare-fun <init>/-2099196170 (var115 String) void)
(declare-const null-var2357 var2357)
(declare-const null-var2813 var2813)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3005 var3005)
(declare-const null-Int Int)
(declare-const null-var2295 var2295)
(declare-const var193 var2357) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReader6 
(assert (not (= var193 null-var2357)))
(declare-const var1920 var2813) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1920 null-var2813)))
(declare-const var1830 ClassObject) ; Statement: r34 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1830 null-ClassObject)))
(declare-const var2388 var3005) ; Statement: r35 := @parameter2: java.lang.Object 
(assert (not (= var2388 null-var3005)))
(declare-const var2956 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var2956 null-Int)))
(define-const var611 Bool (serializable/1914013406 (cast-from-var2357-to-var2127 var193))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: boolean serializable> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
(assert (not (= (ite var611 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2991 Bool (isArray/1773110386 var1920)) ; Statement: $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>() 
 ; Statement: if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.lang.Class objectClass> 
(assert (= (ite var2991 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2475 ClassObject (objectClass/1914013406 (cast-from-var2357-to-var2127 var193))) ; Statement: $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.lang.Class objectClass> 
(define-const var410 Int (typeNameHash/1914013406 (cast-from-var2357-to-var2127 var193))) ; Statement: $l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: long typeNameHash> 
(define-const var3213 Int (features/1914013406 (cast-from-var2357-to-var2127 var193))) ; Statement: $l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: long features> 
(define-const var1022 Int (bv2nat (bvor ((_ int2bv 64) var3213) ((_ int2bv 64) var2956)))) ; Statement: $l2 = $l1 | l0 
(assert true)
(define-const var834 var2295 (checkAutoType/-437932796 var1920 var2475 var410 var1022)) ; Statement: r52 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2) 
 ; Statement: if r52 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
(assert (= var834 null-var2295)) ; Cond: r52 == null 
(assert true)
(define-const var889 Bool (nextIfMatch/-1486561452 var1920 (- 90))) ; Statement: $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90) 
 ; Statement: if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.util.function.Supplier creator> 
(assert (not (not (= (ite var889 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var638 var115 var115-init) ; Statement: $r25 = new com.alibaba.fastjson2.JSONException 
(define-const var3907 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3907)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3907!1 String)
(assert (= var3907!1 ""))
(assert true)
(define-const var1144 String (append/672562846 var3907!1 "expect object, but ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ") 
(declare-const var3907!2 String)
(assert (= var3907!2 (str.++ var3907!1 "expect object, but ")))
(assert true)
(define-const var3820 Int (getType/2124218233 var1920)) ; Statement: $b37 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>() 
(define-const var2367 String (var2803_typeName/1994747818 var3820)) ; Statement: $r27 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b37) 
(assert true)
(define-const var1893 String (append/672562846 var1144 var2367)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1144!1 String)
(assert (= var1144!1 (str.++ var1144 var2367)))
(assert true)
(define-const var2477 String (toString/-2075883882 var1893)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3575 String (info/-1659839707 var1920 var2477)) ; Statement: $r31 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r30) 
(assert true)
;(assert (<init>/-2099196170 var638 var3575)) ; Statement: specialinvoke $r25.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r31) 

(declare-const var638!1 var115)
(declare-const var3575!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {serializable/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], boolean), cast-from-var2357-to-var2127=([com.alibaba.fastjson2.reader.ObjectReader6], com.alibaba.fastjson2.reader.ObjectReaderBean), isArray/1773110386=([com.alibaba.fastjson2.JSONReader], boolean), objectClass/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], java.lang.Class), typeNameHash/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), features/1914013406=([com.alibaba.fastjson2.reader.ObjectReaderBean], long), checkAutoType/-437932796=([com.alibaba.fastjson2.JSONReader, java.lang.Class, long, long], com.alibaba.fastjson2.reader.ObjectReader), nextIfMatch/-1486561452=([com.alibaba.fastjson2.JSONReader, byte], boolean), var115-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getType/2124218233=([com.alibaba.fastjson2.JSONReader], byte), var2803_typeName/1994747818=([byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2357=com.alibaba.fastjson2.reader.ObjectReader6, var193=r0, var2813=com.alibaba.fastjson2.JSONReader, var1920=r1, var1830=r34, var3005=java.lang.Object, var2388=r35, var2956=l0, var2127=com.alibaba.fastjson2.reader.ObjectReaderBean, var611=$z0, var2991=$z1, var2475=$r2, var410=$l3, var3213=$l1, var1022=$l2, var2295=com.alibaba.fastjson2.reader.ObjectReader, var834=r52, var889=$z2, var115=com.alibaba.fastjson2.JSONException, var638=$r25, var3907=$r26, var1144=$r28, var3820=$b37, var2803=com.alibaba.fastjson2.JSONB, var2367=$r27, var1893=$r29, var2477=$r30, var3575=$r31}
; {com.alibaba.fastjson2.reader.ObjectReader6=var2357, r0=var193, com.alibaba.fastjson2.JSONReader=var2813, r1=var1920, r34=var1830, java.lang.Object=var3005, r35=var2388, l0=var2956, com.alibaba.fastjson2.reader.ObjectReaderBean=var2127, $z0=var611, $z1=var2991, $r2=var2475, $l3=var410, $l1=var3213, $l2=var1022, com.alibaba.fastjson2.reader.ObjectReader=var2295, r52=var834, $z2=var889, com.alibaba.fastjson2.JSONException=var115, $r25=var638, $r26=var3907, $r28=var1144, $b37=var3820, com.alibaba.fastjson2.JSONB=var2803, $r27=var2367, $r29=var1893, $r30=var2477, $r31=var3575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReader6;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	r34 := @parameter1: java.lang.reflect.Type;	r35 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: boolean serializable>;	if $z0 != 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	$z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean isArray()>();	if $z1 == 0 goto $r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.lang.Class objectClass>;	$r2 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.lang.Class objectClass>;	$l3 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: long typeNameHash>;	$l1 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: long features>;	$l2 = $l1 | l0;	r52 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.reader.ObjectReader checkAutoType(java.lang.Class,long,long)>($r2, $l3, $l2);	if r52 == null goto $z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	$z2 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfMatch(byte)>(-90);	if $z2 != 0 goto $r3 = r0.<com.alibaba.fastjson2.reader.ObjectReader6: java.util.function.Supplier creator>;	$r25 = new com.alibaba.fastjson2.JSONException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect object, but ");	$b37 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: byte getType()>();	$r27 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b37);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r30);	specialinvoke $r25.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r31);	throw $r25
;block_num 5