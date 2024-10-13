(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var838 0)
(declare-sort var1809 0)
(declare-sort var151 0)
(declare-sort var1079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1809-init () (Array Int var1809))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var151_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1809 (String) var1809)
(declare-fun genCodeLine/787715242 (var838 (Array Int var1809)) void)
(declare-const null-var838 var838)
(declare-const null-__Array__Int__var1809__ (Array Int var1809))
(declare-const var1079-jjCheckNAddStatesDualNeeded Bool)
(declare-const var1079-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var2989 var838) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var2989 null-var838)))
(define-const var3837 (Array Int var1809) arr-var1809-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3709 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3709)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3709!1 String)
(assert (= var3709!1 ""))
(define-const var641 Bool var151_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (not (= (ite var641 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2835 String "static ") ; Statement: $r54 = "static " 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1596 String (append/672562846 var3709!1 var2835)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3709!2 String)
(assert (= var3709!2 (str.++ var3709!1 var2835)))
(assert true)
(define-const var1287 String (append/672562846 var1596 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var1596!1 String)
(assert (= var1596!1 (str.++ var1596 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var1179 String (toString/-2075883882 var1287)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3837!1 (Array Int var1809))
(assert (not (= var3837!1 null-__Array__Int__var1809__)))
(assert (= (select var3837!1 0) (cast-from-String-to-var1809 var1179))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var2989 var3837!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var2989!1 var838)
(declare-const var3837!2 (Array Int var1809))
(define-const var2314 (Array Int var1809) arr-var1809-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2314!1 (Array Int var1809))
(assert (not (= var2314!1 null-__Array__Int__var1809__)))
(assert (= (select var2314!1 0) (cast-from-String-to-var1809 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2989!1 var2314!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var2989!2 var838)
(declare-const var2314!2 (Array Int var1809))
(define-const var2945 (Array Int var1809) arr-var1809-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2945!1 (Array Int var1809))
(assert (not (= var2945!1 null-__Array__Int__var1809__)))
(assert (= (select var2945!1 0) (cast-from-String-to-var1809 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var2989!2 var2945!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var2989!3 var838)
(declare-const var2945!2 (Array Int var1809))
(define-const var1861 (Array Int var1809) arr-var1809-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1861!1 (Array Int var1809))
(assert (not (= var1861!1 null-__Array__Int__var1809__)))
(assert (= (select var1861!1 0) (cast-from-String-to-var1809 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var2989!3 var1861!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var2989!4 var838)
(declare-const var1861!2 (Array Int var1809))
(define-const var3212 (Array Int var1809) arr-var1809-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var3212!1 (Array Int var1809))
(assert (not (= var3212!1 null-__Array__Int__var1809__)))
(assert (= (select var3212!1 0) (cast-from-String-to-var1809 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var2989!4 var3212!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var2989!5 var838)
(declare-const var3212!2 (Array Int var1809))
(define-const var764 (Array Int var1809) arr-var1809-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var764!1 (Array Int var1809))
(assert (not (= var764!1 null-__Array__Int__var1809__)))
(assert (= (select var764!1 0) (cast-from-String-to-var1809 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var2989!5 var764!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var2989!6 var838)
(declare-const var764!2 (Array Int var1809))
(define-const var3628 (Array Int var1809) arr-var1809-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var3628!1 (Array Int var1809))
(assert (not (= var3628!1 null-__Array__Int__var1809__)))
(assert (= (select var3628!1 0) (cast-from-String-to-var1809 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var2989!6 var3628!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var2989!7 var838)
(declare-const var3628!2 (Array Int var1809))
(define-const var631 (Array Int var1809) arr-var1809-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var631!1 (Array Int var1809))
(assert (not (= var631!1 null-__Array__Int__var1809__)))
(assert (= (select var631!1 0) (cast-from-String-to-var1809 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2989!7 var631!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var2989!8 var838)
(declare-const var631!2 (Array Int var1809))
(define-const var2139 (Array Int var1809) arr-var1809-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var3767 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3767)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3767!1 String)
(assert (= var3767!1 ""))
(define-const var2587 Bool var151_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (not (= (ite var2587 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var102 String "static ") ; Statement: $r55 = "static " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3485 String (append/672562846 var3767!1 var102)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var3767!2 String)
(assert (= var3767!2 (str.++ var3767!1 var102)))
(assert true)
(define-const var1654 String (append/672562846 var3485 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var3485!1 String)
(assert (= var3485!1 (str.++ var3485 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var2911 String (toString/-2075883882 var1654)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2139!1 (Array Int var1809))
(assert (not (= var2139!1 null-__Array__Int__var1809__)))
(assert (= (select var2139!1 0) (cast-from-String-to-var1809 var2911))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var2989!8 var2139!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var2989!9 var838)
(declare-const var2139!2 (Array Int var1809))
(define-const var546 (Array Int var1809) arr-var1809-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var546!1 (Array Int var1809))
(assert (not (= var546!1 null-__Array__Int__var1809__)))
(assert (= (select var546!1 0) (cast-from-String-to-var1809 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2989!9 var546!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var2989!10 var838)
(declare-const var546!2 (Array Int var1809))
(define-const var1615 (Array Int var1809) arr-var1809-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var1615!1 (Array Int var1809))
(assert (not (= var1615!1 null-__Array__Int__var1809__)))
(assert (= (select var1615!1 0) (cast-from-String-to-var1809 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var2989!10 var1615!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var2989!11 var838)
(declare-const var1615!2 (Array Int var1809))
(define-const var376 (Array Int var1809) arr-var1809-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var376!1 (Array Int var1809))
(assert (not (= var376!1 null-__Array__Int__var1809__)))
(assert (= (select var376!1 0) (cast-from-String-to-var1809 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var2989!11 var376!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var2989!12 var838)
(declare-const var376!2 (Array Int var1809))
(define-const var791 (Array Int var1809) arr-var1809-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var791!1 (Array Int var1809))
(assert (not (= var791!1 null-__Array__Int__var1809__)))
(assert (= (select var791!1 0) (cast-from-String-to-var1809 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var2989!12 var791!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var2989!13 var838)
(declare-const var791!2 (Array Int var1809))
(define-const var1485 (Array Int var1809) arr-var1809-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1485!1 (Array Int var1809))
(assert (not (= var1485!1 null-__Array__Int__var1809__)))
(assert (= (select var1485!1 0) (cast-from-String-to-var1809 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2989!13 var1485!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var2989!14 var838)
(declare-const var1485!2 (Array Int var1809))
(define-const var3322 (Array Int var1809) arr-var1809-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var1678 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1678)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1678!1 String)
(assert (= var1678!1 ""))
(define-const var289 Bool var151_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (= (ite var289 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3166 String "") ; Statement: $r56 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2992 String (append/672562846 var1678!1 var3166)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var1678!2 String)
(assert (= var1678!2 (str.++ var1678!1 var3166)))
(assert true)
(define-const var332 String (append/672562846 var2992 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var2992!1 String)
(assert (= var2992!1 (str.++ var2992 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var1436 String (toString/-2075883882 var332)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3322!1 (Array Int var1809))
(assert (not (= var3322!1 null-__Array__Int__var1809__)))
(assert (= (select var3322!1 0) (cast-from-String-to-var1809 var1436))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var2989!14 var3322!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var2989!15 var838)
(declare-const var3322!2 (Array Int var1809))
(define-const var2308 (Array Int var1809) arr-var1809-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var2308!1 (Array Int var1809))
(assert (not (= var2308!1 null-__Array__Int__var1809__)))
(assert (= (select var2308!1 0) (cast-from-String-to-var1809 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var2989!15 var2308!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var2989!16 var838)
(declare-const var2308!2 (Array Int var1809))
(define-const var2230 (Array Int var1809) arr-var1809-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var2230!1 (Array Int var1809))
(assert (not (= var2230!1 null-__Array__Int__var1809__)))
(assert (= (select var2230!1 0) (cast-from-String-to-var1809 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var2989!16 var2230!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var2989!17 var838)
(declare-const var2230!2 (Array Int var1809))
(define-const var3030 (Array Int var1809) arr-var1809-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var3030!1 (Array Int var1809))
(assert (not (= var3030!1 null-__Array__Int__var1809__)))
(assert (= (select var3030!1 0) (cast-from-String-to-var1809 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var2989!17 var3030!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var2989!18 var838)
(declare-const var3030!2 (Array Int var1809))
(define-const var909 (Array Int var1809) arr-var1809-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var909!1 (Array Int var1809))
(assert (not (= var909!1 null-__Array__Int__var1809__)))
(assert (= (select var909!1 0) (cast-from-String-to-var1809 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var2989!18 var909!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var2989!19 var838)
(declare-const var909!2 (Array Int var1809))
(define-const var1310 (Array Int var1809) arr-var1809-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var1310!1 (Array Int var1809))
(assert (not (= var1310!1 null-__Array__Int__var1809__)))
(assert (= (select var1310!1 0) (cast-from-String-to-var1809 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2989!19 var1310!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var2989!20 var838)
(declare-const var1310!2 (Array Int var1809))
(define-const var3448 Bool var1079-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var3448 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2379 Bool var1079-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var2379 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1809-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var151_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1809=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var838=org.javacc.parser.CodeGenerator, var2989=r0, var1809=java.lang.Object, var3837=$r1, var3709=$r2, var151=org.javacc.parser.Options, var641=$z0, var2835=$r54, var1596=$r3, var1287=$r4, var1179=$r5, var2314=$r6, var2945=$r7, var1861=$r8, var3212=$r9, var764=$r10, var3628=$r11, var631=$r12, var2139=$r13, var3767=$r14, var2587=$z1, var102=$r55, var3485=$r15, var1654=$r16, var2911=$r17, var546=$r18, var1615=$r19, var376=$r20, var791=$r21, var1485=$r22, var3322=$r23, var1678=$r24, var289=$z2, var3166=$r56, var2992=$r25, var332=$r26, var1436=$r27, var2308=$r28, var2230=$r29, var3030=$r30, var909=$r31, var1310=$r32, var1079=org.javacc.parser.NfaState, var3448=$z3, var2379=$z6}
; {org.javacc.parser.CodeGenerator=var838, r0=var2989, java.lang.Object=var1809, $r1=var3837, $r2=var3709, org.javacc.parser.Options=var151, $z0=var641, $r54=var2835, $r3=var1596, $r4=var1287, $r5=var1179, $r6=var2314, $r7=var2945, $r8=var1861, $r9=var3212, $r10=var764, $r11=var3628, $r12=var631, $r13=var2139, $r14=var3767, $z1=var2587, $r55=var102, $r15=var3485, $r16=var1654, $r17=var2911, $r18=var546, $r19=var1615, $r20=var376, $r21=var791, $r22=var1485, $r23=var3322, $r24=var1678, $z2=var289, $r56=var3166, $r25=var2992, $r26=var332, $r27=var1436, $r28=var2308, $r29=var2230, $r30=var3030, $r31=var909, $r32=var1310, org.javacc.parser.NfaState=var1079, $z3=var3448, $z6=var2379}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "static ";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "static ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "";	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9