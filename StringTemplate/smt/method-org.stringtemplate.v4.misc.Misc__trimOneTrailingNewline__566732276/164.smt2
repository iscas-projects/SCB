(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3679 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3679 null-String)))
(assert true)
(define-const var1028 Bool (endsWith/985337093 var3679 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
(assert (= (ite var1028 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3982 Bool (endsWith/985337093 var3679 "\n")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
 ; Statement: if $z1 == 0 goto return r0 
(assert (= (ite var3982 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3679=r0, var2120=null_type, var1028=$z0, var3982=$z1}
; {r0=var3679, null_type=var2120, $z0=var1028, $z1=var3982}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	$z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	if $z1 == 0 goto return r0;	return r0
;block_num 3