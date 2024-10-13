(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var3987 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3987 null-String)))
(assert true)
(define-const var147 Bool (startsWith/-1785782452 var3987 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n") 
(assert (not (= (ite var147 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert (not (and true (and (>= 2 0) (>= (str.len var3987) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3987=r0, var3876=null_type, var147=$z0}
; {r0=var3987, null_type=var3876, $z0=var147}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n");	r0 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(2);	goto [?= return r0];	return r0
;block_num 3