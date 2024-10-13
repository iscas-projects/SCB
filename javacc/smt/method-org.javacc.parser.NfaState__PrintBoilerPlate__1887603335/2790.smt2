(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var3092 0)
(declare-sort var978 0)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3092-init () (Array Int var3092))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var978_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3092 (String) var3092)
(declare-fun genCodeLine/787715242 (var2171 (Array Int var3092)) void)
(declare-const null-var2171 var2171)
(declare-const null-__Array__Int__var3092__ (Array Int var3092))
(declare-const var2840-jjCheckNAddStatesDualNeeded Bool)
(declare-const var2840-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var715 var2171) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var715 null-var2171)))
(define-const var2863 (Array Int var3092) arr-var3092-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var88 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var88)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var88!1 String)
(assert (= var88!1 ""))
(define-const var344 Bool var978_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (= (ite var344 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1243 String "") ; Statement: $r54 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var119 String (append/672562846 var88!1 var1243)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var88!2 String)
(assert (= var88!2 (str.++ var88!1 var1243)))
(assert true)
(define-const var1440 String (append/672562846 var119 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var119!1 String)
(assert (= var119!1 (str.++ var119 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var2647 String (toString/-2075883882 var1440)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2863!1 (Array Int var3092))
(assert (not (= var2863!1 null-__Array__Int__var3092__)))
(assert (= (select var2863!1 0) (cast-from-String-to-var3092 var2647))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var715 var2863!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var715!1 var2171)
(declare-const var2863!2 (Array Int var3092))
(define-const var733 (Array Int var3092) arr-var3092-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var733!1 (Array Int var3092))
(assert (not (= var733!1 null-__Array__Int__var3092__)))
(assert (= (select var733!1 0) (cast-from-String-to-var3092 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var715!1 var733!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var715!2 var2171)
(declare-const var733!2 (Array Int var3092))
(define-const var492 (Array Int var3092) arr-var3092-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var492!1 (Array Int var3092))
(assert (not (= var492!1 null-__Array__Int__var3092__)))
(assert (= (select var492!1 0) (cast-from-String-to-var3092 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var715!2 var492!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var715!3 var2171)
(declare-const var492!2 (Array Int var3092))
(define-const var3296 (Array Int var3092) arr-var3092-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var3296!1 (Array Int var3092))
(assert (not (= var3296!1 null-__Array__Int__var3092__)))
(assert (= (select var3296!1 0) (cast-from-String-to-var3092 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var715!3 var3296!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var715!4 var2171)
(declare-const var3296!2 (Array Int var3092))
(define-const var311 (Array Int var3092) arr-var3092-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var311!1 (Array Int var3092))
(assert (not (= var311!1 null-__Array__Int__var3092__)))
(assert (= (select var311!1 0) (cast-from-String-to-var3092 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var715!4 var311!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var715!5 var2171)
(declare-const var311!2 (Array Int var3092))
(define-const var2453 (Array Int var3092) arr-var3092-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var2453!1 (Array Int var3092))
(assert (not (= var2453!1 null-__Array__Int__var3092__)))
(assert (= (select var2453!1 0) (cast-from-String-to-var3092 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var715!5 var2453!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var715!6 var2171)
(declare-const var2453!2 (Array Int var3092))
(define-const var3316 (Array Int var3092) arr-var3092-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var3316!1 (Array Int var3092))
(assert (not (= var3316!1 null-__Array__Int__var3092__)))
(assert (= (select var3316!1 0) (cast-from-String-to-var3092 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var715!6 var3316!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var715!7 var2171)
(declare-const var3316!2 (Array Int var3092))
(define-const var1494 (Array Int var3092) arr-var3092-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1494!1 (Array Int var3092))
(assert (not (= var1494!1 null-__Array__Int__var3092__)))
(assert (= (select var1494!1 0) (cast-from-String-to-var3092 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var715!7 var1494!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var715!8 var2171)
(declare-const var1494!2 (Array Int var3092))
(define-const var2004 (Array Int var3092) arr-var3092-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var402 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var402)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var402!1 String)
(assert (= var402!1 ""))
(define-const var127 Bool var978_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (= (ite var127 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2041 String "") ; Statement: $r55 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2770 String (append/672562846 var402!1 var2041)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var402!2 String)
(assert (= var402!2 (str.++ var402!1 var2041)))
(assert true)
(define-const var139 String (append/672562846 var2770 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var2770!1 String)
(assert (= var2770!1 (str.++ var2770 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var3097 String (toString/-2075883882 var139)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2004!1 (Array Int var3092))
(assert (not (= var2004!1 null-__Array__Int__var3092__)))
(assert (= (select var2004!1 0) (cast-from-String-to-var3092 var3097))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var715!8 var2004!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var715!9 var2171)
(declare-const var2004!2 (Array Int var3092))
(define-const var381 (Array Int var3092) arr-var3092-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var381!1 (Array Int var3092))
(assert (not (= var381!1 null-__Array__Int__var3092__)))
(assert (= (select var381!1 0) (cast-from-String-to-var3092 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var715!9 var381!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var715!10 var2171)
(declare-const var381!2 (Array Int var3092))
(define-const var3357 (Array Int var3092) arr-var3092-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var3357!1 (Array Int var3092))
(assert (not (= var3357!1 null-__Array__Int__var3092__)))
(assert (= (select var3357!1 0) (cast-from-String-to-var3092 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var715!10 var3357!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var715!11 var2171)
(declare-const var3357!2 (Array Int var3092))
(define-const var2586 (Array Int var3092) arr-var3092-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var2586!1 (Array Int var3092))
(assert (not (= var2586!1 null-__Array__Int__var3092__)))
(assert (= (select var2586!1 0) (cast-from-String-to-var3092 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var715!11 var2586!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var715!12 var2171)
(declare-const var2586!2 (Array Int var3092))
(define-const var3532 (Array Int var3092) arr-var3092-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var3532!1 (Array Int var3092))
(assert (not (= var3532!1 null-__Array__Int__var3092__)))
(assert (= (select var3532!1 0) (cast-from-String-to-var3092 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var715!12 var3532!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var715!13 var2171)
(declare-const var3532!2 (Array Int var3092))
(define-const var3999 (Array Int var3092) arr-var3092-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var3999!1 (Array Int var3092))
(assert (not (= var3999!1 null-__Array__Int__var3092__)))
(assert (= (select var3999!1 0) (cast-from-String-to-var3092 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var715!13 var3999!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var715!14 var2171)
(declare-const var3999!2 (Array Int var3092))
(define-const var147 (Array Int var3092) arr-var3092-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var852 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var852)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var852!1 String)
(assert (= var852!1 ""))
(define-const var914 Bool var978_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (not (= (ite var914 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3428 String "static ") ; Statement: $r56 = "static " 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3692 String (append/672562846 var852!1 var3428)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var852!2 String)
(assert (= var852!2 (str.++ var852!1 var3428)))
(assert true)
(define-const var2562 String (append/672562846 var3692 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var3692!1 String)
(assert (= var3692!1 (str.++ var3692 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var2479 String (toString/-2075883882 var2562)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var147!1 (Array Int var3092))
(assert (not (= var147!1 null-__Array__Int__var3092__)))
(assert (= (select var147!1 0) (cast-from-String-to-var3092 var2479))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var715!14 var147!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var715!15 var2171)
(declare-const var147!2 (Array Int var3092))
(define-const var993 (Array Int var3092) arr-var3092-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var993!1 (Array Int var3092))
(assert (not (= var993!1 null-__Array__Int__var3092__)))
(assert (= (select var993!1 0) (cast-from-String-to-var3092 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var715!15 var993!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var715!16 var2171)
(declare-const var993!2 (Array Int var3092))
(define-const var3645 (Array Int var3092) arr-var3092-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var3645!1 (Array Int var3092))
(assert (not (= var3645!1 null-__Array__Int__var3092__)))
(assert (= (select var3645!1 0) (cast-from-String-to-var3092 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var715!16 var3645!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var715!17 var2171)
(declare-const var3645!2 (Array Int var3092))
(define-const var924 (Array Int var3092) arr-var3092-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var924!1 (Array Int var3092))
(assert (not (= var924!1 null-__Array__Int__var3092__)))
(assert (= (select var924!1 0) (cast-from-String-to-var3092 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var715!17 var924!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var715!18 var2171)
(declare-const var924!2 (Array Int var3092))
(define-const var1236 (Array Int var3092) arr-var3092-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var1236!1 (Array Int var3092))
(assert (not (= var1236!1 null-__Array__Int__var3092__)))
(assert (= (select var1236!1 0) (cast-from-String-to-var3092 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var715!18 var1236!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var715!19 var2171)
(declare-const var1236!2 (Array Int var3092))
(define-const var3919 (Array Int var3092) arr-var3092-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var3919!1 (Array Int var3092))
(assert (not (= var3919!1 null-__Array__Int__var3092__)))
(assert (= (select var3919!1 0) (cast-from-String-to-var3092 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var715!19 var3919!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var715!20 var2171)
(declare-const var3919!2 (Array Int var3092))
(define-const var2570 Bool var2840-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var2570 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3290 Bool var2840-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var3290 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3092-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var978_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3092=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var2171=org.javacc.parser.CodeGenerator, var715=r0, var3092=java.lang.Object, var2863=$r1, var88=$r2, var978=org.javacc.parser.Options, var344=$z0, var1243=$r54, var119=$r3, var1440=$r4, var2647=$r5, var733=$r6, var492=$r7, var3296=$r8, var311=$r9, var2453=$r10, var3316=$r11, var1494=$r12, var2004=$r13, var402=$r14, var127=$z1, var2041=$r55, var2770=$r15, var139=$r16, var3097=$r17, var381=$r18, var3357=$r19, var2586=$r20, var3532=$r21, var3999=$r22, var147=$r23, var852=$r24, var914=$z2, var3428=$r56, var3692=$r25, var2562=$r26, var2479=$r27, var993=$r28, var3645=$r29, var924=$r30, var1236=$r31, var3919=$r32, var2840=org.javacc.parser.NfaState, var2570=$z3, var3290=$z6}
; {org.javacc.parser.CodeGenerator=var2171, r0=var715, java.lang.Object=var3092, $r1=var2863, $r2=var88, org.javacc.parser.Options=var978, $z0=var344, $r54=var1243, $r3=var119, $r4=var1440, $r5=var2647, $r6=var733, $r7=var492, $r8=var3296, $r9=var311, $r10=var2453, $r11=var3316, $r12=var1494, $r13=var2004, $r14=var402, $z1=var127, $r55=var2041, $r15=var2770, $r16=var139, $r17=var3097, $r18=var381, $r19=var3357, $r20=var2586, $r21=var3532, $r22=var3999, $r23=var147, $r24=var852, $z2=var914, $r56=var3428, $r25=var3692, $r26=var2562, $r27=var2479, $r28=var993, $r29=var3645, $r30=var924, $r31=var1236, $r32=var3919, org.javacc.parser.NfaState=var2840, $z3=var2570, $z6=var3290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "";	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "static ";	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9