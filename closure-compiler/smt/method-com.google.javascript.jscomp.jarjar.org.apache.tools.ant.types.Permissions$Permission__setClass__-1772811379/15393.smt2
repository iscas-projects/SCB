(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var2787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun className/-1608030493 (var2478) String)
(declare-const null-var2478 var2478)
(declare-const null-String String)
(declare-const var2492 var2478) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission 
(assert (not (= var2492 null-var2478)))
(declare-const var2965 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2965 null-String)))
(assert true)
(define-const var2756 String (trim/-847153721 var2965)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var2492!1 var2478)
(assert (not (= var2492!1 null-var2478)))
(assert (= (className/-1608030493 var2492!1) var2756)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), className/-1608030493=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission], java.lang.String)}
; {var2478=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission, var2492=r0, var2965=r1, var2787=null_type, var2756=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission=var2478, r0=var2492, r1=var2965, null_type=var2787, $r2=var2756}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Permissions$Permission: java.lang.String className> = $r2;	return
;block_num 1