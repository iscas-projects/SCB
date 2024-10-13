(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2044 0)
(declare-sort var325 0)
(declare-sort var1827 0)
(declare-sort var526 0)
(declare-sort var736 0)
(declare-sort var2407 0)
(declare-sort var852 0)
(declare-sort var1216 0)
(declare-sort var1917 0)
(declare-sort var134 0)
(declare-sort var2617 0)
(declare-sort var1139 0)
(declare-sort var1618 0)
(declare-sort var716 0)
(declare-sort var216 0)
(declare-sort var498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun severity/1835449059 (var2044) var526)
(declare-fun note/-1461806451 (var1827) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun requirement/1835449059 (var2044) var852)
(declare-fun arr-String-init () (Array Int String))
(declare-fun message/1835449059 (var2044) String)
(declare-fun var1216_make/1759175387 (var852 var325 var736 (Array Int String)) var1216)
(declare-fun var1917_getSourceName/-747323770 (var325) String)
(declare-fun compiler/1835449059 (var2044) var1139)
(declare-fun getErrorManager/810645288 (var1139) var1618)
(declare-fun allowlistEntry/1462084866 (var2617) var716)
(declare-fun var216_fromNullable/-489834757 (var498) var216)
(declare-fun cast-from-var716-to-var498 (var716) var498)
(declare-fun var1618_shouldReportConformanceViolation/278912843 (var1618 var852 var216 var1216) Bool)
(declare-const null-var2044 var2044)
(declare-const null-var325 var325)
(declare-const null-var1827 var1827)
(declare-const var526-ERROR var526)
(declare-const var2407-CONFORMANCE_ERROR var736)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-String String)
(declare-const null-var2617 var2617)
(declare-const var2968 var2044) ; Statement: r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule 
(assert (not (= var2968 null-var2044)))
(declare-const var1797 var325) ; Statement: r6 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1797 null-var325)))
(declare-const var1464 var1827) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult 
(assert (not (= var1464 null-var1827)))
(define-const var260 var526 (severity/1835449059 var2968)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity> 
(define-const var3171 var526 var526-ERROR) ; Statement: $r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR> 
 ; Statement: if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level> 
(assert (not (not (= var260 var3171)))) ; Negate: Cond: $r2 != $r1  
(define-const var1551 var736 var2407-CONFORMANCE_ERROR) ; Statement: r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR> 
 ; Statement: goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>] 
