(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var3170 0)
(declare-sort var3582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3170)
(declare-fun cast-from-var3170-to-var3582 (var3170) var3582)
(declare-fun var3582_getKey/-33423493 (var3582) var3170)
(declare-fun cast-from-var3170-to-String (var3170) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var1448 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1448 null-String)))
(declare-const var3847 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var3847 null-Iterator)))
(assert true) ; Non Conditional
(define-const var1237 Bool (Iterator_hasNext/-1669924200 var3847)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var1237 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3455 var3170 (Iterator_next/-1124697587 var3847)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3847!1 Iterator)
(define-const var2976 var3582 (cast-from-var3170-to-var3582 var3455)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var3034 var3170 (var3582_getKey/-33423493 var2976)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3563 String (cast-from-var3170-to-String var3034)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2362 Bool (startsWith/-1785782452 var3563 var1448)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2362 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1237!1 Bool (Iterator_hasNext/-1669924200 var3847!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var1237!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3455!1 var3170 (Iterator_next/-1124697587 var3847!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3847!2 Iterator)
(define-const var2976!1 var3582 (cast-from-var3170-to-var3582 var3455!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var3034!1 var3170 (var3582_getKey/-33423493 var2976!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3563!1 String (cast-from-var3170-to-String var3034!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2362!1 Bool (startsWith/-1785782452 var3563!1 var1448)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2362!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1237!2 Bool (Iterator_hasNext/-1669924200 var3847!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var1237!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3455!2 var3170 (Iterator_next/-1124697587 var3847!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3847!3 Iterator)
(define-const var2976!2 var3582 (cast-from-var3170-to-var3582 var3455!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var3034!2 var3170 (var3582_getKey/-33423493 var2976!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3563!2 String (cast-from-var3170-to-String var3034!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2362!2 Bool (startsWith/-1785782452 var3563!2 var1448)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2362!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1237!3 Bool (Iterator_hasNext/-1669924200 var3847!3)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var1237!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3455!3 var3170 (Iterator_next/-1124697587 var3847!3)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3847!4 Iterator)
(define-const var2976!3 var3582 (cast-from-var3170-to-var3582 var3455!3)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var3034!3 var3170 (var3582_getKey/-33423493 var2976!3)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3563!3 String (cast-from-var3170-to-String var3034!3)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2362!3 Bool (startsWith/-1785782452 var3563!3 var1448)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2362!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1237!4 Bool (Iterator_hasNext/-1669924200 var3847!4)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var1237!4 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3170-to-var3582=([java.lang.Object], java.util.Map$Entry), var3582_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3170-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1448=r4, var3638=null_type, var3847=r0, var1237=$z0, var3170=java.lang.Object, var3455=$r1, var3582=java.util.Map$Entry, var2976=$r2, var3034=$r3, var3563=$r5, var2362=$z1}
; {r4=var1448, null_type=var3638, r0=var3847, $z0=var1237, java.lang.Object=var3170, $r1=var3455, java.util.Map$Entry=var3582, $r2=var2976, $r3=var3034, $r5=var3563, $z1=var2362}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 4}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	return 1
;block_num 11