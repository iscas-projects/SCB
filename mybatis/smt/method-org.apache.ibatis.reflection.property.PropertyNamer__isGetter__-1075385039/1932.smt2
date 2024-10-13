(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3576 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3576 null-String)))
(assert true)
(define-const var232 Bool (startsWith/-1785782452 var3576 "get")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
(assert (not (= (ite var232 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var923 Int (length/-134980193 var3576)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 > 3 goto $z2 = 1 
(assert (> var923 3)) ; Cond: $i1 > 3 
(define-const var3036 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int)}
; {var3576=r0, var2052=null_type, var232=$z0, var923=$i1, var3036=$z2}
; {r0=var3576, null_type=var2052, $z0=var232, $i1=var923, $z2=var3036}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 > 3 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4