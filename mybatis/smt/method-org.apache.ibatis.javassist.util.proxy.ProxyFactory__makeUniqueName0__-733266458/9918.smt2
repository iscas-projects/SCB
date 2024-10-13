(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1754 0)
(declare-sort var1926 0)
(declare-sort var3753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1926)
(declare-fun cast-from-var1926-to-var3753 (var1926) var3753)
(declare-fun var3753_getKey/-33423493 (var3753) var1926)
(declare-fun cast-from-var1926-to-String (var1926) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var2567 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2567 null-String)))
(declare-const var1714 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var1714 null-Iterator)))
(assert true) ; Non Conditional
(define-const var3819 Bool (Iterator_hasNext/-1669924200 var1714)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3819 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var232 var1926 (Iterator_next/-1124697587 var1714)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1714!1 Iterator)
(define-const var915 var3753 (cast-from-var1926-to-var3753 var232)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var75 var1926 (var3753_getKey/-33423493 var915)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var895 String (cast-from-var1926-to-String var75)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2484 Bool (startsWith/-1785782452 var895 var2567)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2484 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3819!1 Bool (Iterator_hasNext/-1669924200 var1714!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3819!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var232!1 var1926 (Iterator_next/-1124697587 var1714!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1714!2 Iterator)
(define-const var915!1 var3753 (cast-from-var1926-to-var3753 var232!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var75!1 var1926 (var3753_getKey/-33423493 var915!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var895!1 String (cast-from-var1926-to-String var75!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var2484!1 Bool (startsWith/-1785782452 var895!1 var2567)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var2484!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3819!2 Bool (Iterator_hasNext/-1669924200 var1714!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var3819!2 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1926-to-var3753=([java.lang.Object], java.util.Map$Entry), var3753_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var1926-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2567=r4, var1754=null_type, var1714=r0, var3819=$z0, var1926=java.lang.Object, var232=$r1, var3753=java.util.Map$Entry, var915=$r2, var75=$r3, var895=$r5, var2484=$z1}
; {r4=var2567, null_type=var1754, r0=var1714, $z0=var3819, java.lang.Object=var1926, $r1=var232, java.util.Map$Entry=var3753, $r2=var915, $r3=var75, $r5=var895, $z1=var2484}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	return 1
;block_num 7