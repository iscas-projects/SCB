(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2968 0)
(declare-sort var838 0)
(declare-sort var3879 0)
(declare-sort var67 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var838-init () (Array Int var838))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3879_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var838 (String) var838)
(declare-fun genCodeLine/787715242 (var2968 (Array Int var838)) void)
(declare-const null-var2968 var2968)
(declare-const null-__Array__Int__var838__ (Array Int var838))
(declare-const var67-jjCheckNAddStatesDualNeeded Bool)
(declare-const var67-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var220 var2968) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var220 null-var2968)))
(define-const var451 (Array Int var838) arr-var838-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3283 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3283)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3283!1 String)
(assert (= var3283!1 ""))
(define-const var3097 Bool var3879_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (= (ite var3097 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1100 String "") ; Statement: $r54 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var758 String (append/672562846 var3283!1 var1100)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3283!2 String)
(assert (= var3283!2 (str.++ var3283!1 var1100)))
(assert true)
(define-const var281 String (append/672562846 var758 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var758!1 String)
(assert (= var758!1 (str.++ var758 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var3923 String (toString/-2075883882 var281)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var451!1 (Array Int var838))
(assert (not (= var451!1 null-__Array__Int__var838__)))
(assert (= (select var451!1 0) (cast-from-String-to-var838 var3923))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var220 var451!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var220!1 var2968)
(declare-const var451!2 (Array Int var838))
(define-const var2451 (Array Int var838) arr-var838-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2451!1 (Array Int var838))
(assert (not (= var2451!1 null-__Array__Int__var838__)))
(assert (= (select var2451!1 0) (cast-from-String-to-var838 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var220!1 var2451!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var220!2 var2968)
(declare-const var2451!2 (Array Int var838))
(define-const var2002 (Array Int var838) arr-var838-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2002!1 (Array Int var838))
(assert (not (= var2002!1 null-__Array__Int__var838__)))
(assert (= (select var2002!1 0) (cast-from-String-to-var838 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var220!2 var2002!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var220!3 var2968)
(declare-const var2002!2 (Array Int var838))
(define-const var1759 (Array Int var838) arr-var838-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1759!1 (Array Int var838))
(assert (not (= var1759!1 null-__Array__Int__var838__)))
(assert (= (select var1759!1 0) (cast-from-String-to-var838 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var220!3 var1759!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var220!4 var2968)
(declare-const var1759!2 (Array Int var838))
(define-const var399 (Array Int var838) arr-var838-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var399!1 (Array Int var838))
(assert (not (= var399!1 null-__Array__Int__var838__)))
(assert (= (select var399!1 0) (cast-from-String-to-var838 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var220!4 var399!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var220!5 var2968)
(declare-const var399!2 (Array Int var838))
(define-const var1315 (Array Int var838) arr-var838-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var1315!1 (Array Int var838))
(assert (not (= var1315!1 null-__Array__Int__var838__)))
(assert (= (select var1315!1 0) (cast-from-String-to-var838 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var220!5 var1315!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var220!6 var2968)
(declare-const var1315!2 (Array Int var838))
(define-const var488 (Array Int var838) arr-var838-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var488!1 (Array Int var838))
(assert (not (= var488!1 null-__Array__Int__var838__)))
(assert (= (select var488!1 0) (cast-from-String-to-var838 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var220!6 var488!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var220!7 var2968)
(declare-const var488!2 (Array Int var838))
(define-const var99 (Array Int var838) arr-var838-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var99!1 (Array Int var838))
(assert (not (= var99!1 null-__Array__Int__var838__)))
(assert (= (select var99!1 0) (cast-from-String-to-var838 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var220!7 var99!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var220!8 var2968)
(declare-const var99!2 (Array Int var838))
(define-const var981 (Array Int var838) arr-var838-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var382 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var382)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var382!1 String)
(assert (= var382!1 ""))
(define-const var2585 Bool var3879_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (not (= (ite var2585 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var431 String "static ") ; Statement: $r55 = "static " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3140 String (append/672562846 var382!1 var431)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var382!2 String)
(assert (= var382!2 (str.++ var382!1 var431)))
(assert true)
(define-const var2949 String (append/672562846 var3140 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var423 String (toString/-2075883882 var2949)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var981!1 (Array Int var838))
(assert (not (= var981!1 null-__Array__Int__var838__)))
(assert (= (select var981!1 0) (cast-from-String-to-var838 var423))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var220!8 var981!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var220!9 var2968)
(declare-const var981!2 (Array Int var838))
(define-const var128 (Array Int var838) arr-var838-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var128!1 (Array Int var838))
(assert (not (= var128!1 null-__Array__Int__var838__)))
(assert (= (select var128!1 0) (cast-from-String-to-var838 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var220!9 var128!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var220!10 var2968)
(declare-const var128!2 (Array Int var838))
(define-const var91 (Array Int var838) arr-var838-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var91!1 (Array Int var838))
(assert (not (= var91!1 null-__Array__Int__var838__)))
(assert (= (select var91!1 0) (cast-from-String-to-var838 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var220!10 var91!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var220!11 var2968)
(declare-const var91!2 (Array Int var838))
(define-const var487 (Array Int var838) arr-var838-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var487!1 (Array Int var838))
(assert (not (= var487!1 null-__Array__Int__var838__)))
(assert (= (select var487!1 0) (cast-from-String-to-var838 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var220!11 var487!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var220!12 var2968)
(declare-const var487!2 (Array Int var838))
(define-const var3481 (Array Int var838) arr-var838-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var3481!1 (Array Int var838))
(assert (not (= var3481!1 null-__Array__Int__var838__)))
(assert (= (select var3481!1 0) (cast-from-String-to-var838 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var220!12 var3481!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var220!13 var2968)
(declare-const var3481!2 (Array Int var838))
(define-const var1344 (Array Int var838) arr-var838-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1344!1 (Array Int var838))
(assert (not (= var1344!1 null-__Array__Int__var838__)))
(assert (= (select var1344!1 0) (cast-from-String-to-var838 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var220!13 var1344!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var220!14 var2968)
(declare-const var1344!2 (Array Int var838))
(define-const var1030 (Array Int var838) arr-var838-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var1032 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1032)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1032!1 String)
(assert (= var1032!1 ""))
(define-const var1618 Bool var3879_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (not (= (ite var1618 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1581 String "static ") ; Statement: $r56 = "static " 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2164 String (append/672562846 var1032!1 var1581)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1032!2 String)
(assert (= var1032!2 (str.++ var1032!1 var1581)))
(assert true)
(define-const var691 String (append/672562846 var2164 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var2164!1 String)
(assert (= var2164!1 (str.++ var2164 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var2187 String (toString/-2075883882 var691)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1030!1 (Array Int var838))
(assert (not (= var1030!1 null-__Array__Int__var838__)))
(assert (= (select var1030!1 0) (cast-from-String-to-var838 var2187))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var220!14 var1030!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var220!15 var2968)
(declare-const var1030!2 (Array Int var838))
(define-const var489 (Array Int var838) arr-var838-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var489!1 (Array Int var838))
(assert (not (= var489!1 null-__Array__Int__var838__)))
(assert (= (select var489!1 0) (cast-from-String-to-var838 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var220!15 var489!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var220!16 var2968)
(declare-const var489!2 (Array Int var838))
(define-const var1817 (Array Int var838) arr-var838-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var1817!1 (Array Int var838))
(assert (not (= var1817!1 null-__Array__Int__var838__)))
(assert (= (select var1817!1 0) (cast-from-String-to-var838 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var220!16 var1817!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var220!17 var2968)
(declare-const var1817!2 (Array Int var838))
(define-const var2941 (Array Int var838) arr-var838-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var2941!1 (Array Int var838))
(assert (not (= var2941!1 null-__Array__Int__var838__)))
(assert (= (select var2941!1 0) (cast-from-String-to-var838 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var220!17 var2941!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var220!18 var2968)
(declare-const var2941!2 (Array Int var838))
(define-const var2953 (Array Int var838) arr-var838-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var2953!1 (Array Int var838))
(assert (not (= var2953!1 null-__Array__Int__var838__)))
(assert (= (select var2953!1 0) (cast-from-String-to-var838 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var220!18 var2953!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var220!19 var2968)
(declare-const var2953!2 (Array Int var838))
(define-const var1098 (Array Int var838) arr-var838-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var1098!1 (Array Int var838))
(assert (not (= var1098!1 null-__Array__Int__var838__)))
(assert (= (select var1098!1 0) (cast-from-String-to-var838 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var220!19 var1098!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var220!20 var2968)
(declare-const var1098!2 (Array Int var838))
(define-const var957 Bool var67-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var957 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2735 Bool var67-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var2735 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var838-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3879_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var838=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var2968=org.javacc.parser.CodeGenerator, var220=r0, var838=java.lang.Object, var451=$r1, var3283=$r2, var3879=org.javacc.parser.Options, var3097=$z0, var1100=$r54, var758=$r3, var281=$r4, var3923=$r5, var2451=$r6, var2002=$r7, var1759=$r8, var399=$r9, var1315=$r10, var488=$r11, var99=$r12, var981=$r13, var382=$r14, var2585=$z1, var431=$r55, var3140=$r15, var2949=$r16, var423=$r17, var128=$r18, var91=$r19, var487=$r20, var3481=$r21, var1344=$r22, var1030=$r23, var1032=$r24, var1618=$z2, var1581=$r56, var2164=$r25, var691=$r26, var2187=$r27, var489=$r28, var1817=$r29, var2941=$r30, var2953=$r31, var1098=$r32, var67=org.javacc.parser.NfaState, var957=$z3, var2735=$z6}
; {org.javacc.parser.CodeGenerator=var2968, r0=var220, java.lang.Object=var838, $r1=var451, $r2=var3283, org.javacc.parser.Options=var3879, $z0=var3097, $r54=var1100, $r3=var758, $r4=var281, $r5=var3923, $r6=var2451, $r7=var2002, $r8=var1759, $r9=var399, $r10=var1315, $r11=var488, $r12=var99, $r13=var981, $r14=var382, $z1=var2585, $r55=var431, $r15=var3140, $r16=var2949, $r17=var423, $r18=var128, $r19=var91, $r20=var487, $r21=var3481, $r22=var1344, $r23=var1030, $r24=var1032, $z2=var1618, $r56=var1581, $r25=var2164, $r26=var691, $r27=var2187, $r28=var489, $r29=var1817, $r30=var2941, $r31=var2953, $r32=var1098, org.javacc.parser.NfaState=var67, $z3=var957, $z6=var2735}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "static ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "static ";	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9