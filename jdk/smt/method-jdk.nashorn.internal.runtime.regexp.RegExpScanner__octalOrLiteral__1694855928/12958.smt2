(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var3821 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3821 null-String)))
(declare-const var3458 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3458 null-String)))
(assert true)
(define-const var277 Int (length/-134980193 var3821)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2297 Int 0) ; Statement: i4 = 0 
(define-const var1658 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var1658 var277)) ; Cond: i5 >= i0 
 ; Statement: if i4 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (<= var2297 0)) ; Cond: i4 <= 0 
(assert true)
;(assert (append/672562846 var3458 var3821)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 var3821)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3821=r0, var3694=null_type, var3458=r1, var277=i0, var2297=i4, var1658=i5}
; {r0=var3821, null_type=var3694, r1=var3458, i0=var277, i4=var2297, i5=var1658}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = 0;	if i5 >= i0 goto (branch);	if i4 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	return
;block_num 5