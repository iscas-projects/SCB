(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var229 0)
(declare-sort var1299 0)
(declare-sort var685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isParentFirst/-1585055413 (var229 String) Bool)
(declare-fun loadResource/2032049423 (var229 String) var685)
(declare-const null-var229 var229)
(declare-const null-String String)
(declare-const null-var685 var685)
(declare-const var2908 var229) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2908 null-var229)))
(declare-const var1574 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1574 null-String)))
(define-const var3191 var685 null-var685) ; Statement: r23 = null 
(assert true)
(define-const var893 Bool (isParentFirst/-1585055413 var2908 var1574)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var893 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r23 == null goto r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1) 
(assert (= var3191 null-var685)) ; Cond: r23 == null 
(assert true)
(define-const var3191!1 var685 (loadResource/2032049423 var2908 var1574)) ; Statement: r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1) 
 ; Statement: if r23 == null goto (branch) 
(assert (= var3191!1 null-var685)) ; Cond: r23 == null 
 ; Statement: if r23 != null goto (branch) 
(assert (not (= var3191!1 null-var685))) ; Cond: r23 != null 
 ; Statement: if r23 != null goto return r23 
(assert (not (= var3191!1 null-var685))) ; Cond: r23 != null 
 ; Statement: return r23 
(check-sat)
(get-model)
(get-unsat-core)
; {isParentFirst/-1585055413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String], boolean), loadResource/2032049423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, java.lang.String], java.io.InputStream)}
; {var229=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2908=r0, var1574=r1, var1299=null_type, var685=java.io.InputStream, var3191=r23, var893=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var229, r0=var2908, r1=var1574, null_type=var1299, java.io.InputStream=var685, r23=var3191, $z0=var893}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r1 := @parameter0: java.lang.String;	r23 = null;	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: boolean isParentFirst(java.lang.String)>(r1);	if $z0 == 0 goto (branch);	if r23 == null goto r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1);	r23 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: java.io.InputStream loadResource(java.lang.String)>(r1);	if r23 == null goto (branch);	if r23 != null goto (branch);	if r23 != null goto return r23;	return r23
;block_num 6