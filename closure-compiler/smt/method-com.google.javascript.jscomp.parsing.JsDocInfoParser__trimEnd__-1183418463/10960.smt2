(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2131 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2131 null-String)))
(define-const var866 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var248 Int (length/-134980193 var2131)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto (branch) 
(assert (>= var866 var248)) ; Cond: i7 >= $i0 
 ; Statement: if i7 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var866 0))) ; Cond: i7 != 0 
(assert true)
(define-const var3836 Int (length/-134980193 var2131)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2196 Int (- var3836 var866)) ; Statement: $i2 = $i1 - i7 
(assert (and true (and (>= 0 0) (>= (str.len var2131) var2196) (>= var2196 0))))
(define-const var3830 String (substring/-1240304868 var2131 0 var2196)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2131=r0, var2665=null_type, var866=i7, var248=$i0, var3836=$i1, var2196=$i2, var3830=$r1}
; {r0=var2131, null_type=var2665, i7=var866, $i0=var248, $i1=var3836, $i2=var2196, $r1=var3830}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto (branch);	if i7 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - i7;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	return $r1
;block_num 4