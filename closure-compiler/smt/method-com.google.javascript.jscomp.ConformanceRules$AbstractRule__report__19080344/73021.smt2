(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3330 0)
(declare-sort var540 0)
(declare-sort var176 0)
(declare-sort var2106 0)
(declare-sort var177 0)
(declare-sort var88 0)
(declare-sort var2474 0)
(declare-sort var1903 0)
(declare-sort var2232 0)
(declare-sort var2839 0)
(declare-sort var1924 0)
(declare-sort var1464 0)
(declare-sort var1585 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var3330) var2106)
(declare-fun note/-1461806451 (var176) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var3330) var2474)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var3330) String)
(declare-fun var1903_make/1759175387 (var2474 var540 var177 (Array Int String)) var1903)
(declare-fun var2232_getSourceName/-747323770 (var540) String)
(declare-fun compiler/1835449059 (var3330) var1464)
(declare-fun getErrorManager/810645288 (var1464) var1585)
(declare-fun var2572_absent/768860122 () var2572)
(declare-fun var1585_shouldReportConformanceViolation/278912843 (var1585 var2474 var2572 var1903) Bool)
(declare-const null-var3330 var3330)
(declare-const null-var540 var540)
(declare-const null-var176 var176)
(declare-const var2106-ERROR var2106)
(declare-const var88-CONFORMANCE_ERROR var177)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var1924 var1924)
(declare-const var1318 var3330) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var1318 null-var3330)))
(declare-const var1050 var540) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1050 null-var540)))
(declare-const var129 var176) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var129 null-var176)))
(define-const var3414 var2106 (severity/1835449059 var1318)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var1175 var2106 var2106-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var3414 var1175)))) ; Negate: Cond: $r2 != $r1  
(define-const var565 var177 var88-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var3163 String (note/-1461806451 var129)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var1030 Bool (isEmpty/-1285796103 var3163)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (not (= (ite var1030 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1253 String "") ; Statement: $r23 = "" 
 ; Statement: goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>] 
(assert true) ; Non Conditional
(define-const var2063 var2474 (requirement/1835449059 var1318)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var3431 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var3517 String (message/1835449059 var1318)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var3431!1 (Array Int String))
(assert (not (= var3431!1 null-__Array__Int__String__)))
(assert (= (select var3431!1 0) var3517)) ; Statement: $r7[0] = $r8 
(declare-const var3431!2 (Array Int String))
(assert (not (= var3431!2 null-__Array__Int__String__)))
(assert (= (select var3431!2 1) var1253)) ; Statement: $r7[1] = $r23 
(define-const var783 String (note/-1461806451 var129)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var3431!3 (Array Int String))
(assert (not (= var3431!3 null-__Array__Int__String__)))
(assert (= (select var3431!3 2) var783)) ; Statement: $r7[2] = $r9 
(define-const var3106 var1903 (var1903_make/1759175387 var2063 var1050 var565 var3431!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var1933 String (var2232_getSourceName/-747323770 var1050)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (= var1933 null-String)) ; Cond: $r20 == null 
(define-const var888 var1924 null-var1924) ; Statement: $r24 = null 
(assert true) ; Non Conditional
(define-const var2382 var1924 var888) ; Statement: r11 = $r24 
(define-const var2863 var1464 (compiler/1835449059 var1318)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2125 var1585 (getErrorManager/810645288 var2863)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var1365 var2474 (requirement/1835449059 var1318)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (= var888 null-var1924)) ; Cond: $r24 == null 
(define-const var844 var2572 var2572_absent/768860122) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert true) ; Non Conditional
(define-const var155 Bool (var1585_shouldReportConformanceViolation/278912843 var2125 var1365 var844 var3106)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var155 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var1903_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var2232_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), var2572_absent/768860122=([], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), var1585_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var3330=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var1318=r0, var540=com.google.javascript.rhino.Node, var1050=r6, var176=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var129=r3, var2106=com.google.javascript.jscomp.Requirement$Severity, var3414=$r2, var1175=$r1, var177=com.google.javascript.jscomp.DiagnosticType, var88=com.google.javascript.jscomp.CheckConformance, var565=r21, var3163=$r22, var1030=$z2, var1253=$r23, var2474=com.google.javascript.jscomp.Requirement, var2063=$r10, var3431=$r7, var3517=$r8, var783=$r9, var1903=com.google.javascript.jscomp.JSError, var3106=$r19, var2232=com.google.javascript.jscomp.NodeUtil, var1933=$r20, var2839=null_type, var1924=com.google.javascript.jscomp.ConformanceRules$AllowList, var888=$r24, var2382=r11, var1464=com.google.javascript.jscomp.AbstractCompiler, var2863=$r12, var1585=com.google.javascript.jscomp.ErrorManager, var2125=$r14, var1365=$r13, var2572=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var844=$r25, var155=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var3330, r0=var1318, com.google.javascript.rhino.Node=var540, r6=var1050, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var176, r3=var129, com.google.javascript.jscomp.Requirement$Severity=var2106, $r2=var3414, $r1=var1175, com.google.javascript.jscomp.DiagnosticType=var177, com.google.javascript.jscomp.CheckConformance=var88, r21=var565, $r22=var3163, $z2=var1030, $r23=var1253, com.google.javascript.jscomp.Requirement=var2474, $r10=var2063, $r7=var3431, $r8=var3517, $r9=var783, com.google.javascript.jscomp.JSError=var1903, $r19=var3106, com.google.javascript.jscomp.NodeUtil=var2232, $r20=var1933, null_type=var2839, com.google.javascript.jscomp.ConformanceRules$AllowList=var1924, $r24=var888, r11=var2382, com.google.javascript.jscomp.AbstractCompiler=var1464, $r12=var2863, com.google.javascript.jscomp.ErrorManager=var1585, $r14=var2125, $r13=var1365, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var2572, $r25=var844, $z1=var155}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "";	goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>];	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = null;	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10