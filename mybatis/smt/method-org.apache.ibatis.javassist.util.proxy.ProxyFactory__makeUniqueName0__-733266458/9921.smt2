(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2841 0)
(declare-sort var2681 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2681)
(declare-fun cast-from-var2681-to-var2558 (var2681) var2558)
(declare-fun var2558_getKey/-33423493 (var2558) var2681)
(declare-fun cast-from-var2681-to-String (var2681) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var1028 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1028 null-String)))
(declare-const var543 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var543 null-Iterator)))
(assert true) ; Non Conditional
(define-const var2174 Bool (Iterator_hasNext/-1669924200 var543)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2174 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var771 var2681 (Iterator_next/-1124697587 var543)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var543!1 Iterator)
(define-const var2684 var2558 (cast-from-var2681-to-var2558 var771)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var151 var2681 (var2558_getKey/-33423493 var2684)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2649 String (cast-from-var2681-to-String var151)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2 Bool (startsWith/-1785782452 var2649 var1028)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2174!1 Bool (Iterator_hasNext/-1669924200 var543!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2174!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var771!1 var2681 (Iterator_next/-1124697587 var543!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var543!2 Iterator)
(define-const var2684!1 var2558 (cast-from-var2681-to-var2558 var771!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var151!1 var2681 (var2558_getKey/-33423493 var2684!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2649!1 String (cast-from-var2681-to-String var151!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2!1 Bool (startsWith/-1785782452 var2649!1 var1028)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2174!2 Bool (Iterator_hasNext/-1669924200 var543!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2174!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var771!2 var2681 (Iterator_next/-1124697587 var543!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var543!3 Iterator)
(define-const var2684!2 var2558 (cast-from-var2681-to-var2558 var771!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var151!2 var2681 (var2558_getKey/-33423493 var2684!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2649!2 String (cast-from-var2681-to-String var151!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2!2 Bool (startsWith/-1785782452 var2649!2 var1028)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2174!3 Bool (Iterator_hasNext/-1669924200 var543!3)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var2174!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var771!3 var2681 (Iterator_next/-1124697587 var543!3)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var543!4 Iterator)
(define-const var2684!3 var2558 (cast-from-var2681-to-var2558 var771!3)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var151!3 var2681 (var2558_getKey/-33423493 var2684!3)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2649!3 String (cast-from-var2681-to-String var151!3)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2!3 Bool (startsWith/-1785782452 var2649!3 var1028)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var2!3 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2681-to-var2558=([java.lang.Object], java.util.Map$Entry), var2558_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2681-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1028=r4, var2841=null_type, var543=r0, var2174=$z0, var2681=java.lang.Object, var771=$r1, var2558=java.util.Map$Entry, var2684=$r2, var151=$r3, var2649=$r5, var2=$z1}
; {r4=var1028, null_type=var2841, r0=var543, $z0=var2174, java.lang.Object=var2681, $r1=var771, java.util.Map$Entry=var2558, $r2=var2684, $r3=var151, $r5=var2649, $z1=var2}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 4}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	return 0
;block_num 10