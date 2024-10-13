(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var3084 0)
(declare-sort var1624 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3084-init () (Array Int var3084))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1624_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var3084 (String) var3084)
(declare-fun genCodeLine/787715242 (var2059 (Array Int var3084)) void)
(declare-const null-var2059 var2059)
(declare-const null-__Array__Int__var3084__ (Array Int var3084))
(declare-const var34-jjCheckNAddStatesDualNeeded Bool)
(declare-const var34-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var2417 var2059) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2417 null-var2059)))
(define-const var1602 (Array Int var3084) arr-var3084-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var2659 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2659)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2659!1 String)
(assert (= var2659!1 ""))
(define-const var3647 Bool var1624_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (not (= (ite var3647 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1408 String "static ") ; Statement: $r54 = "static " 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1620 String (append/672562846 var2659!1 var1408)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var2659!2 String)
(assert (= var2659!2 (str.++ var2659!1 var1408)))
(assert true)
(define-const var269 String (append/672562846 var1620 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var1620!1 String)
(assert (= var1620!1 (str.++ var1620 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var2108 String (toString/-2075883882 var269)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1602!1 (Array Int var3084))
(assert (not (= var1602!1 null-__Array__Int__var3084__)))
(assert (= (select var1602!1 0) (cast-from-String-to-var3084 var2108))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var2417 var1602!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2417!1 var2059)
(declare-const var1602!2 (Array Int var3084))
(define-const var3982 (Array Int var3084) arr-var3084-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var3982!1 (Array Int var3084))
(assert (not (= var3982!1 null-__Array__Int__var3084__)))
(assert (= (select var3982!1 0) (cast-from-String-to-var3084 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2417!1 var3982!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var2417!2 var2059)
(declare-const var3982!2 (Array Int var3084))
(define-const var3443 (Array Int var3084) arr-var3084-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var3443!1 (Array Int var3084))
(assert (not (= var3443!1 null-__Array__Int__var3084__)))
(assert (= (select var3443!1 0) (cast-from-String-to-var3084 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var2417!2 var3443!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var2417!3 var2059)
(declare-const var3443!2 (Array Int var3084))
(define-const var1386 (Array Int var3084) arr-var3084-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1386!1 (Array Int var3084))
(assert (not (= var1386!1 null-__Array__Int__var3084__)))
(assert (= (select var1386!1 0) (cast-from-String-to-var3084 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var2417!3 var1386!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var2417!4 var2059)
(declare-const var1386!2 (Array Int var3084))
(define-const var1945 (Array Int var3084) arr-var3084-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var1945!1 (Array Int var3084))
(assert (not (= var1945!1 null-__Array__Int__var3084__)))
(assert (= (select var1945!1 0) (cast-from-String-to-var3084 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var2417!4 var1945!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2417!5 var2059)
(declare-const var1945!2 (Array Int var3084))
(define-const var2171 (Array Int var3084) arr-var3084-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var2171!1 (Array Int var3084))
(assert (not (= var2171!1 null-__Array__Int__var3084__)))
(assert (= (select var2171!1 0) (cast-from-String-to-var3084 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var2417!5 var2171!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2417!6 var2059)
(declare-const var2171!2 (Array Int var3084))
(define-const var37 (Array Int var3084) arr-var3084-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var37!1 (Array Int var3084))
(assert (not (= var37!1 null-__Array__Int__var3084__)))
(assert (= (select var37!1 0) (cast-from-String-to-var3084 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var2417!6 var37!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2417!7 var2059)
(declare-const var37!2 (Array Int var3084))
(define-const var2769 (Array Int var3084) arr-var3084-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var2769!1 (Array Int var3084))
(assert (not (= var2769!1 null-__Array__Int__var3084__)))
(assert (= (select var2769!1 0) (cast-from-String-to-var3084 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2417!7 var2769!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var2417!8 var2059)
(declare-const var2769!2 (Array Int var3084))
(define-const var1691 (Array Int var3084) arr-var3084-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var19 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var19)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var19!1 String)
(assert (= var19!1 ""))
(define-const var2022 Bool var1624_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (= (ite var2022 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3788 String "") ; Statement: $r55 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2595 String (append/672562846 var19!1 var3788)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var19!2 String)
(assert (= var19!2 (str.++ var19!1 var3788)))
(assert true)
(define-const var3341 String (append/672562846 var2595 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var2595!1 String)
(assert (= var2595!1 (str.++ var2595 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var756 String (toString/-2075883882 var3341)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1691!1 (Array Int var3084))
(assert (not (= var1691!1 null-__Array__Int__var3084__)))
(assert (= (select var1691!1 0) (cast-from-String-to-var3084 var756))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var2417!8 var1691!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2417!9 var2059)
(declare-const var1691!2 (Array Int var3084))
(define-const var385 (Array Int var3084) arr-var3084-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var385!1 (Array Int var3084))
(assert (not (= var385!1 null-__Array__Int__var3084__)))
(assert (= (select var385!1 0) (cast-from-String-to-var3084 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2417!9 var385!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var2417!10 var2059)
(declare-const var385!2 (Array Int var3084))
(define-const var3001 (Array Int var3084) arr-var3084-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var3001!1 (Array Int var3084))
(assert (not (= var3001!1 null-__Array__Int__var3084__)))
(assert (= (select var3001!1 0) (cast-from-String-to-var3084 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var2417!10 var3001!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var2417!11 var2059)
(declare-const var3001!2 (Array Int var3084))
(define-const var1860 (Array Int var3084) arr-var3084-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var1860!1 (Array Int var3084))
(assert (not (= var1860!1 null-__Array__Int__var3084__)))
(assert (= (select var1860!1 0) (cast-from-String-to-var3084 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var2417!11 var1860!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var2417!12 var2059)
(declare-const var1860!2 (Array Int var3084))
(define-const var3751 (Array Int var3084) arr-var3084-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var3751!1 (Array Int var3084))
(assert (not (= var3751!1 null-__Array__Int__var3084__)))
(assert (= (select var3751!1 0) (cast-from-String-to-var3084 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var2417!12 var3751!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var2417!13 var2059)
(declare-const var3751!2 (Array Int var3084))
(define-const var2159 (Array Int var3084) arr-var3084-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var2159!1 (Array Int var3084))
(assert (not (= var2159!1 null-__Array__Int__var3084__)))
(assert (= (select var2159!1 0) (cast-from-String-to-var3084 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2417!13 var2159!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var2417!14 var2059)
(declare-const var2159!2 (Array Int var3084))
(define-const var2011 (Array Int var3084) arr-var3084-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var3280 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3280)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3280!1 String)
(assert (= var3280!1 ""))
(define-const var3215 Bool var1624_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (not (= (ite var3215 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var923 String "static ") ; Statement: $r56 = "static " 
 ; Statement: goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3045 String (append/672562846 var3280!1 var923)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3280!2 String)
(assert (= var3280!2 (str.++ var3280!1 var923)))
(assert true)
(define-const var655 String (append/672562846 var3045 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var3045!1 String)
(assert (= var3045!1 (str.++ var3045 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var1519 String (toString/-2075883882 var655)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2011!1 (Array Int var3084))
(assert (not (= var2011!1 null-__Array__Int__var3084__)))
(assert (= (select var2011!1 0) (cast-from-String-to-var3084 var1519))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var2417!14 var2011!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var2417!15 var2059)
(declare-const var2011!2 (Array Int var3084))
(define-const var3580 (Array Int var3084) arr-var3084-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var3580!1 (Array Int var3084))
(assert (not (= var3580!1 null-__Array__Int__var3084__)))
(assert (= (select var3580!1 0) (cast-from-String-to-var3084 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2417!15 var3580!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var2417!16 var2059)
(declare-const var3580!2 (Array Int var3084))
(define-const var1129 (Array Int var3084) arr-var3084-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var1129!1 (Array Int var3084))
(assert (not (= var1129!1 null-__Array__Int__var3084__)))
(assert (= (select var1129!1 0) (cast-from-String-to-var3084 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var2417!16 var1129!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var2417!17 var2059)
(declare-const var1129!2 (Array Int var3084))
(define-const var1476 (Array Int var3084) arr-var3084-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var1476!1 (Array Int var3084))
(assert (not (= var1476!1 null-__Array__Int__var3084__)))
(assert (= (select var1476!1 0) (cast-from-String-to-var3084 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var2417!17 var1476!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var2417!18 var2059)
(declare-const var1476!2 (Array Int var3084))
(define-const var685 (Array Int var3084) arr-var3084-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var685!1 (Array Int var3084))
(assert (not (= var685!1 null-__Array__Int__var3084__)))
(assert (= (select var685!1 0) (cast-from-String-to-var3084 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2417!18 var685!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var2417!19 var2059)
(declare-const var685!2 (Array Int var3084))
(define-const var1877 (Array Int var3084) arr-var3084-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var1877!1 (Array Int var3084))
(assert (not (= var1877!1 null-__Array__Int__var3084__)))
(assert (= (select var1877!1 0) (cast-from-String-to-var3084 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2417!19 var1877!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var2417!20 var2059)
(declare-const var1877!2 (Array Int var3084))
(define-const var169 Bool var34-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var169 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1363 Bool var34-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var1363 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3084-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1624_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var3084=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var2059=org.javacc.parser.CodeGenerator, var2417=r0, var3084=java.lang.Object, var1602=$r1, var2659=$r2, var1624=org.javacc.parser.Options, var3647=$z0, var1408=$r54, var1620=$r3, var269=$r4, var2108=$r5, var3982=$r6, var3443=$r7, var1386=$r8, var1945=$r9, var2171=$r10, var37=$r11, var2769=$r12, var1691=$r13, var19=$r14, var2022=$z1, var3788=$r55, var2595=$r15, var3341=$r16, var756=$r17, var385=$r18, var3001=$r19, var1860=$r20, var3751=$r21, var2159=$r22, var2011=$r23, var3280=$r24, var3215=$z2, var923=$r56, var3045=$r25, var655=$r26, var1519=$r27, var3580=$r28, var1129=$r29, var1476=$r30, var685=$r31, var1877=$r32, var34=org.javacc.parser.NfaState, var169=$z3, var1363=$z6}
; {org.javacc.parser.CodeGenerator=var2059, r0=var2417, java.lang.Object=var3084, $r1=var1602, $r2=var2659, org.javacc.parser.Options=var1624, $z0=var3647, $r54=var1408, $r3=var1620, $r4=var269, $r5=var2108, $r6=var3982, $r7=var3443, $r8=var1386, $r9=var1945, $r10=var2171, $r11=var37, $r12=var2769, $r13=var1691, $r14=var19, $z1=var2022, $r55=var3788, $r15=var2595, $r16=var3341, $r17=var756, $r18=var385, $r19=var3001, $r20=var1860, $r21=var3751, $r22=var2159, $r23=var2011, $r24=var3280, $z2=var3215, $r56=var923, $r25=var3045, $r26=var655, $r27=var1519, $r28=var3580, $r29=var1129, $r30=var1476, $r31=var685, $r32=var1877, org.javacc.parser.NfaState=var34, $z3=var169, $z6=var1363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "static ";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "";	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "static ";	goto [?= $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56)];	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9