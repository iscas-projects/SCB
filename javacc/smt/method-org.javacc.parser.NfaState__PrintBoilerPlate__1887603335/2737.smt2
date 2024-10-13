(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var256 0)
(declare-sort var2743 0)
(declare-sort var2011 0)
(declare-sort var320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2743-init () (Array Int var2743))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2011_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2743 (String) var2743)
(declare-fun genCodeLine/787715242 (var256 (Array Int var2743)) void)
(declare-const null-var256 var256)
(declare-const null-__Array__Int__var2743__ (Array Int var2743))
(declare-const var320-jjCheckNAddStatesDualNeeded Bool)
(declare-const var320-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var2618 var256) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2618 null-var256)))
(define-const var3824 (Array Int var2743) arr-var2743-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3036 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3036)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3036!1 String)
(assert (= var3036!1 ""))
(define-const var2280 Bool var2011_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (not (= (ite var2280 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2739 String "static ") ; Statement: $r54 = "static " 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2864 String (append/672562846 var3036!1 var2739)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3036!2 String)
(assert (= var3036!2 (str.++ var3036!1 var2739)))
(assert true)
(define-const var726 String (append/672562846 var2864 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var2864!1 String)
(assert (= var2864!1 (str.++ var2864 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var1811 String (toString/-2075883882 var726)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3824!1 (Array Int var2743))
(assert (not (= var3824!1 null-__Array__Int__var2743__)))
(assert (= (select var3824!1 0) (cast-from-String-to-var2743 var1811))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var2618 var3824!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2618!1 var256)
(declare-const var3824!2 (Array Int var2743))
(define-const var1803 (Array Int var2743) arr-var2743-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var1803!1 (Array Int var2743))
(assert (not (= var1803!1 null-__Array__Int__var2743__)))
(assert (= (select var1803!1 0) (cast-from-String-to-var2743 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2618!1 var1803!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var2618!2 var256)
(declare-const var1803!2 (Array Int var2743))
(define-const var2314 (Array Int var2743) arr-var2743-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2314!1 (Array Int var2743))
(assert (not (= var2314!1 null-__Array__Int__var2743__)))
(assert (= (select var2314!1 0) (cast-from-String-to-var2743 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var2618!2 var2314!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var2618!3 var256)
(declare-const var2314!2 (Array Int var2743))
(define-const var1632 (Array Int var2743) arr-var2743-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1632!1 (Array Int var2743))
(assert (not (= var1632!1 null-__Array__Int__var2743__)))
(assert (= (select var1632!1 0) (cast-from-String-to-var2743 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var2618!3 var1632!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var2618!4 var256)
(declare-const var1632!2 (Array Int var2743))
(define-const var1170 (Array Int var2743) arr-var2743-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var1170!1 (Array Int var2743))
(assert (not (= var1170!1 null-__Array__Int__var2743__)))
(assert (= (select var1170!1 0) (cast-from-String-to-var2743 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var2618!4 var1170!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2618!5 var256)
(declare-const var1170!2 (Array Int var2743))
(define-const var2406 (Array Int var2743) arr-var2743-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var2406!1 (Array Int var2743))
(assert (not (= var2406!1 null-__Array__Int__var2743__)))
(assert (= (select var2406!1 0) (cast-from-String-to-var2743 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var2618!5 var2406!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2618!6 var256)
(declare-const var2406!2 (Array Int var2743))
(define-const var3038 (Array Int var2743) arr-var2743-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var3038!1 (Array Int var2743))
(assert (not (= var3038!1 null-__Array__Int__var2743__)))
(assert (= (select var3038!1 0) (cast-from-String-to-var2743 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var2618!6 var3038!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2618!7 var256)
(declare-const var3038!2 (Array Int var2743))
(define-const var2392 (Array Int var2743) arr-var2743-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var2392!1 (Array Int var2743))
(assert (not (= var2392!1 null-__Array__Int__var2743__)))
(assert (= (select var2392!1 0) (cast-from-String-to-var2743 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2618!7 var2392!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var2618!8 var256)
(declare-const var2392!2 (Array Int var2743))
(define-const var19 (Array Int var2743) arr-var2743-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var44 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var44)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var44!1 String)
(assert (= var44!1 ""))
(define-const var2750 Bool var2011_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (not (= (ite var2750 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3243 String "static ") ; Statement: $r55 = "static " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3055 String (append/672562846 var44!1 var3243)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var44!2 String)
(assert (= var44!2 (str.++ var44!1 var3243)))
(assert true)
(define-const var202 String (append/672562846 var3055 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var3055!1 String)
(assert (= var3055!1 (str.++ var3055 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var2943 String (toString/-2075883882 var202)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var19!1 (Array Int var2743))
(assert (not (= var19!1 null-__Array__Int__var2743__)))
(assert (= (select var19!1 0) (cast-from-String-to-var2743 var2943))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var2618!8 var19!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2618!9 var256)
(declare-const var19!2 (Array Int var2743))
(define-const var2668 (Array Int var2743) arr-var2743-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var2668!1 (Array Int var2743))
(assert (not (= var2668!1 null-__Array__Int__var2743__)))
(assert (= (select var2668!1 0) (cast-from-String-to-var2743 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2618!9 var2668!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var2618!10 var256)
(declare-const var2668!2 (Array Int var2743))
(define-const var1596 (Array Int var2743) arr-var2743-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var1596!1 (Array Int var2743))
(assert (not (= var1596!1 null-__Array__Int__var2743__)))
(assert (= (select var1596!1 0) (cast-from-String-to-var2743 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var2618!10 var1596!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var2618!11 var256)
(declare-const var1596!2 (Array Int var2743))
(define-const var1597 (Array Int var2743) arr-var2743-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var1597!1 (Array Int var2743))
(assert (not (= var1597!1 null-__Array__Int__var2743__)))
(assert (= (select var1597!1 0) (cast-from-String-to-var2743 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var2618!11 var1597!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var2618!12 var256)
(declare-const var1597!2 (Array Int var2743))
(define-const var2853 (Array Int var2743) arr-var2743-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var2853!1 (Array Int var2743))
(assert (not (= var2853!1 null-__Array__Int__var2743__)))
(assert (= (select var2853!1 0) (cast-from-String-to-var2743 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var2618!12 var2853!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var2618!13 var256)
(declare-const var2853!2 (Array Int var2743))
(define-const var1457 (Array Int var2743) arr-var2743-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1457!1 (Array Int var2743))
(assert (not (= var1457!1 null-__Array__Int__var2743__)))
(assert (= (select var1457!1 0) (cast-from-String-to-var2743 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2618!13 var1457!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var2618!14 var256)
(declare-const var1457!2 (Array Int var2743))
(define-const var2778 (Array Int var2743) arr-var2743-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var1300 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1300)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1300!1 String)
(assert (= var1300!1 ""))
(define-const var1405 Bool var2011_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (not (= (ite var1405 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3764 String "static ") ; Statement: $r56 = "static " 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1858 String (append/672562846 var1300!1 var3764)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1300!2 String)
(assert (= var1300!2 (str.++ var1300!1 var3764)))
(assert true)
(define-const var966 String (append/672562846 var1858 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var1858!1 String)
(assert (= var1858!1 (str.++ var1858 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var163 String (toString/-2075883882 var966)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2778!1 (Array Int var2743))
(assert (not (= var2778!1 null-__Array__Int__var2743__)))
(assert (= (select var2778!1 0) (cast-from-String-to-var2743 var163))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var2618!14 var2778!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var2618!15 var256)
(declare-const var2778!2 (Array Int var2743))
(define-const var1988 (Array Int var2743) arr-var2743-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var1988!1 (Array Int var2743))
(assert (not (= var1988!1 null-__Array__Int__var2743__)))
(assert (= (select var1988!1 0) (cast-from-String-to-var2743 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2618!15 var1988!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var2618!16 var256)
(declare-const var1988!2 (Array Int var2743))
(define-const var485 (Array Int var2743) arr-var2743-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var485!1 (Array Int var2743))
(assert (not (= var485!1 null-__Array__Int__var2743__)))
(assert (= (select var485!1 0) (cast-from-String-to-var2743 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var2618!16 var485!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var2618!17 var256)
(declare-const var485!2 (Array Int var2743))
(define-const var2121 (Array Int var2743) arr-var2743-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var2121!1 (Array Int var2743))
(assert (not (= var2121!1 null-__Array__Int__var2743__)))
(assert (= (select var2121!1 0) (cast-from-String-to-var2743 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var2618!17 var2121!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var2618!18 var256)
(declare-const var2121!2 (Array Int var2743))
(define-const var779 (Array Int var2743) arr-var2743-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var779!1 (Array Int var2743))
(assert (not (= var779!1 null-__Array__Int__var2743__)))
(assert (= (select var779!1 0) (cast-from-String-to-var2743 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2618!18 var779!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var2618!19 var256)
(declare-const var779!2 (Array Int var2743))
(define-const var638 (Array Int var2743) arr-var2743-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var638!1 (Array Int var2743))
(assert (not (= var638!1 null-__Array__Int__var2743__)))
(assert (= (select var638!1 0) (cast-from-String-to-var2743 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2618!19 var638!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var2618!20 var256)
(declare-const var638!2 (Array Int var2743))
(define-const var3421 Bool var320-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var3421 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3983 Bool var320-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var3983 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2743-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2011_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2743=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var256=org.javacc.parser.CodeGenerator, var2618=r0, var2743=java.lang.Object, var3824=$r1, var3036=$r2, var2011=org.javacc.parser.Options, var2280=$z0, var2739=$r54, var2864=$r3, var726=$r4, var1811=$r5, var1803=$r6, var2314=$r7, var1632=$r8, var1170=$r9, var2406=$r10, var3038=$r11, var2392=$r12, var19=$r13, var44=$r14, var2750=$z1, var3243=$r55, var3055=$r15, var202=$r16, var2943=$r17, var2668=$r18, var1596=$r19, var1597=$r20, var2853=$r21, var1457=$r22, var2778=$r23, var1300=$r24, var1405=$z2, var3764=$r56, var1858=$r25, var966=$r26, var163=$r27, var1988=$r28, var485=$r29, var2121=$r30, var779=$r31, var638=$r32, var320=org.javacc.parser.NfaState, var3421=$z3, var3983=$z6}
; {org.javacc.parser.CodeGenerator=var256, r0=var2618, java.lang.Object=var2743, $r1=var3824, $r2=var3036, org.javacc.parser.Options=var2011, $z0=var2280, $r54=var2739, $r3=var2864, $r4=var726, $r5=var1811, $r6=var1803, $r7=var2314, $r8=var1632, $r9=var1170, $r10=var2406, $r11=var3038, $r12=var2392, $r13=var19, $r14=var44, $z1=var2750, $r55=var3243, $r15=var3055, $r16=var202, $r17=var2943, $r18=var2668, $r19=var1596, $r20=var1597, $r21=var2853, $r22=var1457, $r23=var2778, $r24=var1300, $z2=var1405, $r56=var3764, $r25=var1858, $r26=var966, $r27=var163, $r28=var1988, $r29=var485, $r30=var2121, $r31=var779, $r32=var638, org.javacc.parser.NfaState=var320, $z3=var3421, $z6=var3983}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "static ";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "static ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "static ";	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9