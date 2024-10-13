(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3114 0)
(declare-sort var739 0)
(declare-sort var1784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrompt/-1244253204 (var739) String)
(declare-fun getDefaultValue/962456544 (var739) String)
(declare-const null-var3114 var3114)
(declare-const null-var739 var739)
(declare-const null-String String)
(declare-const var1257 var3114) ; Statement: r17 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler 
(assert (not (= var1257 null-var3114)))
(declare-const var2187 var739) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest 
(assert (not (= var2187 null-var739)))
(assert true)
(define-const var2603 String (getPrompt/-1244253204 var2187)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>() 
(assert true)
(define-const var3617 String (getDefaultValue/962456544 var2187)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getDefaultValue()>() 
(define-const var955 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.MultipleChoiceInputRequest 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var955 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r2 == null goto return r1 
(assert (= var3617 null-String)) ; Cond: r2 == null 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrompt/-1244253204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest], java.lang.String), getDefaultValue/962456544=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest], java.lang.String)}
; {var3114=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler, var1257=r17, var739=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest, var2187=r0, var2603=r1, var3617=r2, var955=$z0, var1784=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler=var3114, r17=var1257, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest=var739, r0=var2187, r1=var2603, r2=var3617, $z0=var955, null_type=var1784}
;seq 
;cnt {}
;stmts r17 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.DefaultInputHandler;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getPrompt()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.InputRequest: java.lang.String getDefaultValue()>();	$z0 = r0 instanceof com.google.javascript.jscomp.jarjar.org.apache.tools.ant.input.MultipleChoiceInputRequest;	if $z0 == 0 goto (branch);	if r2 == null goto return r1;	return r1
;block_num 3