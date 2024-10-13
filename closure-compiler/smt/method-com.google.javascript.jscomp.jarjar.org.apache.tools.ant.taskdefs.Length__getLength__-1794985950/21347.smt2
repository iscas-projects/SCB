(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1585 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1585 null-String)))
(declare-const var695 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var695 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = r0 
(assert (not (= (ite var695 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var953 String (trim/-847153721 var1585)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
 ; Statement: goto [?= $i0 = virtualinvoke $r1.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3977 Int (length/-134980193 var953)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2241 Int (cast-from-Int-to-Int var3977)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var1585=r0, var3699=null_type, var695=z0, var953=$r1, var3977=$i0, var2241=$l1}
; {r0=var1585, null_type=var3699, z0=var695, $r1=var953, $i0=var3977, $l1=var2241}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r1 = r0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	goto [?= $i0 = virtualinvoke $r1.<java.lang.String: int length()>()];	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 3