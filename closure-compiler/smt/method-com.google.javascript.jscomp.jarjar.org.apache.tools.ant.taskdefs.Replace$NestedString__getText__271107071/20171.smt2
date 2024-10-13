(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-605703340 (var3310) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun expandProperties/-605703340 (var3310) Bool)
(declare-const null-var3310 var3310)
(declare-const var209 var3310) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString 
(assert (not (= var209 null-var3310)))
(define-const var797 String (buf/-605703340 var209)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf> 
(assert true)
(define-const var3717 String (toString/-222306083 var797)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var26 Bool (expandProperties/-605703340 var209)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties> 
 ; Statement: if $z0 == 0 goto $r5 = r2 
(assert (= (ite var26 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3425 String var3717) ; Statement: $r5 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), expandProperties/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], boolean)}
; {var3310=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString, var209=r0, var797=$r1, var3717=r2, var26=$z0, var3425=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString=var3310, r0=var209, $r1=var797, r2=var3717, $z0=var26, $r5=var3425}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf>;	r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties>;	if $z0 == 0 goto $r5 = r2;	$r5 = r2;	return $r5
;block_num 3