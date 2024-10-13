(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/356190251 (var1173) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1173 var1173)
(declare-const null-String String)
(declare-const var115 var1173) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp 
(assert (not (= var115 null-var1173)))
(declare-const var2104 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2104 null-String)))
(declare-const var115!1 var1173)
(assert (not (= var115!1 null-var1173)))
(assert (= (prefix/356190251 var115!1) var2104)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix> = r1 
(define-const var756 String (prefix/356190251 var115!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix> 
(assert true)
(define-const var710 Bool (endsWith/985337093 var756 ".")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var710 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/356190251=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1173=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp, var115=r0, var2104=r1, var647=null_type, var756=$r2, var710=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp=var1173, r0=var115, r1=var2104, null_type=var647, $r2=var756, $z0=var710}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp;	r1 := @parameter0: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix> = r1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Tstamp: java.lang.String prefix>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 != 0 goto return;	return
;block_num 2