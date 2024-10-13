(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort var2514 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2514)
(declare-fun cast-from-var2514-to-var1914 (var2514) var1914)
(declare-fun var1914_getKey/-33423493 (var1914) var2514)
(declare-fun cast-from-var2514-to-String (var2514) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var1436 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1436 null-String)))
(declare-const var96 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var96 null-Iterator)))
(assert true) ; Non Conditional
(define-const var3430 Bool (Iterator_hasNext/-1669924200 var96)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3430 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1135 var2514 (Iterator_next/-1124697587 var96)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var96!1 Iterator)
(define-const var3983 var1914 (cast-from-var2514-to-var1914 var1135)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var3991 var2514 (var1914_getKey/-33423493 var3983)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3843 String (cast-from-var2514-to-String var3991)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var348 Bool (startsWith/-1785782452 var3843 var1436)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= (ite var348 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2514-to-var1914=([java.lang.Object], java.util.Map$Entry), var1914_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var2514-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1436=r4, var3464=null_type, var96=r0, var3430=$z0, var2514=java.lang.Object, var1135=$r1, var1914=java.util.Map$Entry, var3983=$r2, var3991=$r3, var3843=$r5, var348=$z1}
; {r4=var1436, null_type=var3464, r0=var96, $z0=var3430, java.lang.Object=var2514, $r1=var1135, java.util.Map$Entry=var1914, $r2=var3983, $r3=var3991, $r5=var3843, $z1=var348}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	return 0
;block_num 4