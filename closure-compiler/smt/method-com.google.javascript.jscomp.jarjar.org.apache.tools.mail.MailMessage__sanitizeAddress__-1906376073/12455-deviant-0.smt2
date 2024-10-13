(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2660 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2660 null-String)))
(define-const var1953 Int 0) ; Statement: i2 = 0 
(define-const var2709 Int 0) ; Statement: i3 = 0 
(define-const var1533 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2842 Int (length/-134980193 var2660)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var450 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var450 var2842)) ; Cond: i5 >= i0 
 ; Statement: if i4 != 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert (not (= var1533 0))) ; Cond: i4 != 0 
(assert (not (and true (and (>= var2709 0) (>= (str.len var2660) var1533) (>= var1533 var2709)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2660=r0, var1356=null_type, var1953=i2, var2709=i3, var1533=i4, var2842=i0, var450=i5, var3305=$r1}
; {r0=var2660, null_type=var1356, i2=var1953, i3=var2709, i4=var1533, i0=var2842, i5=var450, $r1=var3305}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	i4 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = 0;	if i5 >= i0 goto (branch);	if i4 != 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	return $r1
;block_num 4