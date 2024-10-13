(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3121 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3121 null-String)))
(assert true)
(define-const var3180 Bool (startsWith/-1785782452 var3121 "`")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("`") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
(assert (not (= (ite var3180 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2912 Bool (endsWith/985337093 var3121 "`")) ; Statement: $z5 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("`") 
 ; Statement: if $z5 != 0 goto $z6 = 1 
(assert (not (= (ite var2912 1 0) 0))) ; Cond: $z5 != 0 
(define-const var999 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= return $z6] 
(assert true) ; Non Conditional
 ; Statement: return $z6 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3121=r0, var1773=null_type, var3180=$z0, var2912=$z5, var999=$z6}
; {r0=var3121, null_type=var1773, $z0=var3180, $z5=var2912, $z6=var999}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("`");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[");	$z5 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("`");	if $z5 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= return $z6];	return $z6
;block_num 4