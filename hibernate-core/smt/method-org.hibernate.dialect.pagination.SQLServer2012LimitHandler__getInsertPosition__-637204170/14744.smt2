(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1484 0)
(declare-sort var1281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1484 var1484)
(declare-const null-String String)
(declare-const var2376 var1484) ; Statement: r1 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler 
(assert (not (= var2376 null-var1484)))
(declare-const var1319 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1319 null-String)))
(assert true)
(define-const var50 Int (length/-134980193 var1319)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3111 Int (- var50 1)) ; Statement: i3 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i3 <= 0 goto $i1 = i3 + 1 
(assert (<= var3111 0)) ; Cond: i3 <= 0 
(define-const var3641 Int (+ var3111 1)) ; Statement: $i1 = i3 + 1 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1484=org.hibernate.dialect.pagination.SQLServer2012LimitHandler, var2376=r1, var1319=r0, var1281=null_type, var50=$i0, var3111=i3, var3641=$i1}
; {org.hibernate.dialect.pagination.SQLServer2012LimitHandler=var1484, r1=var2376, r0=var1319, null_type=var1281, $i0=var50, i3=var3111, $i1=var3641}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.hibernate.dialect.pagination.SQLServer2012LimitHandler;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = $i0 - 1;	if i3 <= 0 goto $i1 = i3 + 1;	$i1 = i3 + 1;	return $i1
;block_num 3