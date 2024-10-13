(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var875 0)
(declare-sort var3727 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1125) void)
(declare-fun cast-from-var875-to-var1125 (var875) var1125)
(declare-fun message/-434834169 (var875) String)
(declare-fun fullMessage/-434834169 (var875) String)
(declare-const null-var875 var875)
(declare-const null-String String)
(declare-const var3884 var875) ; Statement: r0 := @this: org.apache.log4j.NDC$DiagnosticContext 
(assert (not (= var3884 null-var875)))
(declare-const var1217 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1217 null-String)))
(declare-const var3832 var875) ; Statement: r2 := @parameter1: org.apache.log4j.NDC$DiagnosticContext 
(assert (not (= var3832 null-var875)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var875-to-var1125 var3884))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3884!1 var875)
(declare-const var3884!2 var875)
(assert (not (= var3884!2 null-var875)))
(assert (= (message/-434834169 var3884!2) var1217)) ; Statement: r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String message> = r1 
 ; Statement: if r2 == null goto r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1 
(assert (= var3832 null-var875)) ; Cond: r2 == null 
(declare-const var3884!3 var875)
(assert (not (= var3884!3 null-var875)))
(assert (= (fullMessage/-434834169 var3884!3) var1217)) ; Statement: r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var875-to-var1125=([org.apache.log4j.NDC$DiagnosticContext], java.lang.Object), message/-434834169=([org.apache.log4j.NDC$DiagnosticContext], java.lang.String), fullMessage/-434834169=([org.apache.log4j.NDC$DiagnosticContext], java.lang.String)}
; {var875=org.apache.log4j.NDC$DiagnosticContext, var3884=r0, var1217=r1, var3727=null_type, var3832=r2, var1125=java.lang.Object}
; {org.apache.log4j.NDC$DiagnosticContext=var875, r0=var3884, r1=var1217, null_type=var3727, r2=var3832, java.lang.Object=var1125}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.NDC$DiagnosticContext;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.log4j.NDC$DiagnosticContext;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String message> = r1;	if r2 == null goto r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1;	r0.<org.apache.log4j.NDC$DiagnosticContext: java.lang.String fullMessage> = r1;	return
;block_num 3