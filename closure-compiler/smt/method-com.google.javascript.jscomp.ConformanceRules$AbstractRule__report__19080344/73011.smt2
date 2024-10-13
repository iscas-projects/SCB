(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort var3912 0)
(declare-sort var1372 0)
(declare-sort var281 0)
(declare-sort var284 0)
(declare-sort var2668 0)
(declare-sort var2660 0)
(declare-sort var742 0)
(declare-sort var2190 0)
(declare-sort var1886 0)
(declare-sort var1329 0)
(declare-sort var3899 0)
(declare-sort var1707 0)
(declare-sort var474 0)
(declare-sort var2119 0)
(declare-sort var586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var1980) var281)
(declare-fun note/-1461806451 (var1372) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var1980) var2660)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var1980) String)
(declare-fun var742_make/1759175387 (var2660 var3912 var284 (Array Int String)) var742)
(declare-fun var2190_getSourceName/-747323770 (var3912) String)
(declare-fun compiler/1835449059 (var1980) var3899)
(declare-fun getErrorManager/810645288 (var3899) var1707)
(declare-fun allowlistEntry/1462084866 (var1329) var474)
(declare-fun var2119_fromNullable/-489834757 (var586) var2119)
(declare-fun cast-from-var474-to-var586 (var474) var586)
(declare-fun var1707_shouldReportConformanceViolation/278912843 (var1707 var2660 var2119 var742) Bool)
(declare-const null-var1980 var1980)
(declare-const null-var3912 var3912)
(declare-const null-var1372 var1372)
(declare-const var281-ERROR var281)
(declare-const var2668-CONFORMANCE_ERROR var284)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var1329 var1329)
(declare-const var2933 var1980) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var2933 null-var1980)))
(declare-const var1033 var3912) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1033 null-var3912)))
(declare-const var3020 var1372) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var3020 null-var1372)))
(define-const var976 var281 (severity/1835449059 var2933)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var631 var281 var281-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var976 var631)))) ; Negate: Cond: $r2 != $r1  
(define-const var799 var284 var2668-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var3437 String (note/-1461806451 var3020)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var2415 Bool (isEmpty/-1285796103 var3437)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (not (= (ite var2415 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1743 String "") ; Statement: $r23 = "" 
 ; Statement: goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>] 
(assert true) ; Non Conditional
(define-const var1307 var2660 (requirement/1835449059 var2933)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var1879 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var3571 String (message/1835449059 var2933)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var1879!1 (Array Int String))
(assert (not (= var1879!1 null-__Array__Int__String__)))
(assert (= (select var1879!1 0) var3571)) ; Statement: $r7[0] = $r8 
(declare-const var1879!2 (Array Int String))
(assert (not (= var1879!2 null-__Array__Int__String__)))
(assert (= (select var1879!2 1) var1743)) ; Statement: $r7[1] = $r23 
(define-const var3330 String (note/-1461806451 var3020)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var1879!3 (Array Int String))
(assert (not (= var1879!3 null-__Array__Int__String__)))
(assert (= (select var1879!3 2) var3330)) ; Statement: $r7[2] = $r9 
(define-const var775 var742 (var742_make/1759175387 var1307 var1033 var799 var1879!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var3044 String (var2190_getSourceName/-747323770 var1033)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (= var3044 null-String)) ; Cond: $r20 == null 
(define-const var2200 var1329 null-var1329) ; Statement: $r24 = null 
(assert true) ; Non Conditional
(define-const var2860 var1329 var2200) ; Statement: r11 = $r24 
(define-const var47 var3899 (compiler/1835449059 var2933)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var3493 var1707 (getErrorManager/810645288 var47)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var278 var2660 (requirement/1835449059 var2933)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (not (= var2200 null-var1329))) ; Negate: Cond: $r24 == null  
(define-const var2065 var474 (allowlistEntry/1462084866 var2200)) ; Statement: $r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry> 
(define-const var2648 var2119 (var2119_fromNullable/-489834757 (cast-from-var474-to-var586 var2065))) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18) 
 ; Statement: goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)] 
(assert true) ; Non Conditional
(define-const var2118 Bool (var1707_shouldReportConformanceViolation/278912843 var3493 var278 var2648 var775)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2118 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var742_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var2190_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), allowlistEntry/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.Requirement$WhitelistEntry), var2119_fromNullable/-489834757=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), cast-from-var474-to-var586=([com.google.javascript.jscomp.Requirement$WhitelistEntry], java.lang.Object), var1707_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var1980=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var2933=r0, var3912=com.google.javascript.rhino.Node, var1033=r6, var1372=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var3020=r3, var281=com.google.javascript.jscomp.Requirement$Severity, var976=$r2, var631=$r1, var284=com.google.javascript.jscomp.DiagnosticType, var2668=com.google.javascript.jscomp.CheckConformance, var799=r21, var3437=$r22, var2415=$z2, var1743=$r23, var2660=com.google.javascript.jscomp.Requirement, var1307=$r10, var1879=$r7, var3571=$r8, var3330=$r9, var742=com.google.javascript.jscomp.JSError, var775=$r19, var2190=com.google.javascript.jscomp.NodeUtil, var3044=$r20, var1886=null_type, var1329=com.google.javascript.jscomp.ConformanceRules$AllowList, var2200=$r24, var2860=r11, var3899=com.google.javascript.jscomp.AbstractCompiler, var47=$r12, var1707=com.google.javascript.jscomp.ErrorManager, var3493=$r14, var278=$r13, var474=com.google.javascript.jscomp.Requirement$WhitelistEntry, var2065=$r18, var2119=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var586=java.lang.Object, var2648=$r25, var2118=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var1980, r0=var2933, com.google.javascript.rhino.Node=var3912, r6=var1033, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var1372, r3=var3020, com.google.javascript.jscomp.Requirement$Severity=var281, $r2=var976, $r1=var631, com.google.javascript.jscomp.DiagnosticType=var284, com.google.javascript.jscomp.CheckConformance=var2668, r21=var799, $r22=var3437, $z2=var2415, $r23=var1743, com.google.javascript.jscomp.Requirement=var2660, $r10=var1307, $r7=var1879, $r8=var3571, $r9=var3330, com.google.javascript.jscomp.JSError=var742, $r19=var775, com.google.javascript.jscomp.NodeUtil=var2190, $r20=var3044, null_type=var1886, com.google.javascript.jscomp.ConformanceRules$AllowList=var1329, $r24=var2200, r11=var2860, com.google.javascript.jscomp.AbstractCompiler=var3899, $r12=var47, com.google.javascript.jscomp.ErrorManager=var1707, $r14=var3493, $r13=var278, com.google.javascript.jscomp.Requirement$WhitelistEntry=var474, $r18=var2065, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var2119, java.lang.Object=var586, $r25=var2648, $z1=var2118}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "";	goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>];	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = null;	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry>;	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18);	goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)];	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10