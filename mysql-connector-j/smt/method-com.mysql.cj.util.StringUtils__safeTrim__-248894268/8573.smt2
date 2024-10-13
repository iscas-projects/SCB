(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var1207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1207_isNullOrEmpty/-1369891347 (String) Bool)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-String String)
(declare-const var1206 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1206 null-String)))
(define-const var2552 Bool (var1207_isNullOrEmpty/-1369891347 var1206)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert (= (ite var2552 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3389 String (trim/-847153721 var1206)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1207_isNullOrEmpty/-1369891347=([java.lang.String], boolean), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1206=r0, var2861=null_type, var1207=com.mysql.cj.util.StringUtils, var2552=$z0, var3389=$r1}
; {r0=var1206, null_type=var2861, com.mysql.cj.util.StringUtils=var1207, $z0=var2552, $r1=var3389}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	return $r1
;block_num 3