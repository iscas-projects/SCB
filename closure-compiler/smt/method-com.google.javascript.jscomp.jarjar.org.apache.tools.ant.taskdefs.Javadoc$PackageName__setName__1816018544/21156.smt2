(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var968 0)
(declare-sort var2176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun name/138629415 (var968) String)
(declare-const null-var968 var968)
(declare-const null-String String)
(declare-const var3714 var968) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName 
(assert (not (= var3714 null-var968)))
(declare-const var2376 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2376 null-String)))
(assert true)
(define-const var3016 String (trim/-847153721 var2376)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var3714!1 var968)
(assert (not (= var3714!1 null-var968)))
(assert (= (name/138629415 var3714!1) var3016)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName: java.lang.String name> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), name/138629415=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName], java.lang.String)}
; {var968=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName, var3714=r0, var2376=r1, var2176=null_type, var3016=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName=var968, r0=var3714, r1=var2376, null_type=var2176, $r2=var3016}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$PackageName: java.lang.String name> = $r2;	return
;block_num 1