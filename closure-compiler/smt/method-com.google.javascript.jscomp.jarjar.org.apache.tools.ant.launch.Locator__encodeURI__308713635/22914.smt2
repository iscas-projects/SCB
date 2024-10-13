(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3726 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3726 null-String)))
(define-const var2788 Int 0) ; Statement: i12 = 0 
(assert true)
(define-const var1460 Int (length/-134980193 var3726)) ; Statement: i13 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var956 String null-String) ; Statement: r16 = null 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i13 goto (branch) 
(assert (>= var2788 var1460)) ; Cond: i12 >= i13 
 ; Statement: if i12 >= i13 goto (branch) 
(assert (>= var2788 var1460)) ; Cond: i12 >= i13 
 ; Statement: if r16 != null goto $r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var956 null-String)))) ; Negate: Cond: r16 != null  
(define-const var2946 String var3726) ; Statement: $r17 = r0 
 ; Statement: goto [?= return $r17] 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3726=r0, var3885=null_type, var2788=i12, var1460=i13, var956=r16, var2946=$r17}
; {r0=var3726, null_type=var3885, i12=var2788, i13=var1460, r16=var956, $r17=var2946}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i12 = 0;	i13 = virtualinvoke r0.<java.lang.String: int length()>();	r16 = null;	if i12 >= i13 goto (branch);	if i12 >= i13 goto (branch);	if r16 != null goto $r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = r0;	goto [?= return $r17];	return $r17
;block_num 6