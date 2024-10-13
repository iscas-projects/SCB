(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3734 var3734)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1379 var3734) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl 
(assert (not (= var1379 null-var3734)))
(declare-const var84 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var84 null-String)))
(declare-const var2366 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2366 null-Int)))
 ; Statement: if i0 <= 0 goto return "" 
(assert (<= var2366 0)) ; Cond: i0 <= 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3734=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl, var1379=r1, var84=r0, var2366=i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl=var3734, r1=var1379, r0=var84, i0=var2366}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MakeUrl;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	if i0 <= 0 goto return "";	return ""
;block_num 2