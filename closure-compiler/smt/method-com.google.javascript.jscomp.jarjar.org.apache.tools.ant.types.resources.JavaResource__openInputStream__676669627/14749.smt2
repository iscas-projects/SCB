(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3890 0)
(declare-sort var2093 0)
(declare-sort var2260 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1314741259 (var2260) String)
(declare-fun cast-from-var3890-to-var2260 (var3890) var2260)
(declare-fun var2093_getSystemResourceAsStream/-651782480 (String) var258)
(declare-const null-var3890 var3890)
(declare-const null-var2093 var2093)
(declare-const null-var258 var258)
(declare-const var970 var3890) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource 
(assert (not (= var970 null-var3890)))
(declare-const var2032 var2093) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2032 null-var2093)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(assert (not (not (= var2032 null-var2093)))) ; Negate: Cond: r0 != null  
(assert true)
(define-const var2986 String (getName/1314741259 (cast-from-var3890-to-var2260 var970))) ; Statement: $r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>() 
(define-const var464 var258 (var2093_getSystemResourceAsStream/-651782480 var2986)) ; Statement: r19 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r11) 
 ; Statement: if r19 != null goto return r19 
(assert (not (= var464 null-var258))) ; Cond: r19 != null 
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1314741259=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), cast-from-var3890-to-var2260=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), var2093_getSystemResourceAsStream/-651782480=([java.lang.String], java.io.InputStream)}
; {var3890=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource, var970=r1, var2093=java.lang.ClassLoader, var2032=r0, var2260=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2986=$r11, var258=java.io.InputStream, var464=r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource=var3890, r1=var970, java.lang.ClassLoader=var2093, r0=var2032, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var2260, $r11=var2986, java.io.InputStream=var258, r19=var464}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource;	r0 := @parameter0: java.lang.ClassLoader;	if r0 != null goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	$r11 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.JavaResource: java.lang.String getName()>();	r19 = staticinvoke <java.lang.ClassLoader: java.io.InputStream getSystemResourceAsStream(java.lang.String)>($r11);	if r19 != null goto return r19;	return r19
;block_num 3