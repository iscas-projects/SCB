(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var2556 0)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2556)
(declare-fun cast-from-var2556-to-var3881 (var2556) var3881)
(declare-fun var3881_getKey/-33423493 (var3881) var2556)
(declare-fun cast-from-var2556-to-String (var2556) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var1630 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1630 null-String)))
(declare-const var33 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var33 null-Iterator)))
(assert true) ; Non Conditional
(define-const var2791 Bool (Iterator_hasNext/-1669924200 var33)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2791 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1854 var2556 (Iterator_next/-1124697587 var33)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var33!1 Iterator)
(define-const var1824 var3881 (cast-from-var2556-to-var3881 var1854)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var387 var2556 (var3881_getKey/-33423493 var1824)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var526 String (cast-from-var2556-to-String var387)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3433 Bool (startsWith/-1785782452 var526 var1630)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3433 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2791!1 Bool (Iterator_hasNext/-1669924200 var33!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2791!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1854!1 var2556 (Iterator_next/-1124697587 var33!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var33!2 Iterator)
(define-const var1824!1 var3881 (cast-from-var2556-to-var3881 var1854!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var387!1 var2556 (var3881_getKey/-33423493 var1824!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var526!1 String (cast-from-var2556-to-String var387!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3433!1 Bool (startsWith/-1785782452 var526!1 var1630)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var3433!1 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2556-to-var3881=([java.lang.Object], java.util.Map$Entry), var3881_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2556-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1630=r4, var742=null_type, var33=r0, var2791=$z0, var2556=java.lang.Object, var1854=$r1, var3881=java.util.Map$Entry, var1824=$r2, var387=$r3, var526=$r5, var3433=$z1}
; {r4=var1630, null_type=var742, r0=var33, $z0=var2791, java.lang.Object=var2556, $r1=var1854, java.util.Map$Entry=var3881, $r2=var1824, $r3=var387, $r5=var526, $z1=var3433}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	return 0
;block_num 6