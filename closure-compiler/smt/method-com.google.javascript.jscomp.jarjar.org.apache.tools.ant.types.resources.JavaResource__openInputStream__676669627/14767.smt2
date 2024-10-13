(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3889 0)
(declare-sort var1248 0)
(declare-sort var3795 0)
(declare-sort var191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var3795) String)
(declare-fun cast-from-var3889-to-var3795 (var3889) var3795)
(declare-fun getResourceAsStream/269938975 (var1248 String) var191)
(declare-const null-var3889 var3889)
(declare-const null-var1248 var1248)
(declare-const null-var191 var191)
(declare-const var615 var3889) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource 
(assert (not (= var615 null-var3889)))
(declare-const var3901 var1248) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3901 null-var1248)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert (not (= var3901 null-var1248))) ; Cond: r0 != null 
(assert true)
(define-const var3749 String (getName/1314741259 (cast-from-var3889-to-var3795 var615))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert true)
(define-const var174 var191 (getResourceAsStream/269938975 var3901 var3749)) ; Statement: r19 = virtualinvoke r0.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r2) 
 ; Statement: if r19 != null goto return r19 
(assert (not (= var174 null-var191))) ; Cond: r19 != null 
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var3889-to-var3795=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), getResourceAsStream/269938975=([java.lang.ClassLoader, java.lang.String], java.io.InputStream)}
; {var3889=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource, var615=r1, var1248=java.lang.ClassLoader, var3901=r0, var3795=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3749=$r2, var191=java.io.InputStream, var174=r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource=var3889, r1=var615, java.lang.ClassLoader=var1248, r0=var3901, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var3795, $r2=var3749, java.io.InputStream=var191, r19=var174}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource;	r0 := @parameter0: java.lang.ClassLoader;	if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	r19 = virtualinvoke r0.<java.lang.ClassLoader: java.io.InputStream getResourceAsStream(java.lang.String)>($r2);	if r19 != null goto return r19;	return r19
;block_num 3