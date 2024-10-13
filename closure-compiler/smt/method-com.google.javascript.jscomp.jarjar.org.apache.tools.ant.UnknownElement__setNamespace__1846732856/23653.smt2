(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3788 0)
(declare-sort var1408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespace/2046815569 (var3788) String)
(declare-const null-var3788 var3788)
(declare-const null-String String)
(declare-const var430 var3788) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var430 null-var3788)))
(declare-const var2478 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2478 null-String)))
(assert true)
(define-const var25 Bool (= var2478 "ant:current")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("ant:current") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var25 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r3 != null goto $r4 = r3 
(assert (not (not (= var2478 null-String)))) ; Negate: Cond: r3 != null  
(define-const var293 String "") ; Statement: $r4 = "" 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4] 
(assert true) ; Non Conditional
(declare-const var430!1 var3788)
(assert (not (= var430!1 null-var3788)))
(assert (= (namespace/2046815569 var430!1) var293)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {namespace/2046815569=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement], java.lang.String)}
; {var3788=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var430=r0, var2478=r3, var1408=null_type, var25=$z0, var293=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var3788, r0=var430, r3=var2478, null_type=var1408, $z0=var25, $r4=var293}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	r3 := @parameter0: java.lang.String;	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("ant:current");	if $z0 == 0 goto (branch);	if r3 != null goto $r4 = r3;	$r4 = "";	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement: java.lang.String namespace> = $r4;	return
;block_num 4