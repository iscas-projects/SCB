(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun unlessString/-34059632 (var1594) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1594 var1594)
(declare-const var278 var1594) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var278 null-var1594)))
(define-const var3732 String (unlessString/-34059632 var278)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString> 
(assert true)
(define-const var1221 Bool (isEmpty/-1285796103 var3732)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString> 
(assert (= (ite var1221 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2064 String (unlessString/-34059632 var278)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString> 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {unlessString/-34059632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1594=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var278=r0, var3732=$r1, var1221=$z0, var2064=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1594, r0=var278, $r1=var3732, $z0=var1221, $r2=var2064}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String unlessString>;	return $r2
;block_num 3