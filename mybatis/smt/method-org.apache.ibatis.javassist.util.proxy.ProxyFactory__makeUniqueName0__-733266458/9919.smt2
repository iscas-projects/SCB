(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var790 0)
(declare-sort var184 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var184)
(declare-fun cast-from-var184-to-var553 (var184) var553)
(declare-fun var553_getKey/-33423493 (var553) var184)
(declare-fun cast-from-var184-to-String (var184) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var3910 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3910 null-String)))
(declare-const var2727 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var2727 null-Iterator)))
(assert true) ; Non Conditional
(define-const var3614 Bool (Iterator_hasNext/-1669924200 var2727)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3614 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3747 var184 (Iterator_next/-1124697587 var2727)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2727!1 Iterator)
(define-const var2488 var553 (cast-from-var184-to-var553 var3747)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1145 var184 (var553_getKey/-33423493 var2488)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var554 String (cast-from-var184-to-String var1145)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var1366 Bool (startsWith/-1785782452 var554 var3910)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1366 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3614!1 Bool (Iterator_hasNext/-1669924200 var2727!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3614!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3747!1 var184 (Iterator_next/-1124697587 var2727!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2727!2 Iterator)
(define-const var2488!1 var553 (cast-from-var184-to-var553 var3747!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1145!1 var184 (var553_getKey/-33423493 var2488!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var554!1 String (cast-from-var184-to-String var1145!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var1366!1 Bool (startsWith/-1785782452 var554!1 var3910)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var1366!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3614!2 Bool (Iterator_hasNext/-1669924200 var2727!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3614!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3747!2 var184 (Iterator_next/-1124697587 var2727!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2727!3 Iterator)
(define-const var2488!2 var553 (cast-from-var184-to-var553 var3747!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1145!2 var184 (var553_getKey/-33423493 var2488!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var554!2 String (cast-from-var184-to-String var1145!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var1366!2 Bool (startsWith/-1785782452 var554!2 var3910)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var1366!2 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var184-to-var553=([java.lang.Object], java.util.Map$Entry), var553_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var184-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3910=r4, var790=null_type, var2727=r0, var3614=$z0, var184=java.lang.Object, var3747=$r1, var553=java.util.Map$Entry, var2488=$r2, var1145=$r3, var554=$r5, var1366=$z1}
; {r4=var3910, null_type=var790, r0=var2727, $z0=var3614, java.lang.Object=var184, $r1=var3747, java.util.Map$Entry=var553, $r2=var2488, $r3=var1145, $r5=var554, $z1=var1366}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 3}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	return 0
;block_num 8