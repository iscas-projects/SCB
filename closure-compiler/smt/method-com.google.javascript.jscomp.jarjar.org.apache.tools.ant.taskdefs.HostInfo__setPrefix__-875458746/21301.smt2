(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1691 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-4640814 (var1691) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1691 var1691)
(declare-const null-String String)
(declare-const var1487 var1691) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo 
(assert (not (= var1487 null-var1691)))
(declare-const var61 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var61 null-String)))
(declare-const var1487!1 var1691)
(assert (not (= var1487!1 null-var1691)))
(assert (= (prefix/-4640814 var1487!1) var61)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix> = r1 
(define-const var3284 String (prefix/-4640814 var1487!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix> 
(assert true)
(define-const var2615 Bool (endsWith/985337093 var3284 ".")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2615 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-4640814=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1691=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo, var1487=r0, var61=r1, var3883=null_type, var3284=$r2, var2615=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo=var1691, r0=var1487, r1=var61, null_type=var3883, $r2=var3284, $z0=var2615}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo;	r1 := @parameter0: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix> = r1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.HostInfo: java.lang.String prefix>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 != 0 goto return;	return
;block_num 2