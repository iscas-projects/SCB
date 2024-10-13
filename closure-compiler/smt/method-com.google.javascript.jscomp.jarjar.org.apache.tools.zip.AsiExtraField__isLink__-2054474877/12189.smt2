(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLinkedFile/-758387313 (var3420) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3420 var3420)
(declare-const var731 var3420) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField 
(assert (not (= var731 null-var3420)))
(assert true)
(define-const var1808 String (getLinkedFile/-758387313 var731)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>() 
(assert true)
(define-const var552 Bool (isEmpty/-1285796103 var1808)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var552 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3192 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLinkedFile/-758387313=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3420=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField, var731=r0, var1808=$r1, var552=$z0, var3192=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField=var3420, r0=var731, $r1=var1808, $z0=var552, $z1=var3192}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3