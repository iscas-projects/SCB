(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/663297651 (var2177) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2177 var2177)
(declare-const null-Int Int)
(declare-const var2672 var2177) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var2672 null-var2177)))
(declare-const var3695 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3695 null-Int)))
(declare-const var1563 Int) ; Statement: c4 := @parameter1: char 
(assert (not (= var1563 null-Int)))
(define-const var3948 Int (+ var3695 1)) ; Statement: $i2 = i0 + 1 
(define-const var708 String (string/663297651 var2672)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert true)
(define-const var2564 Int (length/-134980193 var708)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if $i2 >= $i1 goto $z0 = 0 
(assert (>= var3948 var2564)) ; Cond: $i2 >= $i1 
(define-const var3555 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {string/663297651=([com.mysql.cj.xdevapi.ExprParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2177=com.mysql.cj.xdevapi.ExprParser, var2672=r0, var3695=i0, var1563=c4, var3948=$i2, var708=$r1, var2564=$i1, var3555=$z0}
; {com.mysql.cj.xdevapi.ExprParser=var2177, r0=var2672, i0=var3695, c4=var1563, $i2=var3948, $r1=var708, $i1=var2564, $z0=var3555}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	i0 := @parameter0: int;	c4 := @parameter1: char;	$i2 = i0 + 1;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	if $i2 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3