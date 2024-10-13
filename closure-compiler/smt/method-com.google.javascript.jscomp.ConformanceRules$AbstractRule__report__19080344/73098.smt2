(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2895 0)
(declare-sort var934 0)
(declare-sort var1509 0)
(declare-sort var2052 0)
(declare-sort var3830 0)
(declare-sort var3401 0)
(declare-sort var3792 0)
(declare-sort var1538 0)
(declare-sort var1893 0)
(declare-sort var3180 0)
(declare-sort var3217 0)
(declare-sort var810 0)
(declare-sort var126 0)
(declare-sort var2553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var2895) var2052)
(declare-fun note/-1461806451 (var1509) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var2895) var3792)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var2895) String)
(declare-fun var1538_make/1759175387 (var3792 var934 var3830 (Array Int String)) var1538)
(declare-fun var1893_getSourceName/-747323770 (var934) String)
(declare-fun compiler/1835449059 (var2895) var810)
(declare-fun getErrorManager/810645288 (var810) var126)
(declare-fun var2553_absent/768860122 () var2553)
(declare-fun var126_shouldReportConformanceViolation/278912843 (var126 var3792 var2553 var1538) Bool)
(declare-const null-var2895 var2895)
(declare-const null-var934 var934)
(declare-const null-var1509 var1509)
(declare-const var2052-ERROR var2052)
(declare-const var3401-CONFORMANCE_ERROR var3830)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var3217 var3217)
(declare-const var3545 var2895) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var3545 null-var2895)))
(declare-const var2002 var934) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2002 null-var934)))
(declare-const var388 var1509) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var388 null-var1509)))
(define-const var1187 var2052 (severity/1835449059 var3545)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var1792 var2052 var2052-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var1187 var1792)))) ; Negate: Cond: $r2 != $r1  
(define-const var3951 var3830 var3401-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var730 String (note/-1461806451 var388)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var3443 Bool (isEmpty/-1285796103 var730)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (= (ite var3443 1 0) 0)) ; Cond: $z2 == 0 
(define-const var52 String "\n") ; Statement: $r23 = "\n" 
(assert true) ; Non Conditional
(define-const var598 var3792 (requirement/1835449059 var3545)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var1606 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var1415 String (message/1835449059 var3545)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var1606!1 (Array Int String))
(assert (not (= var1606!1 null-__Array__Int__String__)))
(assert (= (select var1606!1 0) var1415)) ; Statement: $r7[0] = $r8 
(declare-const var1606!2 (Array Int String))
(assert (not (= var1606!2 null-__Array__Int__String__)))
(assert (= (select var1606!2 1) var52)) ; Statement: $r7[1] = $r23 
(define-const var1536 String (note/-1461806451 var388)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var1606!3 (Array Int String))
(assert (not (= var1606!3 null-__Array__Int__String__)))
(assert (= (select var1606!3 2) var1536)) ; Statement: $r7[2] = $r9 
(define-const var61 var1538 (var1538_make/1759175387 var598 var2002 var3951 var1606!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var3702 String (var1893_getSourceName/-747323770 var2002)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (= var3702 null-String)) ; Cond: $r20 == null 
(define-const var107 var3217 null-var3217) ; Statement: $r24 = null 
(assert true) ; Non Conditional
(define-const var3354 var3217 var107) ; Statement: r11 = $r24 
(define-const var1874 var810 (compiler/1835449059 var3545)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var113 var126 (getErrorManager/810645288 var1874)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var3744 var3792 (requirement/1835449059 var3545)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (= var107 null-var3217)) ; Cond: $r24 == null 
(define-const var3339 var2553 var2553_absent/768860122) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert true) ; Non Conditional
(define-const var1081 Bool (var126_shouldReportConformanceViolation/278912843 var113 var3744 var3339 var61)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1081 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var1538_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var1893_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), var2553_absent/768860122=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), var126_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var2895=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var3545=r0, var934=com.google.javascript.rhino.Node, var2002=r6, var1509=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var388=r3, var2052=com.google.javascript.jscomp.Requirement$Severity, var1187=$r2, var1792=$r1, var3830=com.google.javascript.jscomp.DiagnosticType, var3401=com.google.javascript.jscomp.CheckConformance, var3951=r21, var730=$r22, var3443=$z2, var52=$r23, var3792=com.google.javascript.jscomp.Requirement, var598=$r10, var1606=$r7, var1415=$r8, var1536=$r9, var1538=com.google.javascript.jscomp.JSError, var61=$r19, var1893=com.google.javascript.jscomp.NodeUtil, var3702=$r20, var3180=null_type, var3217=com.google.javascript.jscomp.ConformanceRules$AllowList, var107=$r24, var3354=r11, var810=com.google.javascript.jscomp.AbstractCompiler, var1874=$r12, var126=com.google.javascript.jscomp.ErrorManager, var113=$r14, var3744=$r13, var2553=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var3339=$r25, var1081=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2895, r0=var3545, com.google.javascript.rhino.Node=var934, r6=var2002, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var1509, r3=var388, com.google.javascript.jscomp.Requirement$Severity=var2052, $r2=var1187, $r1=var1792, com.google.javascript.jscomp.DiagnosticType=var3830, com.google.javascript.jscomp.CheckConformance=var3401, r21=var3951, $r22=var730, $z2=var3443, $r23=var52, com.google.javascript.jscomp.Requirement=var3792, $r10=var598, $r7=var1606, $r8=var1415, $r9=var1536, com.google.javascript.jscomp.JSError=var1538, $r19=var61, com.google.javascript.jscomp.NodeUtil=var1893, $r20=var3702, null_type=var3180, com.google.javascript.jscomp.ConformanceRules$AllowList=var3217, $r24=var107, r11=var3354, com.google.javascript.jscomp.AbstractCompiler=var810, $r12=var1874, com.google.javascript.jscomp.ErrorManager=var126, $r14=var113, $r13=var3744, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var2553, $r25=var3339, $z1=var1081}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "\n";	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = null;	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10