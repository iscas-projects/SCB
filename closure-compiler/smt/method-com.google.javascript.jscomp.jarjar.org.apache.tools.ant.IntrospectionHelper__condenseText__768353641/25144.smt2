(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var52 0)
(declare-sort var487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var52 var52)
(declare-const null-String String)
(declare-const var315 var52) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var315 null-var52)))
(declare-const var2001 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2001 null-String)))
(assert true)
(define-const var3658 Int (length/-134980193 var2001)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 20 goto $r1 = "..." 
(assert (not (> var3658 20))) ; Negate: Cond: $i0 > 20  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var52=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var315=r5, var2001=r0, var487=null_type, var3658=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var52, r5=var315, r0=var2001, null_type=var487, $i0=var3658}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 20 goto $r1 = "...";	return r0
;block_num 2