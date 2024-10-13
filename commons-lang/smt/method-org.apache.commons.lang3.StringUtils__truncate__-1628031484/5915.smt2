(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3433 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3433 null-String)))
(declare-const var1415 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1415 null-Int)))
(declare-const var86 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var86 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var1415 0)) ; Cond: i0 >= 0 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (>= var86 0)) ; Cond: i1 >= 0 
 ; Statement: if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3433 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1472 Int (length/-134980193 var3433)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (<= var1415 var1472)) ; Cond: i0 <= $i2 
(assert true)
(define-const var1402 Int (length/-134980193 var3433)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (<= var1402 var86)) ; Cond: $i3 <= i1 
(assert (and true (and (>= var1415 0) (>= (str.len var3433) var1415))))
(define-const var3535 String (substring/850833817 var3433 var1415)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3433=r0, var3466=null_type, var1415=i0, var86=i1, var1472=$i2, var1402=$i3, var3535=$r1}
; {r0=var3433, null_type=var3466, i0=var1415, i1=var86, $i2=var1472, $i3=var1402, $r1=var3535}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 >= 0 goto (branch);	if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	if $i3 <= i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	return $r1
;block_num 6