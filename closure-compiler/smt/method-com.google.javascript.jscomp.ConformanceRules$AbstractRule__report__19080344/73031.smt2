(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var641 0)
(declare-sort var687 0)
(declare-sort var42 0)
(declare-sort var3373 0)
(declare-sort var2007 0)
(declare-sort var2788 0)
(declare-sort var2929 0)
(declare-sort var636 0)
(declare-sort var3554 0)
(declare-sort var2732 0)
(declare-sort var512 0)
(declare-sort var3522 0)
(declare-sort var1101 0)
(declare-sort var2074 0)
(declare-sort var8 0)
(declare-sort var2021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var641) var3373)
(declare-fun note/-1461806451 (var42) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var641) var2929)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var641) String)
(declare-fun var636_make/1759175387 (var2929 var687 var2007 (Array Int String)) var636)
(declare-fun var3554_getSourceName/-747323770 (var687) String)
(declare-fun findAllowListForPath/-2079832993 (var641 String) var512)
(declare-fun compiler/1835449059 (var641) var3522)
(declare-fun getErrorManager/810645288 (var3522) var1101)
(declare-fun allowlistEntry/1462084866 (var512) var2074)
(declare-fun var8_fromNullable/-489834757 (var2021) var8)
(declare-fun cast-from-var2074-to-var2021 (var2074) var2021)
(declare-fun var1101_shouldReportConformanceViolation/278912843 (var1101 var2929 var8 var636) Bool)
(declare-const null-var641 var641)
(declare-const null-var687 var687)
(declare-const null-var42 var42)
(declare-const var3373-ERROR var3373)
(declare-const var2788-CONFORMANCE_ERROR var2007)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var512 var512)
(declare-const var3764 var641) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var3764 null-var641)))
(declare-const var1970 var687) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1970 null-var687)))
(declare-const var3238 var42) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var3238 null-var42)))
(define-const var2893 var3373 (severity/1835449059 var3764)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var396 var3373 var3373-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var2893 var396)))) ; Negate: Cond: $r2 != $r1  
(define-const var3697 var2007 var2788-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var3166 String (note/-1461806451 var3238)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var3842 Bool (isEmpty/-1285796103 var3166)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (= (ite var3842 1 0) 0)) ; Cond: $z2 == 0 
(define-const var199 String "\n") ; Statement: $r23 = "\n" 
(assert true) ; Non Conditional
(define-const var1263 var2929 (requirement/1835449059 var3764)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var1480 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var939 String (message/1835449059 var3764)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var1480!1 (Array Int String))
(assert (not (= var1480!1 null-__Array__Int__String__)))
(assert (= (select var1480!1 0) var939)) ; Statement: $r7[0] = $r8 
(declare-const var1480!2 (Array Int String))
(assert (not (= var1480!2 null-__Array__Int__String__)))
(assert (= (select var1480!2 1) var199)) ; Statement: $r7[1] = $r23 
(define-const var1308 String (note/-1461806451 var3238)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var1480!3 (Array Int String))
(assert (not (= var1480!3 null-__Array__Int__String__)))
(assert (= (select var1480!3 2) var1308)) ; Statement: $r7[2] = $r9 
(define-const var3808 var636 (var636_make/1759175387 var1263 var1970 var3697 var1480!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var3732 String (var3554_getSourceName/-747323770 var1970)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (not (= var3732 null-String))) ; Negate: Cond: $r20 == null  
(assert true)
(define-const var2052 var512 (findAllowListForPath/-2079832993 var3764 var3732)) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20) 
 ; Statement: goto [?= r11 = $r24] 
(assert true) ; Non Conditional
(define-const var1649 var512 var2052) ; Statement: r11 = $r24 
(define-const var1034 var3522 (compiler/1835449059 var3764)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var2944 var1101 (getErrorManager/810645288 var1034)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var2638 var2929 (requirement/1835449059 var3764)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (not (= var2052 null-var512))) ; Negate: Cond: $r24 == null  
(define-const var1380 var2074 (allowlistEntry/1462084866 var2052)) ; Statement: $r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry> 
(define-const var484 var8 (var8_fromNullable/-489834757 (cast-from-var2074-to-var2021 var1380))) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18) 
 ; Statement: goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)] 
(assert true) ; Non Conditional
(define-const var3774 Bool (var1101_shouldReportConformanceViolation/278912843 var2944 var2638 var484 var3808)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3774 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var636_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var3554_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), findAllowListForPath/-2079832993=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, java.lang.String], com.google.javascript.jscomp.ConformanceRules$AllowList), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), allowlistEntry/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.Requirement$WhitelistEntry), var8_fromNullable/-489834757=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), cast-from-var2074-to-var2021=([com.google.javascript.jscomp.Requirement$WhitelistEntry], java.lang.Object), var1101_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var641=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var3764=r0, var687=com.google.javascript.rhino.Node, var1970=r6, var42=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var3238=r3, var3373=com.google.javascript.jscomp.Requirement$Severity, var2893=$r2, var396=$r1, var2007=com.google.javascript.jscomp.DiagnosticType, var2788=com.google.javascript.jscomp.CheckConformance, var3697=r21, var3166=$r22, var3842=$z2, var199=$r23, var2929=com.google.javascript.jscomp.Requirement, var1263=$r10, var1480=$r7, var939=$r8, var1308=$r9, var636=com.google.javascript.jscomp.JSError, var3808=$r19, var3554=com.google.javascript.jscomp.NodeUtil, var3732=$r20, var2732=null_type, var512=com.google.javascript.jscomp.ConformanceRules$AllowList, var2052=$r24, var1649=r11, var3522=com.google.javascript.jscomp.AbstractCompiler, var1034=$r12, var1101=com.google.javascript.jscomp.ErrorManager, var2944=$r14, var2638=$r13, var2074=com.google.javascript.jscomp.Requirement$WhitelistEntry, var1380=$r18, var8=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var2021=java.lang.Object, var484=$r25, var3774=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var641, r0=var3764, com.google.javascript.rhino.Node=var687, r6=var1970, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var42, r3=var3238, com.google.javascript.jscomp.Requirement$Severity=var3373, $r2=var2893, $r1=var396, com.google.javascript.jscomp.DiagnosticType=var2007, com.google.javascript.jscomp.CheckConformance=var2788, r21=var3697, $r22=var3166, $z2=var3842, $r23=var199, com.google.javascript.jscomp.Requirement=var2929, $r10=var1263, $r7=var1480, $r8=var939, $r9=var1308, com.google.javascript.jscomp.JSError=var636, $r19=var3808, com.google.javascript.jscomp.NodeUtil=var3554, $r20=var3732, null_type=var2732, com.google.javascript.jscomp.ConformanceRules$AllowList=var512, $r24=var2052, r11=var1649, com.google.javascript.jscomp.AbstractCompiler=var3522, $r12=var1034, com.google.javascript.jscomp.ErrorManager=var1101, $r14=var2944, $r13=var2638, com.google.javascript.jscomp.Requirement$WhitelistEntry=var2074, $r18=var1380, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var8, java.lang.Object=var2021, $r25=var484, $z1=var3774}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "\n";	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20);	goto [?= r11 = $r24];	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry>;	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18);	goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)];	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10