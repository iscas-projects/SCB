(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3722 0)
(declare-sort var3232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3232-to-String (var3232) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var3722 var3722)
(declare-const null-var3232 var3232)
(declare-const var1390 var3722) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$trim__492 
(assert (not (= var1390 null-var3722)))
(declare-const var2916 var3232) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var2916 null-var3232)))
(define-const var3507 String (cast-from-var3232-to-String var2916)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var76 String (trim/-847153721 var3507)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3232-to-String=([java.lang.Object], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var3722=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$trim__492, var1390=$r0, var3232=java.lang.Object, var2916=$r1, var3507=$r2, var76=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$trim__492=var3722, $r0=var1390, java.lang.Object=var3232, $r1=var2916, $r2=var3507, $r3=var76}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SetPermissions$trim__492;	$r1 := @parameter0: java.lang.Object;	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 1