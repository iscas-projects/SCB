(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var949 0)
(declare-sort var368 0)
(declare-sort var1015 0)
(declare-sort var2356 0)
(declare-sort var708 0)
(declare-sort var558 0)
(declare-sort var1835 0)
(declare-sort var3804 0)
(declare-sort var2841 0)
(declare-sort var2326 0)
(declare-sort var2950 0)
(declare-sort var1763 0)
(declare-sort var1124 0)
(declare-sort var1390 0)
(declare-sort var1641 0)
(declare-sort var504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var949) var2356)
(declare-fun note/-1461806451 (var1015) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var949) var1835)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var949) String)
(declare-fun var3804_make/1759175387 (var1835 var368 var708 (Array Int String)) var3804)
(declare-fun var2841_getSourceName/-747323770 (var368) String)
(declare-fun findAllowListForPath/-2079832993 (var949 String) var2950)
(declare-fun compiler/1835449059 (var949) var1763)
(declare-fun getErrorManager/810645288 (var1763) var1124)
(declare-fun allowlistEntry/1462084866 (var2950) var1390)
(declare-fun var1641_fromNullable/-489834757 (var504) var1641)
(declare-fun cast-from-var1390-to-var504 (var1390) var504)
(declare-fun var1124_shouldReportConformanceViolation/278912843 (var1124 var1835 var1641 var3804) Bool)
(declare-const null-var949 var949)
(declare-const null-var368 var368)
(declare-const null-var1015 var1015)
(declare-const var2356-ERROR var2356)
(declare-const var558-CONFORMANCE_ERROR var708)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var2950 var2950)
(declare-const var710 var949) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var710 null-var949)))
(declare-const var3808 var368) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3808 null-var368)))
(declare-const var1354 var1015) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var1354 null-var1015)))
(define-const var3891 var2356 (severity/1835449059 var710)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var959 var2356 var2356-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var3891 var959)))) ; Negate: Cond: $r2 != $r1  
(define-const var3109 var708 var558-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var1547 String (note/-1461806451 var1354)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var3431 Bool (isEmpty/-1285796103 var1547)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (not (= (ite var3431 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var64 String "") ; Statement: $r23 = "" 
 ; Statement: goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>] 
(assert true) ; Non Conditional
(define-const var3494 var1835 (requirement/1835449059 var710)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var3712 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var1781 String (message/1835449059 var710)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var3712!1 (Array Int String))
(assert (not (= var3712!1 null-__Array__Int__String__)))
(assert (= (select var3712!1 0) var1781)) ; Statement: $r7[0] = $r8 
(declare-const var3712!2 (Array Int String))
(assert (not (= var3712!2 null-__Array__Int__String__)))
(assert (= (select var3712!2 1) var64)) ; Statement: $r7[1] = $r23 
(define-const var1605 String (note/-1461806451 var1354)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var3712!3 (Array Int String))
(assert (not (= var3712!3 null-__Array__Int__String__)))
(assert (= (select var3712!3 2) var1605)) ; Statement: $r7[2] = $r9 
(define-const var1186 var3804 (var3804_make/1759175387 var3494 var3808 var3109 var3712!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var2507 String (var2841_getSourceName/-747323770 var3808)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (not (= var2507 null-String))) ; Negate: Cond: $r20 == null  
(assert true)
(define-const var511 var2950 (findAllowListForPath/-2079832993 var710 var2507)) ; Statement: $r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20) 
 ; Statement: goto [?= r11 = $r24] 
(assert true) ; Non Conditional
(define-const var3664 var2950 var511) ; Statement: r11 = $r24 
(define-const var1270 var1763 (compiler/1835449059 var710)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1168 var1124 (getErrorManager/810645288 var1270)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var1024 var1835 (requirement/1835449059 var710)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (not (= var511 null-var2950))) ; Negate: Cond: $r24 == null  
(define-const var773 var1390 (allowlistEntry/1462084866 var511)) ; Statement: $r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry> 
(define-const var1677 var1641 (var1641_fromNullable/-489834757 (cast-from-var1390-to-var504 var773))) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18) 
 ; Statement: goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)] 
(assert true) ; Non Conditional
(define-const var1746 Bool (var1124_shouldReportConformanceViolation/278912843 var1168 var1024 var1677 var1186)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1746 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var3804_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var2841_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), findAllowListForPath/-2079832993=([com.google.javascript.jscomp.ConformanceRules$AbstractRule, java.lang.String], com.google.javascript.jscomp.ConformanceRules$AllowList), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), allowlistEntry/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.Requirement$WhitelistEntry), var1641_fromNullable/-489834757=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), cast-from-var1390-to-var504=([com.google.javascript.jscomp.Requirement$WhitelistEntry], java.lang.Object), var1124_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var949=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var710=r0, var368=com.google.javascript.rhino.Node, var3808=r6, var1015=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var1354=r3, var2356=com.google.javascript.jscomp.Requirement$Severity, var3891=$r2, var959=$r1, var708=com.google.javascript.jscomp.DiagnosticType, var558=com.google.javascript.jscomp.CheckConformance, var3109=r21, var1547=$r22, var3431=$z2, var64=$r23, var1835=com.google.javascript.jscomp.Requirement, var3494=$r10, var3712=$r7, var1781=$r8, var1605=$r9, var3804=com.google.javascript.jscomp.JSError, var1186=$r19, var2841=com.google.javascript.jscomp.NodeUtil, var2507=$r20, var2326=null_type, var2950=com.google.javascript.jscomp.ConformanceRules$AllowList, var511=$r24, var3664=r11, var1763=com.google.javascript.jscomp.AbstractCompiler, var1270=$r12, var1124=com.google.javascript.jscomp.ErrorManager, var1168=$r14, var1024=$r13, var1390=com.google.javascript.jscomp.Requirement$WhitelistEntry, var773=$r18, var1641=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var504=java.lang.Object, var1677=$r25, var1746=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var949, r0=var710, com.google.javascript.rhino.Node=var368, r6=var3808, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var1015, r3=var1354, com.google.javascript.jscomp.Requirement$Severity=var2356, $r2=var3891, $r1=var959, com.google.javascript.jscomp.DiagnosticType=var708, com.google.javascript.jscomp.CheckConformance=var558, r21=var3109, $r22=var1547, $z2=var3431, $r23=var64, com.google.javascript.jscomp.Requirement=var1835, $r10=var3494, $r7=var3712, $r8=var1781, $r9=var1605, com.google.javascript.jscomp.JSError=var3804, $r19=var1186, com.google.javascript.jscomp.NodeUtil=var2841, $r20=var2507, null_type=var2326, com.google.javascript.jscomp.ConformanceRules$AllowList=var2950, $r24=var511, r11=var3664, com.google.javascript.jscomp.AbstractCompiler=var1763, $r12=var1270, com.google.javascript.jscomp.ErrorManager=var1124, $r14=var1168, $r13=var1024, com.google.javascript.jscomp.Requirement$WhitelistEntry=var1390, $r18=var773, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var1641, java.lang.Object=var504, $r25=var1677, $z1=var1746}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "";	goto [?= $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>];	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = virtualinvoke r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.ConformanceRules$AllowList findAllowListForPath(java.lang.String)>($r20);	goto [?= r11 = $r24];	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry>;	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18);	goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)];	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10