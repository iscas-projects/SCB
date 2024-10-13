(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ifString/-34059632 (var763) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var763 var763)
(declare-const var3750 var763) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var3750 null-var763)))
(define-const var2162 String (ifString/-34059632 var3750)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert true)
(define-const var1515 Bool (isEmpty/-1285796103 var2162)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert (= (ite var1515 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2819 String (ifString/-34059632 var3750)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ifString/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3750=r0, var2162=$r1, var1515=$z0, var2819=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var763, r0=var3750, $r1=var2162, $z0=var1515, $r2=var2819}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	return $r2
;block_num 3