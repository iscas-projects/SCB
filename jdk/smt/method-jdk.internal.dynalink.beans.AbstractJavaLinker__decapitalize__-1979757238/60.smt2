(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort var337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var337-$assertionsDisabled Bool)
(declare-const var1776 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1776 null-String)))
(define-const var353 Bool var337-$assertionsDisabled) ; Statement: $z0 = <jdk.internal.dynalink.beans.AbstractJavaLinker: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
(assert (not (= (ite var353 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1248 Bool (isEmpty/-1285796103 var1776)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1248 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1776=r0, var1216=null_type, var337=jdk.internal.dynalink.beans.AbstractJavaLinker, var353=$z0, var1248=$z1}
; {r0=var1776, null_type=var1216, jdk.internal.dynalink.beans.AbstractJavaLinker=var337, $z0=var353, $z1=var1248}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = <jdk.internal.dynalink.beans.AbstractJavaLinker: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return r0
;block_num 3