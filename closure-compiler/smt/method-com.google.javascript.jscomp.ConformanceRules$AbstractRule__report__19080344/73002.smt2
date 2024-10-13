(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2549 0)
(declare-sort var3382 0)
(declare-sort var457 0)
(declare-sort var1399 0)
(declare-sort var3742 0)
(declare-sort var672 0)
(declare-sort var289 0)
(declare-sort var1505 0)
(declare-sort var393 0)
(declare-sort var3047 0)
(declare-sort var3532 0)
(declare-sort var985 0)
(declare-sort var1539 0)
(declare-sort var2749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var2549) var1399)
(declare-fun note/-1461806451 (var457) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var2549) var289)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var2549) String)
(declare-fun var1505_make/1759175387 (var289 var3382 var3742 (Array Int String)) var1505)
(declare-fun var393_getSourceName/-747323770 (var3382) String)
(declare-fun findAllowListForPath/-2079832993 (var2549 String) var3532)
(declare-fun compiler/1835449059 (var2549) var985)
(declare-fun getErrorManager/810645288 (var985) var1539)
(declare-fun var2749_absent/768860122 () var2749)
(declare-fun var1539_shouldReportConformanceViolation/278912843 (var1539 var289 var2749 var1505) Bool)
(declare-const null-var2549 var2549)
(declare-const null-var3382 var3382)
(declare-const null-var457 var457)
(declare-const var1399-ERROR var1399)
(declare-const var672-CONFORMANCE_ERROR var3742)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var3532 var3532)
(declare-const var2716 var2549) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var2716 null-var2549)))
(declare-const var2123 var3382) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2123 null-var3382)))
(declare-const var2706 var457) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var2706 null-var457)))
(define-const var1472 var1399 (severity/1835449059 var2716)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var3594 var1399 var1399-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var1472 var3594)))) ; Negate: Cond: $r2 != $r1  
(define-const var3249 var3742 var672-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var1432 String (note/-1461806451 var2706)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var1024 Bool (isEmpty/-1285796103 var1432)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (not (= (ite var1024 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3270 String "") ; Statement: $r23 = "" 
 ; Statement: goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>] 
(assert true) ; Non Conditional
(define-const var1410 var289 (requirement/1835449059 var2716)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var1470 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var2672 String (message/1835449059 var2716)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var1470!1 (Array Int String))
(assert (not (= var1470!1 null-__Array__Int__String__)))
(assert (= (select var1470!1 0) var2672)) ; Statement: $r7[0] = $r8 
(declare-const var1470!2 (Array Int String))
(assert (not (= var1470!2 null-__Array__Int__String__)))
(assert (= (select var1470!2 1) var3270)) ; Statement: $r7[1] = $r23 
(define-const var3698 String (note/-1461806451 var2706)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var1470!3 (Array Int String))
(assert (not (= var1470!3 null-__Array__Int__String__)))
(assert (= (select var1470!3 2) var3698)) ; Statement: $r7[2] = $r9 
(define-const var3155 var1505 (var1505_make/1759175387 var1410 var2123 var3249 var1470!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var1457 String (var393_getSourceName/-747323770 var2123)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (not (= var1457 null-String))) ; Negate: Cond: $r20 == null  
(assert true)
(define-const var1893 var3532 (findAllowListForPath/-2079832993 var2716 var1457)) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20) 
 ; Statement: goto [?= r11 = $r24] 
(assert true) ; Non Conditional
(define-const var3260 var3532 var1893) ; Statement: r11 = $r24 
(define-const var1316 var985 (compiler/1835449059 var2716)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2340 var1539 (getErrorManager/810645288 var1316)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var2757 var289 (requirement/1835449059 var2716)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (= var1893 null-var3532)) ; Cond: $r24 == null 
(define-const var2414 var2749 var2749_absent/768860122) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert true) ; Non Conditional
(define-const var3499 Bool (var1539_shouldReportConformanceViolation/278912843 var2340 var2757 var2414 var3155)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3499 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var1505_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var393_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), findAllowListForPath/-2079832993=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, java.lang.String], com.google.javascript.jscomp.ConformanceRules$AllowList), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), var2749_absent/768860122=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), var1539_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var2549=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var2716=r0, var3382=com.google.javascript.rhino.Node, var2123=r6, var457=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var2706=r3, var1399=com.google.javascript.jscomp.Requirement$Severity, var1472=$r2, var3594=$r1, var3742=com.google.javascript.jscomp.DiagnosticType, var672=com.google.javascript.jscomp.CheckConformance, var3249=r21, var1432=$r22, var1024=$z2, var3270=$r23, var289=com.google.javascript.jscomp.Requirement, var1410=$r10, var1470=$r7, var2672=$r8, var3698=$r9, var1505=com.google.javascript.jscomp.JSError, var3155=$r19, var393=com.google.javascript.jscomp.NodeUtil, var1457=$r20, var3047=null_type, var3532=com.google.javascript.jscomp.ConformanceRules$AllowList, var1893=$r24, var3260=r11, var985=com.google.javascript.jscomp.AbstractCompiler, var1316=$r12, var1539=com.google.javascript.jscomp.ErrorManager, var2340=$r14, var2757=$r13, var2749=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var2414=$r25, var3499=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2549, r0=var2716, com.google.javascript.rhino.Node=var3382, r6=var2123, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var457, r3=var2706, com.google.javascript.jscomp.Requirement$Severity=var1399, $r2=var1472, $r1=var3594, com.google.javascript.jscomp.DiagnosticType=var3742, com.google.javascript.jscomp.CheckConformance=var672, r21=var3249, $r22=var1432, $z2=var1024, $r23=var3270, com.google.javascript.jscomp.Requirement=var289, $r10=var1410, $r7=var1470, $r8=var2672, $r9=var3698, com.google.javascript.jscomp.JSError=var1505, $r19=var3155, com.google.javascript.jscomp.NodeUtil=var393, $r20=var1457, null_type=var3047, com.google.javascript.jscomp.ConformanceRules$AllowList=var3532, $r24=var1893, r11=var3260, com.google.javascript.jscomp.AbstractCompiler=var985, $r12=var1316, com.google.javascript.jscomp.ErrorManager=var1539, $r14=var2340, $r13=var2757, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var2749, $r25=var2414, $z1=var3499}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "";	goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>];	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20);	goto [?= r11 = $r24];	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10