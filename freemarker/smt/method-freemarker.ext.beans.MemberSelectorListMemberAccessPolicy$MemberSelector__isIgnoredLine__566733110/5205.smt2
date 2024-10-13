(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1219 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1219 null-String)))
(assert true)
(define-const var229 String (trim/-847153721 var1219)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1742 Int (length/-134980193 var229)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $z2 = 1 
(assert (= var1742 0)) ; Cond: $i0 == 0 
(define-const var4 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1219=r0, var3187=null_type, var229=r1, var1742=$i0, var4=$z2}
; {r0=var1219, null_type=var3187, r1=var229, $i0=var1742, $z2=var4}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3