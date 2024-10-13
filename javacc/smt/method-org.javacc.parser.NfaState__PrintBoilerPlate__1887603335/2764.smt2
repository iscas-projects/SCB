(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort var3007 0)
(declare-sort var32 0)
(declare-sort var476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3007-init () (Array Int var3007))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var32_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3007 (String) var3007)
(declare-fun genCodeLine/787715242 (var3362 (Array Int var3007)) void)
(declare-const null-var3362 var3362)
(declare-const null-__Array__Int__var3007__ (Array Int var3007))
(declare-const var476-jjCheckNAddStatesDualNeeded Bool)
(declare-const var476-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var833 var3362) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var833 null-var3362)))
(define-const var2245 (Array Int var3007) arr-var3007-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3778 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3778)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3778!1 String)
(assert (= var3778!1 ""))
(define-const var3921 Bool var32_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (not (= (ite var3921 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3531 String "static ") ; Statement: $r54 = "static " 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1158 String (append/672562846 var3778!1 var3531)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3778!2 String)
(assert (= var3778!2 (str.++ var3778!1 var3531)))
(assert true)
(define-const var1094 String (append/672562846 var1158 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var1158!1 String)
(assert (= var1158!1 (str.++ var1158 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var1310 String (toString/-2075883882 var1094)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2245!1 (Array Int var3007))
(assert (not (= var2245!1 null-__Array__Int__var3007__)))
(assert (= (select var2245!1 0) (cast-from-String-to-var3007 var1310))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var833 var2245!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var833!1 var3362)
(declare-const var2245!2 (Array Int var3007))
(define-const var1782 (Array Int var3007) arr-var3007-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var1782!1 (Array Int var3007))
(assert (not (= var1782!1 null-__Array__Int__var3007__)))
(assert (= (select var1782!1 0) (cast-from-String-to-var3007 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var833!1 var1782!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var833!2 var3362)
(declare-const var1782!2 (Array Int var3007))
(define-const var73 (Array Int var3007) arr-var3007-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var73!1 (Array Int var3007))
(assert (not (= var73!1 null-__Array__Int__var3007__)))
(assert (= (select var73!1 0) (cast-from-String-to-var3007 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var833!2 var73!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var833!3 var3362)
(declare-const var73!2 (Array Int var3007))
(define-const var2002 (Array Int var3007) arr-var3007-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2002!1 (Array Int var3007))
(assert (not (= var2002!1 null-__Array__Int__var3007__)))
(assert (= (select var2002!1 0) (cast-from-String-to-var3007 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var833!3 var2002!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var833!4 var3362)
(declare-const var2002!2 (Array Int var3007))
(define-const var3642 (Array Int var3007) arr-var3007-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3642!1 (Array Int var3007))
(assert (not (= var3642!1 null-__Array__Int__var3007__)))
(assert (= (select var3642!1 0) (cast-from-String-to-var3007 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var833!4 var3642!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var833!5 var3362)
(declare-const var3642!2 (Array Int var3007))
(define-const var2393 (Array Int var3007) arr-var3007-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var2393!1 (Array Int var3007))
(assert (not (= var2393!1 null-__Array__Int__var3007__)))
(assert (= (select var2393!1 0) (cast-from-String-to-var3007 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var833!5 var2393!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var833!6 var3362)
(declare-const var2393!2 (Array Int var3007))
(define-const var2725 (Array Int var3007) arr-var3007-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2725!1 (Array Int var3007))
(assert (not (= var2725!1 null-__Array__Int__var3007__)))
(assert (= (select var2725!1 0) (cast-from-String-to-var3007 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var833!6 var2725!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var833!7 var3362)
(declare-const var2725!2 (Array Int var3007))
(define-const var1464 (Array Int var3007) arr-var3007-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1464!1 (Array Int var3007))
(assert (not (= var1464!1 null-__Array__Int__var3007__)))
(assert (= (select var1464!1 0) (cast-from-String-to-var3007 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var833!7 var1464!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var833!8 var3362)
(declare-const var1464!2 (Array Int var3007))
(define-const var3514 (Array Int var3007) arr-var3007-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var1917 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1917)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1917!1 String)
(assert (= var1917!1 ""))
(define-const var36 Bool var32_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (= (ite var36 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3398 String "") ; Statement: $r55 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1798 String (append/672562846 var1917!1 var3398)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var1917!2 String)
(assert (= var1917!2 (str.++ var1917!1 var3398)))
(assert true)
(define-const var1598 String (append/672562846 var1798 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var368 String (toString/-2075883882 var1598)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3514!1 (Array Int var3007))
(assert (not (= var3514!1 null-__Array__Int__var3007__)))
(assert (= (select var3514!1 0) (cast-from-String-to-var3007 var368))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var833!8 var3514!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var833!9 var3362)
(declare-const var3514!2 (Array Int var3007))
(define-const var1557 (Array Int var3007) arr-var3007-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var1557!1 (Array Int var3007))
(assert (not (= var1557!1 null-__Array__Int__var3007__)))
(assert (= (select var1557!1 0) (cast-from-String-to-var3007 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var833!9 var1557!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var833!10 var3362)
(declare-const var1557!2 (Array Int var3007))
(define-const var3596 (Array Int var3007) arr-var3007-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var3596!1 (Array Int var3007))
(assert (not (= var3596!1 null-__Array__Int__var3007__)))
(assert (= (select var3596!1 0) (cast-from-String-to-var3007 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var833!10 var3596!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var833!11 var3362)
(declare-const var3596!2 (Array Int var3007))
(define-const var1734 (Array Int var3007) arr-var3007-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var1734!1 (Array Int var3007))
(assert (not (= var1734!1 null-__Array__Int__var3007__)))
(assert (= (select var1734!1 0) (cast-from-String-to-var3007 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var833!11 var1734!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var833!12 var3362)
(declare-const var1734!2 (Array Int var3007))
(define-const var2233 (Array Int var3007) arr-var3007-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var2233!1 (Array Int var3007))
(assert (not (= var2233!1 null-__Array__Int__var3007__)))
(assert (= (select var2233!1 0) (cast-from-String-to-var3007 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var833!12 var2233!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var833!13 var3362)
(declare-const var2233!2 (Array Int var3007))
(define-const var1451 (Array Int var3007) arr-var3007-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1451!1 (Array Int var3007))
(assert (not (= var1451!1 null-__Array__Int__var3007__)))
(assert (= (select var1451!1 0) (cast-from-String-to-var3007 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var833!13 var1451!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var833!14 var3362)
(declare-const var1451!2 (Array Int var3007))
(define-const var1956 (Array Int var3007) arr-var3007-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var1853 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1853)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1853!1 String)
(assert (= var1853!1 ""))
(define-const var2057 Bool var32_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (= (ite var2057 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1169 String "") ; Statement: $r56 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1645 String (append/672562846 var1853!1 var1169)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1853!2 String)
(assert (= var1853!2 (str.++ var1853!1 var1169)))
(assert true)
(define-const var2209 String (append/672562846 var1645 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var1057 String (toString/-2075883882 var2209)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1956!1 (Array Int var3007))
(assert (not (= var1956!1 null-__Array__Int__var3007__)))
(assert (= (select var1956!1 0) (cast-from-String-to-var3007 var1057))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var833!14 var1956!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var833!15 var3362)
(declare-const var1956!2 (Array Int var3007))
(define-const var2279 (Array Int var3007) arr-var3007-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var2279!1 (Array Int var3007))
(assert (not (= var2279!1 null-__Array__Int__var3007__)))
(assert (= (select var2279!1 0) (cast-from-String-to-var3007 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var833!15 var2279!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var833!16 var3362)
(declare-const var2279!2 (Array Int var3007))
(define-const var1750 (Array Int var3007) arr-var3007-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var1750!1 (Array Int var3007))
(assert (not (= var1750!1 null-__Array__Int__var3007__)))
(assert (= (select var1750!1 0) (cast-from-String-to-var3007 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var833!16 var1750!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var833!17 var3362)
(declare-const var1750!2 (Array Int var3007))
(define-const var3721 (Array Int var3007) arr-var3007-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var3721!1 (Array Int var3007))
(assert (not (= var3721!1 null-__Array__Int__var3007__)))
(assert (= (select var3721!1 0) (cast-from-String-to-var3007 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var833!17 var3721!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var833!18 var3362)
(declare-const var3721!2 (Array Int var3007))
(define-const var253 (Array Int var3007) arr-var3007-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var253!1 (Array Int var3007))
(assert (not (= var253!1 null-__Array__Int__var3007__)))
(assert (= (select var253!1 0) (cast-from-String-to-var3007 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var833!18 var253!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var833!19 var3362)
(declare-const var253!2 (Array Int var3007))
(define-const var664 (Array Int var3007) arr-var3007-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var664!1 (Array Int var3007))
(assert (not (= var664!1 null-__Array__Int__var3007__)))
(assert (= (select var664!1 0) (cast-from-String-to-var3007 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var833!19 var664!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var833!20 var3362)
(declare-const var664!2 (Array Int var3007))
(define-const var229 Bool var476-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var229 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1846 Bool var476-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var1846 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3007-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var32_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3007=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3362=org.javacc.parser.CodeGenerator, var833=r0, var3007=java.lang.Object, var2245=$r1, var3778=$r2, var32=org.javacc.parser.Options, var3921=$z0, var3531=$r54, var1158=$r3, var1094=$r4, var1310=$r5, var1782=$r6, var73=$r7, var2002=$r8, var3642=$r9, var2393=$r10, var2725=$r11, var1464=$r12, var3514=$r13, var1917=$r14, var36=$z1, var3398=$r55, var1798=$r15, var1598=$r16, var368=$r17, var1557=$r18, var3596=$r19, var1734=$r20, var2233=$r21, var1451=$r22, var1956=$r23, var1853=$r24, var2057=$z2, var1169=$r56, var1645=$r25, var2209=$r26, var1057=$r27, var2279=$r28, var1750=$r29, var3721=$r30, var253=$r31, var664=$r32, var476=org.javacc.parser.NfaState, var229=$z3, var1846=$z6}
; {org.javacc.parser.CodeGenerator=var3362, r0=var833, java.lang.Object=var3007, $r1=var2245, $r2=var3778, org.javacc.parser.Options=var32, $z0=var3921, $r54=var3531, $r3=var1158, $r4=var1094, $r5=var1310, $r6=var1782, $r7=var73, $r8=var2002, $r9=var3642, $r10=var2393, $r11=var2725, $r12=var1464, $r13=var3514, $r14=var1917, $z1=var36, $r55=var3398, $r15=var1798, $r16=var1598, $r17=var368, $r18=var1557, $r19=var3596, $r20=var1734, $r21=var2233, $r22=var1451, $r23=var1956, $r24=var1853, $z2=var2057, $r56=var1169, $r25=var1645, $r26=var2209, $r27=var1057, $r28=var2279, $r29=var1750, $r30=var3721, $r31=var253, $r32=var664, org.javacc.parser.NfaState=var476, $z3=var229, $z6=var1846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "static ";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "";	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "";	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9