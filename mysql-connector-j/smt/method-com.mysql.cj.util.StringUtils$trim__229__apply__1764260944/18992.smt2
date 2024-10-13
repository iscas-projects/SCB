(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3277 0)
(declare-sort var2263 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2263-to-String (var2263) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3277 var3277)
(declare-const null-var2263 var2263)
(declare-const var2506 var3277) ; Statement: $r0 := @this: com.mysql.cj.util.StringUtils$trim__229 
(assert (not (= var2506 null-var3277)))
(declare-const var3227 var2263) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3227 null-var2263)))
(define-const var1013 String (cast-from-var2263-to-String var3227)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var770 String (trim/-847153721 var1013)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2263-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3277=com.mysql.cj.util.StringUtils$trim__229, var2506=$r0, var2263=java.lang.Object, var3227=$r1, var1013=$r2, var770=$r3}
; {com.mysql.cj.util.StringUtils$trim__229=var3277, $r0=var2506, java.lang.Object=var2263, $r1=var3227, $r2=var1013, $r3=var770}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts $r0 := @this: com.mysql.cj.util.StringUtils$trim__229;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1