(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2058 0)
(declare-sort var1349 0)
(declare-sort var522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var2058) Bool)
(declare-fun var1349_DumpStatesForStateCPP/11920310 (var2058) void)
(declare-fun arr-var522-init () (Array Int var522))
(declare-fun cast-from-String-to-var522 (String) var522)
(declare-fun genCode/442726974 (var2058 (Array Int var522)) void)
(declare-fun genCodeLine/787715242 (var2058 (Array Int var522)) void)
(declare-const null-var2058 var2058)
(declare-const null-__Array__Int__var522__ (Array Int var522))
(declare-const var1349-kinds (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var829 var2058) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var829 null-var2058)))
(assert true)
(define-const var951 Bool (isJavaLanguage/-1752064482 var829)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0) 
(assert (= (ite var951 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var1349_DumpStatesForStateCPP/11920310 var829)) ; Statement: staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0) 

(declare-const var829!1 var2058)
(assert true) ; Non Conditional
(define-const var422 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true)
(define-const var614 Bool (isJavaLanguage/-1752064482 var829!1)) ; Statement: $z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>() 
(assert (not (= (ite var614 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1001 (Array Int var522) arr-var522-init) ; Statement: $r26 = newarray (java.lang.Object)[1] 
(declare-const var1001!1 (Array Int var522))
(assert (not (= var1001!1 null-__Array__Int__var522__)))
(assert (= (select var1001!1 0) (cast-from-String-to-var522 "protected static final int[][] kindForState = "))) ; Statement: $r26[0] = "protected static final int[][] kindForState = " 
(assert true)
;(assert (genCode/442726974 var829!1 var1001!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r26) 

(declare-const var829!2 var2058)
(declare-const var1001!2 (Array Int var522))
 ; Statement: goto [?= $r11 = <org.javacc.parser.NfaState: int[][] kinds>] 
(assert true) ; Non Conditional
(define-const var2624 (Array Int (Array Int Int)) var1349-kinds) ; Statement: $r11 = <org.javacc.parser.NfaState: int[][] kinds> 
 ; Statement: if $r11 != null goto $r12 = newarray (java.lang.Object)[1] 
(assert (not (not (= var2624 null-__Array__Int____Array__Int__Int____)))) ; Negate: Cond: $r11 != null  
(define-const var3037 (Array Int var522) arr-var522-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(declare-const var3037!1 (Array Int var522))
(assert (not (= var3037!1 null-__Array__Int__var522__)))
(assert (= (select var3037!1 0) (cast-from-String-to-var522 "null;"))) ; Statement: $r25[0] = "null;" 
(assert true)
;(assert (genCodeLine/787715242 var829!2 var3037!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25) 

(declare-const var829!3 var2058)
(declare-const var3037!2 (Array Int var522))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), var1349_DumpStatesForStateCPP/11920310=([org.javacc.parser.CodeGenerator], void), arr-var522-init=([], java.lang.Object[]), cast-from-String-to-var522=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var2058=org.javacc.parser.CodeGenerator, var829=r0, var951=$z0, var1349=org.javacc.parser.NfaState, var422=z2, var614=$z1, var522=java.lang.Object, var1001=$r26, var2624=$r11, var3037=$r25}
; {org.javacc.parser.CodeGenerator=var2058, r0=var829, $z0=var951, org.javacc.parser.NfaState=var1349, z2=var422, $z1=var614, java.lang.Object=var522, $r26=var1001, $r11=var2624, $r25=var3037}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0);	staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0);	z2 = 0;	$z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>();	$r26 = newarray (java.lang.Object)[1];	$r26[0] = "protected static final int[][] kindForState = ";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r26);	goto [?= $r11 = <org.javacc.parser.NfaState: int[][] kinds>];	$r11 = <org.javacc.parser.NfaState: int[][] kinds>;	if $r11 != null goto $r12 = newarray (java.lang.Object)[1];	$r25 = newarray (java.lang.Object)[1];	$r25[0] = "null;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25);	return
;block_num 6