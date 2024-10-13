(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2576 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun prefix/112281648 (var2576) String)
(declare-const null-var2576 var2576)
(declare-const null-String String)
(declare-const var124 var2576) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty 
(assert (not (= var124 null-var2576)))
(declare-const var3411 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3411 null-String)))
(assert true)
(define-const var2443 String (trim/-847153721 var3411)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(declare-const var124!1 var2576)
(assert (not (= var124!1 null-var2576)))
(assert (= (prefix/112281648 var124!1) var2443)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.lang.String prefix> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), prefix/112281648=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty], java.lang.String)}
; {var2576=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty, var124=r0, var3411=r1, var389=null_type, var2443=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty=var2576, r0=var124, r1=var3411, null_type=var389, $r2=var2443}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XmlProperty: java.lang.String prefix> = $r2;	return
;block_num 1