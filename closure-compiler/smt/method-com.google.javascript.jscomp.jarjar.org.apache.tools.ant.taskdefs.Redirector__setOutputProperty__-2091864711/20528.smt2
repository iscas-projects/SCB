(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1220 0)
(declare-sort var994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outputProperty/-1614869221 (var1220) String)
(declare-const null-var1220 var1220)
(declare-const null-String String)
(declare-const var3638 var1220) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector 
(assert (not (= var3638 null-var1220)))
(declare-const var2714 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2714 null-String)))
 ; Statement: if r0 == null goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: java.lang.Object outMutex> 
(assert (not (= var2714 null-String))) ; Negate: Cond: r0 == null  
(define-const var2169 String (outputProperty/-1614869221 var3638)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: java.lang.String outputProperty> 
(assert true)
(define-const var3399 Bool (= var2714 var2169)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3399 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {outputProperty/-1614869221=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector], java.lang.String)}
; {var1220=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector, var3638=r1, var2714=r0, var994=null_type, var2169=$r3, var3399=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector=var1220, r1=var3638, r0=var2714, null_type=var994, $r3=var2169, $z0=var3399}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector;	r0 := @parameter0: java.lang.String;	if r0 == null goto $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: java.lang.Object outMutex>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: java.lang.String outputProperty>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto return;	return
;block_num 3