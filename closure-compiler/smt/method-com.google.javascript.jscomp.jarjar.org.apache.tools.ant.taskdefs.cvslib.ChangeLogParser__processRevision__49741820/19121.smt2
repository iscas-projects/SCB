(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var735 0)
(declare-sort var2841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var735 var735)
(declare-const null-String String)
(declare-const var1857 var735) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser 
(assert (not (= var1857 null-var735)))
(declare-const var2343 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2343 null-String)))
(assert true)
(define-const var3106 Bool (startsWith/-1785782452 var2343 "revision")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======") 
(assert (= (ite var3106 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1702 Bool (startsWith/-1785782452 var2343 "======")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======") 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1702 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var735=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser, var1857=r1, var2343=r0, var2841=null_type, var3106=$z0, var1702=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser=var735, r1=var1857, r0=var2343, null_type=var2841, $z0=var3106, $z1=var1702}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.ChangeLogParser;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("revision");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======");	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("======");	if $z1 == 0 goto return;	return
;block_num 3