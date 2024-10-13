(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2283 0)
(declare-sort var850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var850-to-String (var850) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var2283 var2283)
(declare-const null-var850 var850)
(declare-const var1772 var2283) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$trim__423 
(assert (not (= var1772 null-var2283)))
(declare-const var3947 var850) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3947 null-var850)))
(define-const var2621 String (cast-from-var850-to-String var3947)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1830 String (trim/-847153721 var2621)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var850-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var2283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$trim__423, var1772=$r0, var850=java.lang.Object, var3947=$r1, var2621=$r2, var1830=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$trim__423=var2283, $r0=var1772, java.lang.Object=var850, $r1=var3947, $r2=var2621, $r3=var1830}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah$trim__423;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1