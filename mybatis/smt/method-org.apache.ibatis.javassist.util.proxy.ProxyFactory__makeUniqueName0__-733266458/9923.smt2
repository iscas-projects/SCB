(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var3380 0)
(declare-sort var820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3380)
(declare-fun cast-from-var3380-to-var820 (var3380) var820)
(declare-fun var820_getKey/-33423493 (var820) var3380)
(declare-fun cast-from-var3380-to-String (var3380) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var2377 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2377 null-String)))
(declare-const var3614 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var3614 null-Iterator)))
(assert true) ; Non Conditional
(define-const var2728 Bool (Iterator_hasNext/-1669924200 var3614)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2728 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1471 var3380 (Iterator_next/-1124697587 var3614)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3614!1 Iterator)
(define-const var1613 var820 (cast-from-var3380-to-var820 var1471)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1295 var3380 (var820_getKey/-33423493 var1613)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1720 String (cast-from-var3380-to-String var1295)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2590 Bool (startsWith/-1785782452 var1720 var2377)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2590 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2728!1 Bool (Iterator_hasNext/-1669924200 var3614!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2728!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1471!1 var3380 (Iterator_next/-1124697587 var3614!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3614!2 Iterator)
(define-const var1613!1 var820 (cast-from-var3380-to-var820 var1471!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1295!1 var3380 (var820_getKey/-33423493 var1613!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1720!1 String (cast-from-var3380-to-String var1295!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2590!1 Bool (startsWith/-1785782452 var1720!1 var2377)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2590!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2728!2 Bool (Iterator_hasNext/-1669924200 var3614!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2728!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1471!2 var3380 (Iterator_next/-1124697587 var3614!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3614!3 Iterator)
(define-const var1613!2 var820 (cast-from-var3380-to-var820 var1471!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1295!2 var3380 (var820_getKey/-33423493 var1613!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1720!2 String (cast-from-var3380-to-String var1295!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2590!2 Bool (startsWith/-1785782452 var1720!2 var2377)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2590!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2728!3 Bool (Iterator_hasNext/-1669924200 var3614!3)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2728!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1471!3 var3380 (Iterator_next/-1124697587 var3614!3)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3614!4 Iterator)
(define-const var1613!3 var820 (cast-from-var3380-to-var820 var1471!3)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1295!3 var3380 (var820_getKey/-33423493 var1613!3)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1720!3 String (cast-from-var3380-to-String var1295!3)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2590!3 Bool (startsWith/-1785782452 var1720!3 var2377)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2590!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2728!4 Bool (Iterator_hasNext/-1669924200 var3614!4)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2728!4 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1471!4 var3380 (Iterator_next/-1124697587 var3614!4)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3614!5 Iterator)
(define-const var1613!4 var820 (cast-from-var3380-to-var820 var1471!4)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1295!4 var3380 (var820_getKey/-33423493 var1613!4)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1720!4 String (cast-from-var3380-to-String var1295!4)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2590!4 Bool (startsWith/-1785782452 var1720!4 var2377)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var2590!4 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3380-to-var820=([java.lang.Object], java.util.Map$Entry), var820_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3380-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2377=r4, var2367=null_type, var3614=r0, var2728=$z0, var3380=java.lang.Object, var1471=$r1, var820=java.util.Map$Entry, var1613=$r2, var1295=$r3, var1720=$r5, var2590=$z1}
; {r4=var2377, null_type=var2367, r0=var3614, $z0=var2728, java.lang.Object=var3380, $r1=var1471, java.util.Map$Entry=var820, $r2=var1613, $r3=var1295, $r5=var1720, $z1=var2590}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 5}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	return 0
;block_num 12