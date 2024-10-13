(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var712 0)
(declare-sort var2132 0)
(declare-sort var1684 0)
(declare-sort var172 0)
(declare-sort var3911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2132_getContextTrusted/-302620867 () var2132)
(declare-fun getBuiltinSwitchPoint/883958375 (var2132 String) var1684)
(declare-fun var3911-init () var3911)
(declare-fun <init>/-208190597 (var3911) void)
(declare-const null-String String)
(declare-const var172-$assertionsDisabled Bool)
(declare-const null-var1684 var1684)
(declare-const var2540 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2540 null-String)))
(define-const var1183 var2132 var2132_getContextTrusted/-302620867) ; Statement: r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(assert true)
(define-const var778 var1684 (getBuiltinSwitchPoint/883958375 var1183 var2540)) ; Statement: r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1) 
(define-const var3506 Bool var172-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(assert (not (not (= (ite var3506 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if r2 != null goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;") 
(assert (not (not (= var778 null-var1684)))) ; Negate: Cond: r2 != null  
(define-const var236 var3911 var3911-init) ; Statement: $r10 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var236)) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>()>() 

(declare-const var236!1 var3911)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2132_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), getBuiltinSwitchPoint/883958375=([jdk.nashorn.internal.runtime.Context, java.lang.String], java.lang.invoke.SwitchPoint), var3911-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var2540=r1, var712=null_type, var2132=jdk.nashorn.internal.runtime.Context, var1183=r0, var1684=java.lang.invoke.SwitchPoint, var778=r2, var172=jdk.nashorn.internal.runtime.ScriptRuntime, var3506=$z0, var3911=java.lang.AssertionError, var236=$r10}
; {r1=var2540, null_type=var712, jdk.nashorn.internal.runtime.Context=var2132, r0=var1183, java.lang.invoke.SwitchPoint=var1684, r2=var778, jdk.nashorn.internal.runtime.ScriptRuntime=var172, $z0=var3506, java.lang.AssertionError=var3911, $r10=var236}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	r2 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: java.lang.invoke.SwitchPoint getBuiltinSwitchPoint(java.lang.String)>(r1);	$z0 = <jdk.nashorn.internal.runtime.ScriptRuntime: boolean $assertionsDisabled>;	if $z0 != 0 goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	if r2 != null goto $r8 = virtualinvoke r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ApplySpecialization;");	$r10 = new java.lang.AssertionError;	specialinvoke $r10.<java.lang.AssertionError: void <init>()>();	throw $r10
;block_num 3