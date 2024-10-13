(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var1108 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1108 null-String)))
(assert true)
(define-const var797 Bool (endsWith/985337093 var1108 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
(assert (= (ite var797 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1557 Bool (endsWith/985337093 var1108 "\r")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
 ; Statement: if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= (ite var1557 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3284 Bool (endsWith/985337093 var1108 "\n")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
 ; Statement: if $z2 == 0 goto return r0 
(assert (= (ite var3284 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1108=r0, var1114=null_type, var797=$z0, var1557=$z1, var3284=$z2}
; {r0=var1108, null_type=var1114, $z0=var797, $z1=var1557, $z2=var3284}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 3}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	$z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	if $z2 == 0 goto return r0;	return r0
;block_num 4