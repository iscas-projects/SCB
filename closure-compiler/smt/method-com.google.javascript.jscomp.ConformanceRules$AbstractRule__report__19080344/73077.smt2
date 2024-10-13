(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort var1577 0)
(declare-sort var461 0)
(declare-sort var3317 0)
(declare-sort var3792 0)
(declare-sort var2486 0)
(declare-sort var163 0)
(declare-sort var3766 0)
(declare-sort var1970 0)
(declare-sort var2728 0)
(declare-sort var1777 0)
(declare-sort var3907 0)
(declare-sort var1851 0)
(declare-sort var3734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var1106) var3317)
(declare-fun note/-1461806451 (var461) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var1106) var163)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var1106) String)
(declare-fun var3766_make/1759175387 (var163 var1577 var3792 (Array Int String)) var3766)
(declare-fun var1970_getSourceName/-747323770 (var1577) String)
(declare-fun findAllowListForPath/-2079832993 (var1106 String) var1777)
(declare-fun compiler/1835449059 (var1106) var3907)
(declare-fun getErrorManager/810645288 (var3907) var1851)
(declare-fun var3734_absent/768860122 () var3734)
(declare-fun var1851_shouldReportConformanceViolation/278912843 (var1851 var163 var3734 var3766) Bool)
(declare-const null-var1106 var1106)
(declare-const null-var1577 var1577)
(declare-const null-var461 var461)
(declare-const var3317-ERROR var3317)
(declare-const var2486-CONFORMANCE_ERROR var3792)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var1777 var1777)
(declare-const var1308 var1106) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var1308 null-var1106)))
(declare-const var2300 var1577) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2300 null-var1577)))
(declare-const var2241 var461) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var2241 null-var461)))
(define-const var195 var3317 (severity/1835449059 var1308)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var1383 var3317 var3317-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var195 var1383)))) ; Negate: Cond: $r2 != $r1  
(define-const var1170 var3792 var2486-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var3234 String (note/-1461806451 var2241)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var3082 Bool (isEmpty/-1285796103 var3234)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (= (ite var3082 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3997 String "\n") ; Statement: $r23 = "\n" 
(assert true) ; Non Conditional
(define-const var1468 var163 (requirement/1835449059 var1308)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var3315 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var504 String (message/1835449059 var1308)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var3315!1 (Array Int String))
(assert (not (= var3315!1 null-__Array__Int__String__)))
(assert (= (select var3315!1 0) var504)) ; Statement: $r7[0] = $r8 
(declare-const var3315!2 (Array Int String))
(assert (not (= var3315!2 null-__Array__Int__String__)))
(assert (= (select var3315!2 1) var3997)) ; Statement: $r7[1] = $r23 
(define-const var3815 String (note/-1461806451 var2241)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var3315!3 (Array Int String))
(assert (not (= var3315!3 null-__Array__Int__String__)))
(assert (= (select var3315!3 2) var3815)) ; Statement: $r7[2] = $r9 
(define-const var1656 var3766 (var3766_make/1759175387 var1468 var2300 var1170 var3315!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var3362 String (var1970_getSourceName/-747323770 var2300)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (not (= var3362 null-String))) ; Negate: Cond: $r20 == null  
(assert true)
(define-const var621 var1777 (findAllowListForPath/-2079832993 var1308 var3362)) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20) 
 ; Statement: goto [?= r11 = $r24] 
(assert true) ; Non Conditional
(define-const var3775 var1777 var621) ; Statement: r11 = $r24 
(define-const var1330 var3907 (compiler/1835449059 var1308)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var720 var1851 (getErrorManager/810645288 var1330)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var2774 var163 (requirement/1835449059 var1308)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (= var621 null-var1777)) ; Cond: $r24 == null 
(define-const var1429 var3734 var3734_absent/768860122) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert true) ; Non Conditional
(define-const var1598 Bool (var1851_shouldReportConformanceViolation/278912843 var720 var2774 var1429 var1656)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1598 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var3766_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var1970_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), findAllowListForPath/-2079832993=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, java.lang.String], com.google.javascript.jscomp.ConformanceRules$AllowList), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), var3734_absent/768860122=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), var1851_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var1106=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var1308=r0, var1577=com.google.javascript.rhino.Node, var2300=r6, var461=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var2241=r3, var3317=com.google.javascript.jscomp.Requirement$Severity, var195=$r2, var1383=$r1, var3792=com.google.javascript.jscomp.DiagnosticType, var2486=com.google.javascript.jscomp.CheckConformance, var1170=r21, var3234=$r22, var3082=$z2, var3997=$r23, var163=com.google.javascript.jscomp.Requirement, var1468=$r10, var3315=$r7, var504=$r8, var3815=$r9, var3766=com.google.javascript.jscomp.JSError, var1656=$r19, var1970=com.google.javascript.jscomp.NodeUtil, var3362=$r20, var2728=null_type, var1777=com.google.javascript.jscomp.ConformanceRules$AllowList, var621=$r24, var3775=r11, var3907=com.google.javascript.jscomp.AbstractCompiler, var1330=$r12, var1851=com.google.javascript.jscomp.ErrorManager, var720=$r14, var2774=$r13, var3734=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var1429=$r25, var1598=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var1106, r0=var1308, com.google.javascript.rhino.Node=var1577, r6=var2300, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var461, r3=var2241, com.google.javascript.jscomp.Requirement$Severity=var3317, $r2=var195, $r1=var1383, com.google.javascript.jscomp.DiagnosticType=var3792, com.google.javascript.jscomp.CheckConformance=var2486, r21=var1170, $r22=var3234, $z2=var3082, $r23=var3997, com.google.javascript.jscomp.Requirement=var163, $r10=var1468, $r7=var3315, $r8=var504, $r9=var3815, com.google.javascript.jscomp.JSError=var3766, $r19=var1656, com.google.javascript.jscomp.NodeUtil=var1970, $r20=var3362, null_type=var2728, com.google.javascript.jscomp.ConformanceRules$AllowList=var1777, $r24=var621, r11=var3775, com.google.javascript.jscomp.AbstractCompiler=var3907, $r12=var1330, com.google.javascript.jscomp.ErrorManager=var1851, $r14=var720, $r13=var2774, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var3734, $r25=var1429, $z1=var1598}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "\n";	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20);	goto [?= r11 = $r24];	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10