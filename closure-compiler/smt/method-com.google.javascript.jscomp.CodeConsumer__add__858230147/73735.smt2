(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maybeEndStatement/-1830043069 (var2828) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2828 var2828)
(declare-const null-String String)
(declare-const var2482 var2828) ; Statement: r0 := @this: com.google.javascript.jscomp.CodeConsumer 
(assert (not (= var2482 null-var2828)))
(declare-const var2772 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2772 null-String)))
(assert true)
;(assert (maybeEndStatement/-1830043069 var2482)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void maybeEndStatement()>() 

(declare-const var2482!1 var2828)
(assert true)
(define-const var1878 Bool (isEmpty/-1285796103 var2772)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1878 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {maybeEndStatement/-1830043069=([com.google.javascript.jscomp.CodeConsumer], void), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2828=com.google.javascript.jscomp.CodeConsumer, var2482=r0, var2772=r1, var918=null_type, var1878=$z0}
; {com.google.javascript.jscomp.CodeConsumer=var2828, r0=var2482, r1=var2772, null_type=var918, $z0=var1878}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodeConsumer;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void maybeEndStatement()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	return
;block_num 2