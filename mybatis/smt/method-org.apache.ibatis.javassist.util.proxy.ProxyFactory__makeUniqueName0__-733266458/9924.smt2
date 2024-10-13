(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var197 0)
(declare-sort var57 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var197)
(declare-fun cast-from-var197-to-var57 (var197) var57)
(declare-fun var57_getKey/-33423493 (var57) var197)
(declare-fun cast-from-var197-to-String (var197) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const null-Iterator Iterator)
(declare-const var1684 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1684 null-String)))
(declare-const var3594 Iterator) ; Statement: r0 := @parameter1: java.util.Iterator 
(assert (not (= var3594 null-Iterator)))
(assert true) ; Non Conditional
(define-const var3623 Bool (Iterator_hasNext/-1669924200 var3594)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3623 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var345 var197 (Iterator_next/-1124697587 var3594)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3594!1 Iterator)
(define-const var3025 var57 (cast-from-var197-to-var57 var345)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1170 var197 (var57_getKey/-33423493 var3025)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var891 String (cast-from-var197-to-String var1170)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3516 Bool (startsWith/-1785782452 var891 var1684)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3516 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3623!1 Bool (Iterator_hasNext/-1669924200 var3594!1)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3623!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var345!1 var197 (Iterator_next/-1124697587 var3594!1)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3594!2 Iterator)
(define-const var3025!1 var57 (cast-from-var197-to-var57 var345!1)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1170!1 var197 (var57_getKey/-33423493 var3025!1)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var891!1 String (cast-from-var197-to-String var1170!1)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3516!1 Bool (startsWith/-1785782452 var891!1 var1684)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3516!1 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3623!2 Bool (Iterator_hasNext/-1669924200 var3594!2)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3623!2 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var345!2 var197 (Iterator_next/-1124697587 var3594!2)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3594!3 Iterator)
(define-const var3025!2 var57 (cast-from-var197-to-var57 var345!2)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1170!2 var197 (var57_getKey/-33423493 var3025!2)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var891!2 String (cast-from-var197-to-String var1170!2)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3516!2 Bool (startsWith/-1785782452 var891!2 var1684)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3516!2 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3623!3 Bool (Iterator_hasNext/-1669924200 var3594!3)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3623!3 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var345!3 var197 (Iterator_next/-1124697587 var3594!3)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3594!4 Iterator)
(define-const var3025!3 var57 (cast-from-var197-to-var57 var345!3)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1170!3 var197 (var57_getKey/-33423493 var3025!3)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var891!3 String (cast-from-var197-to-String var1170!3)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3516!3 Bool (startsWith/-1785782452 var891!3 var1684)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3516!3 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3623!4 Bool (Iterator_hasNext/-1669924200 var3594!4)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (not (= (ite var3623!4 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var345!4 var197 (Iterator_next/-1124697587 var3594!4)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3594!5 Iterator)
(define-const var3025!4 var57 (cast-from-var197-to-var57 var345!4)) ; Statement: $r2 = (java.util.Map$Entry) $r1 
(define-const var1170!4 var197 (var57_getKey/-33423493 var3025!4)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var891!4 String (cast-from-var197-to-String var1170!4)) ; Statement: $r5 = (java.lang.String) $r3 
(assert true)
(define-const var3516!4 Bool (startsWith/-1785782452 var891!4 var1684)) ; Statement: $z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
 ; Statement: if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
(assert (= (ite var3516!4 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3623!5 Bool (Iterator_hasNext/-1669924200 var3594!5)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 1 
(assert (= (ite var3623!5 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var197-to-var57=([java.lang.Object], java.util.Map$Entry), var57_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var197-to-String=([java.lang.Object], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1684=r4, var2301=null_type, var3594=r0, var3623=$z0, var197=java.lang.Object, var345=$r1, var57=java.util.Map$Entry, var3025=$r2, var1170=$r3, var891=$r5, var3516=$z1}
; {r4=var1684, null_type=var2301, r0=var3594, $z0=var3623, java.lang.Object=var197, $r1=var345, java.util.Map$Entry=var57, $r2=var3025, $r3=var1170, $r5=var891, $z1=var3516}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 5}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.Iterator;	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r2 = (java.util.Map$Entry) $r1;	$r3 = interfaceinvoke $r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r3;	$z1 = virtualinvoke $r5.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	if $z1 == 0 goto $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 1;	return 1
;block_num 13