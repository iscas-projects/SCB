(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLinkedFile/-758387313 (var1522) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1522 var1522)
(declare-const var272 var1522) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField 
(assert (not (= var272 null-var1522)))
(assert true)
(define-const var3345 String (getLinkedFile/-758387313 var272)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>() 
(assert true)
(define-const var1840 Bool (isEmpty/-1285796103 var3345)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1840 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2030 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLinkedFile/-758387313=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1522=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField, var272=r0, var3345=$r1, var1840=$z0, var2030=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField=var1522, r0=var272, $r1=var3345, $z0=var1840, $z1=var2030}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AsiExtraField: java.lang.String getLinkedFile()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3