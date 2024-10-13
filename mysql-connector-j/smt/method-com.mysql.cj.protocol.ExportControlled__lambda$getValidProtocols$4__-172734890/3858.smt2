(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var581 0)
(declare-sort var1511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1511_isNullOrEmpty/-1369891347 (String) Bool)
(declare-const null-String String)
(declare-const var2570 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2570 null-String)))
(assert true)
(define-const var2806 String (trim/-847153721 var2570)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var3278 Bool (var1511_isNullOrEmpty/-1369891347 var2806)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3278 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2849 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var1511_isNullOrEmpty/-1369891347=([java.lang.String], boolean)}
; {var2570=r0, var581=null_type, var2806=$r1, var1511=com.mysql.cj.util.StringUtils, var3278=$z0, var2849=$z1}
; {r0=var2570, null_type=var581, $r1=var2806, com.mysql.cj.util.StringUtils=var1511, $z0=var3278, $z1=var2849}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3