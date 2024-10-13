(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var54 0)
(declare-sort var3964 0)
(declare-sort var593 0)
(declare-sort var2403 0)
(declare-sort var2279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultReadObject/610298106 (var3964) void)
(declare-fun readObject/466248564 (var3964) var593)
(declare-fun cast-from-var593-to-var2403 (var593) var2403)
(declare-fun readInt/-619649650 (var3964) Int)
(declare-fun var2279-init () var2279)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/237997851 (var2279 String) void)
(declare-const null-var54 var54)
(declare-const null-var3964 var3964)
(declare-const var175 var54) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap 
(assert (not (= var175 null-var54)))
(declare-const var3576 var3964) ; Statement: r0 := @parameter0: java.io.ObjectInputStream 
(assert (not (= var3576 null-var3964)))
(assert true)
;(assert (defaultReadObject/610298106 var3576)) ; Statement: virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>() 

(declare-const var3576!1 var3964)
(assert true)
(define-const var1600 var593 (readObject/466248564 var3576!1)) ; Statement: $r1 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>() 
(define-const var3777 var2403 (cast-from-var593-to-var2403 var1600)) ; Statement: r2 = (java.util.Comparator) $r1 
(assert true)
(define-const var867 Int (readInt/-619649650 var3576!1)) ; Statement: i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>() 
 ; Statement: if i0 >= 0 goto r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>() 
(assert (not (>= var867 0))) ; Negate: Cond: i0 >= 0  
(define-const var1027 var2279 var2279-init) ; Statement: $r21 = new java.io.InvalidObjectException 
(define-const var404 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var404)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var404!1 String)
(assert (= var404!1 ""))
(assert true)
(define-const var3218 String (append/672562846 var404!1 "Invalid key count ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid key count ") 
(declare-const var404!2 String)
(assert (= var404!2 (str.++ var404!1 "Invalid key count ")))
(assert true)
(define-const var1725 String (append/-1001720160 var3218 var867)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3218!1 String)
(assert (str.prefixof var3218 var3218!1))
(assert true)
(define-const var3025 String (toString/-2075883882 var1725)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/237997851 var1027 var3025)) ; Statement: specialinvoke $r21.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r25) 

(declare-const var1027!1 var2279)
(declare-const var3025!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultReadObject/610298106=([java.io.ObjectInputStream], void), readObject/466248564=([java.io.ObjectInputStream], java.lang.Object), cast-from-var593-to-var2403=([java.lang.Object], java.util.Comparator), readInt/-619649650=([java.io.ObjectInputStream], int), var2279-init=([], java.io.InvalidObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/237997851=([java.io.InvalidObjectException, java.lang.String], void)}
; {var54=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap, var175=r4, var3964=java.io.ObjectInputStream, var3576=r0, var593=java.lang.Object, var1600=$r1, var2403=java.util.Comparator, var3777=r2, var867=i0, var2279=java.io.InvalidObjectException, var1027=$r21, var404=$r22, var3218=$r23, var1725=$r24, var3025=$r25}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap=var54, r4=var175, java.io.ObjectInputStream=var3964, r0=var3576, java.lang.Object=var593, $r1=var1600, java.util.Comparator=var2403, r2=var3777, i0=var867, java.io.InvalidObjectException=var2279, $r21=var1027, $r22=var404, $r23=var3218, $r24=var1725, $r25=var3025}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSetMultimap;	r0 := @parameter0: java.io.ObjectInputStream;	virtualinvoke r0.<java.io.ObjectInputStream: void defaultReadObject()>();	$r1 = virtualinvoke r0.<java.io.ObjectInputStream: java.lang.Object readObject()>();	r2 = (java.util.Comparator) $r1;	i0 = virtualinvoke r0.<java.io.ObjectInputStream: int readInt()>();	if i0 >= 0 goto r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap$Builder builder()>();	$r21 = new java.io.InvalidObjectException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid key count ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<java.io.InvalidObjectException: void <init>(java.lang.String)>($r25);	throw $r21
;block_num 2