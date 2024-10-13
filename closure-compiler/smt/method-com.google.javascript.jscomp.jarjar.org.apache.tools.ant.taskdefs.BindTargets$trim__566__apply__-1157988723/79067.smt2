(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3327 0)
(declare-sort var1696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1696-to-String (var1696) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3327 var3327)
(declare-const null-var1696 var1696)
(declare-const var2381 var3327) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566 
(assert (not (= var2381 null-var3327)))
(declare-const var2884 var1696) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2884 null-var1696)))
(define-const var1952 String (cast-from-var1696-to-String var2884)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var3198 String (trim/-847153721 var1952)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1696-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3327=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566, var2381=$r0, var1696=java.lang.Object, var2884=$r1, var1952=$r2, var3198=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566=var3327, $r0=var2381, java.lang.Object=var1696, $r1=var2884, $r2=var1952, $r3=var3198}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.BindTargets$trim__566;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1