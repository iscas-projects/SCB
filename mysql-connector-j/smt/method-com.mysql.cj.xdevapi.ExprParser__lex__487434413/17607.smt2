(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun string/663297651 (var1341) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1341 var1341)
(declare-const var2773 var1341) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var2773 null-var1341)))
(define-const var1718 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
(define-const var3392 String (string/663297651 var2773)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert true)
(define-const var1946 Int (length/-134980193 var3392)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i15 >= $i0 goto return 
(assert (>= var1718 var1946)) ; Cond: i15 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {string/663297651=([com.mysql.cj.xdevapi.ExprParser], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1341=com.mysql.cj.xdevapi.ExprParser, var2773=r0, var1718=i15, var3392=$r1, var1946=$i0}
; {com.mysql.cj.xdevapi.ExprParser=var1341, r0=var2773, i15=var1718, $r1=var3392, $i0=var1946}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	i15 = 0;	$r1 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i15 >= $i0 goto return;	return
;block_num 3