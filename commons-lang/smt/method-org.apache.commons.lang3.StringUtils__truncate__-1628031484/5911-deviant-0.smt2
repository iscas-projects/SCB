(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1306 0)
(declare-sort var1767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1767_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3641 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3641 null-String)))
(declare-const var3524 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3524 null-Int)))
(declare-const var2602 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2602 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var3524 0)) ; Cond: i0 >= 0 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (>= var2602 0)) ; Cond: i1 >= 0 
 ; Statement: if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3641 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var185 Int (length/-134980193 var3641)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (<= var3524 var185)) ; Cond: i0 <= $i2 
(assert true)
(define-const var765 Int (length/-134980193 var3641)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (not (<= var765 var2602))) ; Negate: Cond: $i3 <= i1  
(define-const var2649 Int (+ var3524 var2602)) ; Statement: $i5 = i0 + i1 
(assert true)
(define-const var2086 Int (length/-134980193 var3641)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3687 Int (var1767_min/-1112089438 var2649 var2086)) ; Statement: i6 = staticinvoke <java.lang.Math: int min(int,int)>($i5, $i4) 
(assert (not (and true (and (>= var3524 0) (>= (str.len var3641) var3687) (>= var3687 var3524)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1767_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3641=r0, var1306=null_type, var3524=i0, var2602=i1, var185=$i2, var765=$i3, var2649=$i5, var2086=$i4, var1767=java.lang.Math, var3687=i6, var1404=$r2}
; {r0=var3641, null_type=var1306, i0=var3524, i1=var2602, $i2=var185, $i3=var765, $i5=var2649, $i4=var2086, java.lang.Math=var1767, i6=var3687, $r2=var1404}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 >= 0 goto (branch);	if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	if $i3 <= i1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	$i5 = i0 + i1;	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = staticinvoke <java.lang.Math: int min(int,int)>($i5, $i4);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i6);	return $r2
;block_num 6