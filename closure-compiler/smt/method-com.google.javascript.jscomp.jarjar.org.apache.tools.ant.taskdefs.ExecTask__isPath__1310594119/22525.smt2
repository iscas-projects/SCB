(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3972 0)
(declare-sort var266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3972 var3972)
(declare-const null-String String)
(declare-const var254 var3972) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var254 null-var3972)))
(declare-const var632 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var632 null-String)))
(assert true)
(define-const var3949 Bool (startsWith/-1785782452 var632 "PATH=")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("PATH=") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3949 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3293 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3972=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var254=r1, var632=r0, var266=null_type, var3949=$z0, var3293=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var3972, r1=var254, r0=var632, null_type=var266, $z0=var3949, $z2=var3293}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("PATH=");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3