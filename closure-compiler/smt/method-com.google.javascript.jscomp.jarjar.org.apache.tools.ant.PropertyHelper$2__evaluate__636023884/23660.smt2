(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var1169 0)
(declare-sort var1733 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3768 var3768)
(declare-const null-String String)
(declare-const null-var1733 var1733)
(declare-const null-var3199 var3199)
(declare-const var3057 var3768) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2 
(assert (not (= var3057 null-var3768)))
(declare-const var744 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var744 null-String)))
(declare-const var2317 var1733) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper 
(assert (not (= var2317 null-var1733)))
(assert true)
(define-const var1792 Bool (startsWith/-1785782452 var744 "ant.refid:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("ant.refid:") 
 ; Statement: if $z0 == 0 goto $r6 = null 
(assert (= (ite var1792 1 0) 0)) ; Cond: $z0 == 0 
(define-const var361 var3199 null-var3199) ; Statement: $r6 = null 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2, var3057=r3, var744=r0, var1169=null_type, var1733=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var2317=r1, var1792=$z0, var3199=java.lang.Object, var361=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2=var3768, r3=var3057, r0=var744, null_type=var1169, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var1733, r1=var2317, $z0=var1792, java.lang.Object=var3199, $r6=var361}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$2;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("ant.refid:");	if $z0 == 0 goto $r6 = null;	$r6 = null;	return $r6
;block_num 3