(assert true) ; Non Conditional
(define-const var835 String (note/-1461806451 var1464)) ; Statement: $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(assert true)
(define-const var25 Bool (isEmpty/-1285796103 var835)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r23 = "\n" 
(assert (= (ite var25 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2540 String "\n") ; Statement: $r23 = "\n" 
(assert true) ; Non Conditional
(define-const var3516 var852 (requirement/1835449059 var2968)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
(define-const var2045 (Array Int String) arr-String-init) ; Statement: $r7 = newarray (java.lang.String)[3] 
(define-const var2267 String (message/1835449059 var2968)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message> 
(declare-const var2045!1 (Array Int String))
(assert (not (= var2045!1 null-__Array__Int__String__)))
(assert (= (select var2045!1 0) var2267)) ; Statement: $r7[0] = $r8 
(declare-const var2045!2 (Array Int String))
(assert (not (= var2045!2 null-__Array__Int__String__)))
(assert (= (select var2045!2 1) var2540)) ; Statement: $r7[1] = $r23 
(define-const var3643 String (note/-1461806451 var1464)) ; Statement: $r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note> 
(declare-const var2045!3 (Array Int String))
(assert (not (= var2045!3 null-__Array__Int__String__)))
(assert (= (select var2045!3 2) var3643)) ; Statement: $r7[2] = $r9 
(define-const var819 var1216 (var1216_make/1759175387 var3516 var1797 var1551 var2045!3)) ; Statement: $r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7) 
(define-const var1316 String (var1917_getSourceName/-747323770 var1797)) ; Statement: $r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6) 
 ; Statement: if $r20 == null goto $r24 = null 
(assert (= var1316 null-String)) ; Cond: $r20 == null 
(define-const var1267 var2617 null-var2617) ; Statement: $r24 = null 
(assert true) ; Non Conditional
(define-const var3543 var2617 var1267) ; Statement: r11 = $r24 
(define-const var3181 var1139 (compiler/1835449059 var2968)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert true)
(define-const var1981 var1618 (getErrorManager/810645288 var3181)) ; Statement: $r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>() 
(define-const var842 var852 (requirement/1835449059 var2968)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement> 
 ; Statement: if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>() 
(assert (not (= var1267 null-var2617))) ; Negate: Cond: $r24 == null  
(define-const var3692 var716 (allowlistEntry/1462084866 var1267)) ; Statement: $r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry> 
(define-const var1860 var216 (var216_fromNullable/-489834757 (cast-from-var716-to-var498 var3692))) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18) 
 ; Statement: goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)] 
(assert true) ; Non Conditional
(define-const var2678 Bool (var1618_shouldReportConformanceViolation/278912843 var1981 var842 var1860 var819)) ; Statement: $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2678 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {severity/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement$Severity), note/-1461806451=([com.google.javascript.jscomp.ConformanceRules$ConformanceResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), requirement/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.Requirement), arr-String-init=([], java.lang.String[]), message/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], java.lang.String), var1216_make/1759175387=([com.google.javascript.jscomp.Requirement, com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var1917_getSourceName/-747323770=([com.google.javascript.rhino.Node], java.lang.String), compiler/1835449059=([com.google.javascript.jscomp.ConformanceRules$AbstractRule], com.google.javascript.jscomp.AbstractCompiler), getErrorManager/810645288=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.ErrorManager), allowlistEntry/1462084866=([com.google.javascript.jscomp.ConformanceRules$AllowList], com.google.javascript.jscomp.Requirement$WhitelistEntry), var216_fromNullable/-489834757=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.base.Optional), cast-from-var716-to-var498=([com.google.javascript.jscomp.Requirement$WhitelistEntry], java.lang.Object), var1618_shouldReportConformanceViolation/278912843=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.Requirement, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, com.google.javascript.jscomp.JSError], boolean)}
; {var2044=com.google.javascript.jscomp.ConformanceRules$AbstractRule, var2968=r0, var325=com.google.javascript.rhino.Node, var1797=r6, var1827=com.google.javascript.jscomp.ConformanceRules$ConformanceResult, var1464=r3, var526=com.google.javascript.jscomp.Requirement$Severity, var260=$r2, var3171=$r1, var736=com.google.javascript.jscomp.DiagnosticType, var2407=com.google.javascript.jscomp.CheckConformance, var1551=r21, var835=$r22, var25=$z2, var2540=$r23, var852=com.google.javascript.jscomp.Requirement, var3516=$r10, var2045=$r7, var2267=$r8, var3643=$r9, var1216=com.google.javascript.jscomp.JSError, var819=$r19, var1917=com.google.javascript.jscomp.NodeUtil, var1316=$r20, var134=null_type, var2617=com.google.javascript.jscomp.ConformanceRules$AllowList, var1267=$r24, var3543=r11, var1139=com.google.javascript.jscomp.AbstractCompiler, var3181=$r12, var1618=com.google.javascript.jscomp.ErrorManager, var1981=$r14, var842=$r13, var716=com.google.javascript.jscomp.Requirement$WhitelistEntry, var3692=$r18, var216=com.google.javascript.jscomp.jarjar.com.google.common.base.Optional, var498=java.lang.Object, var1860=$r25, var2678=$z1}
; {com.google.javascript.jscomp.ConformanceRules$AbstractRule=var2044, r0=var2968, com.google.javascript.rhino.Node=var325, r6=var1797, com.google.javascript.jscomp.ConformanceRules$ConformanceResult=var1827, r3=var1464, com.google.javascript.jscomp.Requirement$Severity=var526, $r2=var260, $r1=var3171, com.google.javascript.jscomp.DiagnosticType=var736, com.google.javascript.jscomp.CheckConformance=var2407, r21=var1551, $r22=var835, $z2=var25, $r23=var2540, com.google.javascript.jscomp.Requirement=var852, $r10=var3516, $r7=var2045, $r8=var2267, $r9=var3643, com.google.javascript.jscomp.JSError=var1216, $r19=var819, com.google.javascript.jscomp.NodeUtil=var1917, $r20=var1316, null_type=var134, com.google.javascript.jscomp.ConformanceRules$AllowList=var2617, $r24=var1267, r11=var3543, com.google.javascript.jscomp.AbstractCompiler=var1139, $r12=var3181, com.google.javascript.jscomp.ErrorManager=var1618, $r14=var1981, $r13=var842, com.google.javascript.jscomp.Requirement$WhitelistEntry=var716, $r18=var3692, com.google.javascript.jscomp.jarjar.com.google.common.base.Optional=var216, java.lang.Object=var498, $r25=var1860, $z1=var2678}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ConformanceRules$AbstractRule;	r6 := @parameter0: com.google.javascript.rhino.Node;	r3 := @parameter1: com.google.javascript.jscomp.ConformanceRules$ConformanceResult;	$r2 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement$Severity severity>;	$r1 = <com.google.javascript.jscomp.Requirement$Severity: com.google.javascript.jscomp.Requirement$Severity ERROR>;	if $r2 != $r1 goto $r5 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: com.google.javascript.jscomp.ConformanceRules$ConformanceLevel level>;	r21 = <com.google.javascript.jscomp.CheckConformance: com.google.javascript.jscomp.DiagnosticType CONFORMANCE_ERROR>;	goto [?= $r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>];	$r22 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r23 = "\n";	$r23 = "\n";	$r10 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	$r7 = newarray (java.lang.String)[3];	$r8 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: java.lang.String message>;	$r7[0] = $r8;	$r7[1] = $r23;	$r9 = r3.<com.google.javascript.jscomp.ConformanceRules$ConformanceResult: java.lang.String note>;	$r7[2] = $r9;	$r19 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.jscomp.Requirement,com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r10, r6, r21, $r7);	$r20 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getSourceName(com.google.javascript.rhino.Node)>(r6);	if $r20 == null goto $r24 = null;	$r24 = null;	r11 = $r24;	$r12 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r14 = virtualinvoke $r12.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.ErrorManager getErrorManager()>();	$r13 = r0.<com.google.javascript.jscomp.ConformanceRules$AbstractRule: com.google.javascript.jscomp.Requirement requirement>;	if $r24 == null goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional absent()>();	$r18 = $r24.<com.google.javascript.jscomp.ConformanceRules$AllowList: com.google.javascript.jscomp.Requirement$WhitelistEntry allowlistEntry>;	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Optional: com.google.javascript.jscomp.jarjar.com.google.common.base.Optional fromNullable(java.lang.Object)>($r18);	goto [?= $z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19)];	$z1 = interfaceinvoke $r14.<com.google.javascript.jscomp.ErrorManager: boolean shouldReportConformanceViolation(com.google.javascript.jscomp.Requirement,com.google.javascript.jscomp.jarjar.com.google.common.base.Optional,com.google.javascript.jscomp.JSError)>($r13, $r25, $r19);	if $z1 == 0 goto return;	return
;block_num 10