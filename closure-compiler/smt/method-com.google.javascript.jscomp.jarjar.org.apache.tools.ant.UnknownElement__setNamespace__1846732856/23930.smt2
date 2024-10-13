(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/2046815569 (var2353) String)
(declare-const null-var2353 var2353)
(declare-const null-String String)
(declare-const var2096 var2353) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var2096 null-var2353)))
(declare-const var3711 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3711 null-String)))
(assert true)
(define-const var2236 Bool (= var3711 "ant:current")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("ant:current") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2236 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 != null goto $r4 = r3 
(assert (not (= var3711 null-String))) ; Cond: r3 != null 
(define-const var2970 String var3711) ; Statement: $r4 = r3 
(assert true) ; Non Conditional
(declare-const var2096!1 var2353)
(assert (not (= var2096!1 null-var2353)))
(assert (= (namespace/2046815569 var2096!1) var2970)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/2046815569=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String)}
; {var2353=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var2096=r0, var3711=r3, var1148=null_type, var2236=$z0, var2970=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var2353, r0=var2096, r3=var3711, null_type=var1148, $z0=var2236, $r4=var2970}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	r3 := @parameter0: java.lang.String;	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("ant:current");	if $z0 == 0 goto (branch);	if r3 != null goto $r4 = r3;	$r4 = r3;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4;	return
;block_num 4