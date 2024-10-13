(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3971 0)
(declare-sort var1862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1862_isNullOrEmpty/-1369891347 (String) Bool)
(declare-const null-String String)
(declare-const var3516 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3516 null-String)))
(assert true)
(define-const var3582 String (trim/-847153721 var3516)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1580 Bool (var1862_isNullOrEmpty/-1369891347 var3582)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1580 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2675 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), var1862_isNullOrEmpty/-1369891347=([java.lang.String], boolean)}
; {var3516=r0, var3971=null_type, var3582=$r1, var1862=com.mysql.cj.util.StringUtils, var1580=$z0, var2675=$z1}
; {r0=var3516, null_type=var3971, $r1=var3582, com.mysql.cj.util.StringUtils=var1862, $z0=var1580, $z1=var2675}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3