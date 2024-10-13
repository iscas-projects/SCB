(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ifString/-34059632 (var763) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var763 var763)
(declare-const null-String String)
(declare-const var1332 var763) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var1332 null-var763)))
(define-const var895 String (ifString/-34059632 var1332)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert true)
(define-const var2119 Bool (isEmpty/-1285796103 var895)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString> 
(assert (not (= (ite var2119 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2221 String null-String) ; Statement: $r2 = null 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ifString/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var1332=r0, var895=$r1, var2119=$z0, var359=null_type, var2221=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var763, r0=var1332, $r1=var895, $z0=var2119, null_type=var359, $r2=var2221}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String ifString>;	$r2 = null;	goto [?= return $r2];	return $r2
;block_num 3