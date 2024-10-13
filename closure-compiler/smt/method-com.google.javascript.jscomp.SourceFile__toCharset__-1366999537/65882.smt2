(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1429 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3199_forName/2087592900 (String) var3199)
(declare-const null-String String)
(declare-const var3712 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3712 null-String)))
(assert true)
(define-const var803 Bool (isEmpty/-1285796103 var3712)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0) 
(assert (= (ite var803 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1278 var3199 (var3199_forName/2087592900 var3712)) ; Statement: $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3199_forName/2087592900=([java.lang.String], java.nio.charset.Charset)}
; {var3712=r0, var1429=null_type, var803=$z0, var3199=java.nio.charset.Charset, var1278=$r1}
; {r0=var3712, null_type=var1429, $z0=var803, java.nio.charset.Charset=var3199, $r1=var1278}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0);	$r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0);	return $r1
;block_num 2