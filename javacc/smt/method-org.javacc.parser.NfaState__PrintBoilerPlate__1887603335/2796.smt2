(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort var3231 0)
(declare-sort var2345 0)
(declare-sort var3398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3231-init () (Array Int var3231))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2345_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3231 (String) var3231)
(declare-fun genCodeLine/787715242 (var1830 (Array Int var3231)) void)
(declare-const null-var1830 var1830)
(declare-const null-__Array__Int__var3231__ (Array Int var3231))
(declare-const var3398-jjCheckNAddStatesDualNeeded Bool)
(declare-const var3398-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var1321 var1830) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1321 null-var1830)))
(define-const var1506 (Array Int var3231) arr-var3231-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var2219 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2219)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2219!1 String)
(assert (= var2219!1 ""))
(define-const var3364 Bool var2345_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (= (ite var3364 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1775 String "") ; Statement: $r54 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3105 String (append/672562846 var2219!1 var1775)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var2219!2 String)
(assert (= var2219!2 (str.++ var2219!1 var1775)))
(assert true)
(define-const var648 String (append/672562846 var3105 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var3094 String (toString/-2075883882 var648)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1506!1 (Array Int var3231))
(assert (not (= var1506!1 null-__Array__Int__var3231__)))
(assert (= (select var1506!1 0) (cast-from-String-to-var3231 var3094))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var1321 var1506!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var1321!1 var1830)
(declare-const var1506!2 (Array Int var3231))
(define-const var533 (Array Int var3231) arr-var3231-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var533!1 (Array Int var3231))
(assert (not (= var533!1 null-__Array__Int__var3231__)))
(assert (= (select var533!1 0) (cast-from-String-to-var3231 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1321!1 var533!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1321!2 var1830)
(declare-const var533!2 (Array Int var3231))
(define-const var3896 (Array Int var3231) arr-var3231-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var3896!1 (Array Int var3231))
(assert (not (= var3896!1 null-__Array__Int__var3231__)))
(assert (= (select var3896!1 0) (cast-from-String-to-var3231 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var1321!2 var3896!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var1321!3 var1830)
(declare-const var3896!2 (Array Int var3231))
(define-const var2769 (Array Int var3231) arr-var3231-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2769!1 (Array Int var3231))
(assert (not (= var2769!1 null-__Array__Int__var3231__)))
(assert (= (select var2769!1 0) (cast-from-String-to-var3231 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var1321!3 var2769!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var1321!4 var1830)
(declare-const var2769!2 (Array Int var3231))
(define-const var1170 (Array Int var3231) arr-var3231-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var1170!1 (Array Int var3231))
(assert (not (= var1170!1 null-__Array__Int__var3231__)))
(assert (= (select var1170!1 0) (cast-from-String-to-var3231 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var1321!4 var1170!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var1321!5 var1830)
(declare-const var1170!2 (Array Int var3231))
(define-const var3685 (Array Int var3231) arr-var3231-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var3685!1 (Array Int var3231))
(assert (not (= var3685!1 null-__Array__Int__var3231__)))
(assert (= (select var3685!1 0) (cast-from-String-to-var3231 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var1321!5 var3685!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var1321!6 var1830)
(declare-const var3685!2 (Array Int var3231))
(define-const var1389 (Array Int var3231) arr-var3231-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var1389!1 (Array Int var3231))
(assert (not (= var1389!1 null-__Array__Int__var3231__)))
(assert (= (select var1389!1 0) (cast-from-String-to-var3231 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var1321!6 var1389!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var1321!7 var1830)
(declare-const var1389!2 (Array Int var3231))
(define-const var3727 (Array Int var3231) arr-var3231-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var3727!1 (Array Int var3231))
(assert (not (= var3727!1 null-__Array__Int__var3231__)))
(assert (= (select var3727!1 0) (cast-from-String-to-var3231 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1321!7 var3727!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var1321!8 var1830)
(declare-const var3727!2 (Array Int var3231))
(define-const var2111 (Array Int var3231) arr-var3231-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var3722 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3722)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3722!1 String)
(assert (= var3722!1 ""))
(define-const var3851 Bool var2345_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (= (ite var3851 1 0) 0)) ; Cond: $z1 == 0 
(define-const var93 String "") ; Statement: $r55 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1319 String (append/672562846 var3722!1 var93)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var3722!2 String)
(assert (= var3722!2 (str.++ var3722!1 var93)))
(assert true)
(define-const var1561 String (append/672562846 var1319 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var1319!1 String)
(assert (= var1319!1 (str.++ var1319 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var2313 String (toString/-2075883882 var1561)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2111!1 (Array Int var3231))
(assert (not (= var2111!1 null-__Array__Int__var3231__)))
(assert (= (select var2111!1 0) (cast-from-String-to-var3231 var2313))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var1321!8 var2111!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var1321!9 var1830)
(declare-const var2111!2 (Array Int var3231))
(define-const var280 (Array Int var3231) arr-var3231-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var280!1 (Array Int var3231))
(assert (not (= var280!1 null-__Array__Int__var3231__)))
(assert (= (select var280!1 0) (cast-from-String-to-var3231 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1321!9 var280!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var1321!10 var1830)
(declare-const var280!2 (Array Int var3231))
(define-const var1655 (Array Int var3231) arr-var3231-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var1655!1 (Array Int var3231))
(assert (not (= var1655!1 null-__Array__Int__var3231__)))
(assert (= (select var1655!1 0) (cast-from-String-to-var3231 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var1321!10 var1655!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var1321!11 var1830)
(declare-const var1655!2 (Array Int var3231))
(define-const var525 (Array Int var3231) arr-var3231-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var525!1 (Array Int var3231))
(assert (not (= var525!1 null-__Array__Int__var3231__)))
(assert (= (select var525!1 0) (cast-from-String-to-var3231 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var1321!11 var525!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var1321!12 var1830)
(declare-const var525!2 (Array Int var3231))
(define-const var480 (Array Int var3231) arr-var3231-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var480!1 (Array Int var3231))
(assert (not (= var480!1 null-__Array__Int__var3231__)))
(assert (= (select var480!1 0) (cast-from-String-to-var3231 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var1321!12 var480!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var1321!13 var1830)
(declare-const var480!2 (Array Int var3231))
(define-const var2833 (Array Int var3231) arr-var3231-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var2833!1 (Array Int var3231))
(assert (not (= var2833!1 null-__Array__Int__var3231__)))
(assert (= (select var2833!1 0) (cast-from-String-to-var3231 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1321!13 var2833!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var1321!14 var1830)
(declare-const var2833!2 (Array Int var3231))
(define-const var815 (Array Int var3231) arr-var3231-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var3884 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3884)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3884!1 String)
(assert (= var3884!1 ""))
(define-const var3063 Bool var2345_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (= (ite var3063 1 0) 0)) ; Cond: $z2 == 0 
(define-const var559 String "") ; Statement: $r56 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var833 String (append/672562846 var3884!1 var559)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3884!2 String)
(assert (= var3884!2 (str.++ var3884!1 var559)))
(assert true)
(define-const var2504 String (append/672562846 var833 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var890 String (toString/-2075883882 var2504)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var815!1 (Array Int var3231))
(assert (not (= var815!1 null-__Array__Int__var3231__)))
(assert (= (select var815!1 0) (cast-from-String-to-var3231 var890))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var1321!14 var815!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var1321!15 var1830)
(declare-const var815!2 (Array Int var3231))
(define-const var1116 (Array Int var3231) arr-var3231-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var1116!1 (Array Int var3231))
(assert (not (= var1116!1 null-__Array__Int__var3231__)))
(assert (= (select var1116!1 0) (cast-from-String-to-var3231 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1321!15 var1116!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var1321!16 var1830)
(declare-const var1116!2 (Array Int var3231))
(define-const var1402 (Array Int var3231) arr-var3231-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var1402!1 (Array Int var3231))
(assert (not (= var1402!1 null-__Array__Int__var3231__)))
(assert (= (select var1402!1 0) (cast-from-String-to-var3231 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var1321!16 var1402!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var1321!17 var1830)
(declare-const var1402!2 (Array Int var3231))
(define-const var1807 (Array Int var3231) arr-var3231-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var1807!1 (Array Int var3231))
(assert (not (= var1807!1 null-__Array__Int__var3231__)))
(assert (= (select var1807!1 0) (cast-from-String-to-var3231 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var1321!17 var1807!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var1321!18 var1830)
(declare-const var1807!2 (Array Int var3231))
(define-const var3327 (Array Int var3231) arr-var3231-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var3327!1 (Array Int var3231))
(assert (not (= var3327!1 null-__Array__Int__var3231__)))
(assert (= (select var3327!1 0) (cast-from-String-to-var3231 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1321!18 var3327!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var1321!19 var1830)
(declare-const var3327!2 (Array Int var3231))
(define-const var653 (Array Int var3231) arr-var3231-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var653!1 (Array Int var3231))
(assert (not (= var653!1 null-__Array__Int__var3231__)))
(assert (= (select var653!1 0) (cast-from-String-to-var3231 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var1321!19 var653!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var1321!20 var1830)
(declare-const var653!2 (Array Int var3231))
(define-const var3159 Bool var3398-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var3159 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3262 Bool var3398-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var3262 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3231-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2345_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3231=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var1830=org.javacc.parser.CodeGenerator, var1321=r0, var3231=java.lang.Object, var1506=$r1, var2219=$r2, var2345=org.javacc.parser.Options, var3364=$z0, var1775=$r54, var3105=$r3, var648=$r4, var3094=$r5, var533=$r6, var3896=$r7, var2769=$r8, var1170=$r9, var3685=$r10, var1389=$r11, var3727=$r12, var2111=$r13, var3722=$r14, var3851=$z1, var93=$r55, var1319=$r15, var1561=$r16, var2313=$r17, var280=$r18, var1655=$r19, var525=$r20, var480=$r21, var2833=$r22, var815=$r23, var3884=$r24, var3063=$z2, var559=$r56, var833=$r25, var2504=$r26, var890=$r27, var1116=$r28, var1402=$r29, var1807=$r30, var3327=$r31, var653=$r32, var3398=org.javacc.parser.NfaState, var3159=$z3, var3262=$z6}
; {org.javacc.parser.CodeGenerator=var1830, r0=var1321, java.lang.Object=var3231, $r1=var1506, $r2=var2219, org.javacc.parser.Options=var2345, $z0=var3364, $r54=var1775, $r3=var3105, $r4=var648, $r5=var3094, $r6=var533, $r7=var3896, $r8=var2769, $r9=var1170, $r10=var3685, $r11=var1389, $r12=var3727, $r13=var2111, $r14=var3722, $z1=var3851, $r55=var93, $r15=var1319, $r16=var1561, $r17=var2313, $r18=var280, $r19=var1655, $r20=var525, $r21=var480, $r22=var2833, $r23=var815, $r24=var3884, $z2=var3063, $r56=var559, $r25=var833, $r26=var2504, $r27=var890, $r28=var1116, $r29=var1402, $r30=var1807, $r31=var3327, $r32=var653, org.javacc.parser.NfaState=var3398, $z3=var3159, $z6=var3262}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "";	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "";	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9