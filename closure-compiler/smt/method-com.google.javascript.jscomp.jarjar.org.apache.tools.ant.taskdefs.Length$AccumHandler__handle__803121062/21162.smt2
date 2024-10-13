(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort var1565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSize/1695233118 (var1565) Int)
(declare-fun accum/359764083 (var2077) Int)
(declare-const null-var2077 var2077)
(declare-const null-var1565 var1565)
(declare-const var1472 var2077) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler 
(assert (not (= var1472 null-var2077)))
(declare-const var3954 var1565) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var3954 null-var1565)))
(assert true)
(define-const var1258 Int (getSize/1695233118 var3954)) ; Statement: l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>() 
(define-const var194 Int (ite (> var1258 (- 1)) 1 (ite (< var1258 (- 1)) (- 1) 0))) ; Statement: $b1 = l0 cmp -1L 
 ; Statement: if $b1 != 0 goto $l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum> 
(assert (not (= var194 0))) ; Cond: $b1 != 0 
(define-const var3044 Int (accum/359764083 var1472)) ; Statement: $l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum> 
(define-const var3052 Int (+ var3044 var1258)) ; Statement: $l3 = $l2 + l0 
(declare-const var1472!1 var2077)
(assert (not (= var1472!1 null-var2077)))
(assert (= (accum/359764083 var1472!1) var3052)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum> = $l3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSize/1695233118=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], long), accum/359764083=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler], long)}
; {var2077=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler, var1472=r1, var1565=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var3954=r0, var1258=l0, var194=$b1, var3044=$l2, var3052=$l3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler=var2077, r1=var1472, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1565, r0=var3954, l0=var1258, $b1=var194, $l2=var3044, $l3=var3052}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	l0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: long getSize()>();	$b1 = l0 cmp -1L;	if $b1 != 0 goto $l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum>;	$l2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum>;	$l3 = $l2 + l0;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AccumHandler: long accum> = $l3;	return
;block_num 3