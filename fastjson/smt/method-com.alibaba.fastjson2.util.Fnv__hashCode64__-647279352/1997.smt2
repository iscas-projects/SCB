(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2839 null-String)))
(assert true)
(define-const var3822 Int (length/-134980193 var2839)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 8 goto l15 = -3750763034362895579L 
(assert (> var3822 8)) ; Cond: $i0 > 8 
(define-const var2821 Int (- 3750763034362895579)) ; Statement: l15 = -3750763034362895579L 
(define-const var650 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var697 Int (length/-134980193 var2839)) ; Statement: $i17 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i16 >= $i17 goto return l15 
(assert (>= var650 var697)) ; Cond: i16 >= $i17 
 ; Statement: return l15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2839=r0, var2855=null_type, var3822=$i0, var2821=l15, var650=i16, var697=$i17}
; {r0=var2839, null_type=var2855, $i0=var3822, l15=var2821, i16=var650, $i17=var697}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 8 goto l15 = -3750763034362895579L;	l15 = -3750763034362895579L;	i16 = 0;	$i17 = virtualinvoke r0.<java.lang.String: int length()>();	if i16 >= $i17 goto return l15;	return l15
;block_num 4