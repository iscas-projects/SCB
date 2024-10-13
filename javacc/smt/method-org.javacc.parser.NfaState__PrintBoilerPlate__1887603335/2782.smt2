(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var848 0)
(declare-sort var1501 0)
(declare-sort var2757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var848-init () (Array Int var848))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1501_getStatic/-616544340 () Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var848 (String) var848)
(declare-fun genCodeLine/787715242 (var1770 (Array Int var848)) void)
(declare-const null-var1770 var1770)
(declare-const null-__Array__Int__var848__ (Array Int var848))
(declare-const var2757-jjCheckNAddStatesDualNeeded Bool)
(declare-const var2757-jjCheckNAddStatesUnaryNeeded Bool)
(declare-const var1546 var1770) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1546 null-var1770)))
(define-const var978 (Array Int var848) arr-var848-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var3380 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3380)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3380!1 String)
(assert (= var3380!1 ""))
(define-const var2464 Bool var1501_getStatic/-616544340) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z0 == 0 goto $r54 = "" 
(assert (= (ite var2464 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3939 String "") ; Statement: $r54 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2591 String (append/672562846 var3380!1 var3939)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var3380!2 String)
(assert (= var3380!2 (str.++ var3380!1 var3939)))
(assert true)
(define-const var3647 String (append/672562846 var2591 "private void jjCheckNAdd(int state)")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)") 
(declare-const var2591!1 String)
(assert (= var2591!1 (str.++ var2591 "private void jjCheckNAdd(int state)")))
(assert true)
(define-const var1371 String (toString/-2075883882 var3647)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var978!1 (Array Int var848))
(assert (not (= var978!1 null-__Array__Int__var848__)))
(assert (= (select var978!1 0) (cast-from-String-to-var848 var1371))) ; Statement: $r1[0] = $r5 
(assert true)
;(assert (genCodeLine/787715242 var1546 var978!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var1546!1 var1770)
(declare-const var978!2 (Array Int var848))
(define-const var2715 (Array Int var848) arr-var848-init) ; Statement: $r6 = newarray (java.lang.Object)[1] 
(declare-const var2715!1 (Array Int var848))
(assert (not (= var2715!1 null-__Array__Int__var848__)))
(assert (= (select var2715!1 0) (cast-from-String-to-var848 "{"))) ; Statement: $r6[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1546!1 var2715!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6) 

(declare-const var1546!2 var1770)
(declare-const var2715!2 (Array Int var848))
(define-const var2546 (Array Int var848) arr-var848-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2546!1 (Array Int var848))
(assert (not (= var2546!1 null-__Array__Int__var848__)))
(assert (= (select var2546!1 0) (cast-from-String-to-var848 "   if (jjrounds[state] != jjround)"))) ; Statement: $r7[0] = "   if (jjrounds[state] != jjround)" 
(assert true)
;(assert (genCodeLine/787715242 var1546!2 var2546!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7) 

(declare-const var1546!3 var1770)
(declare-const var2546!2 (Array Int var848))
(define-const var2018 (Array Int var848) arr-var848-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var2018!1 (Array Int var848))
(assert (not (= var2018!1 null-__Array__Int__var848__)))
(assert (= (select var2018!1 0) (cast-from-String-to-var848 "   {"))) ; Statement: $r8[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var1546!3 var2018!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8) 

(declare-const var1546!4 var1770)
(declare-const var2018!2 (Array Int var848))
(define-const var2598 (Array Int var848) arr-var848-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(declare-const var2598!1 (Array Int var848))
(assert (not (= var2598!1 null-__Array__Int__var848__)))
(assert (= (select var2598!1 0) (cast-from-String-to-var848 "      jjstateSet[jjnewStateCnt++] = state;"))) ; Statement: $r9[0] = "      jjstateSet[jjnewStateCnt++] = state;" 
(assert true)
;(assert (genCodeLine/787715242 var1546!4 var2598!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9) 

(declare-const var1546!5 var1770)
(declare-const var2598!2 (Array Int var848))
(define-const var1033 (Array Int var848) arr-var848-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var1033!1 (Array Int var848))
(assert (not (= var1033!1 null-__Array__Int__var848__)))
(assert (= (select var1033!1 0) (cast-from-String-to-var848 "      jjrounds[state] = jjround;"))) ; Statement: $r10[0] = "      jjrounds[state] = jjround;" 
(assert true)
;(assert (genCodeLine/787715242 var1546!5 var1033!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10) 

(declare-const var1546!6 var1770)
(declare-const var1033!2 (Array Int var848))
(define-const var2925 (Array Int var848) arr-var848-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2925!1 (Array Int var848))
(assert (not (= var2925!1 null-__Array__Int__var848__)))
(assert (= (select var2925!1 0) (cast-from-String-to-var848 "   }"))) ; Statement: $r11[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var1546!6 var2925!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11) 

(declare-const var1546!7 var1770)
(declare-const var2925!2 (Array Int var848))
(define-const var1744 (Array Int var848) arr-var848-init) ; Statement: $r12 = newarray (java.lang.Object)[1] 
(declare-const var1744!1 (Array Int var848))
(assert (not (= var1744!1 null-__Array__Int__var848__)))
(assert (= (select var1744!1 0) (cast-from-String-to-var848 "}"))) ; Statement: $r12[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1546!7 var1744!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12) 

(declare-const var1546!8 var1770)
(declare-const var1744!2 (Array Int var848))
(define-const var3926 (Array Int var848) arr-var848-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var552 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var552)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var552!1 String)
(assert (= var552!1 ""))
(define-const var3989 Bool var1501_getStatic/-616544340) ; Statement: $z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z1 == 0 goto $r55 = "" 
(assert (not (= (ite var3989 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3586 String "static ") ; Statement: $r55 = "static " 
 ; Statement: goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1798 String (append/672562846 var552!1 var3586)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55) 
(declare-const var552!2 String)
(assert (= var552!2 (str.++ var552!1 var3586)))
(assert true)
(define-const var2353 String (append/672562846 var1798 "private void jjAddStates(int start, int end)")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)") 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 "private void jjAddStates(int start, int end)")))
(assert true)
(define-const var2148 String (toString/-2075883882 var2353)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3926!1 (Array Int var848))
(assert (not (= var3926!1 null-__Array__Int__var848__)))
(assert (= (select var3926!1 0) (cast-from-String-to-var848 var2148))) ; Statement: $r13[0] = $r17 
(assert true)
;(assert (genCodeLine/787715242 var1546!8 var3926!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13) 

(declare-const var1546!9 var1770)
(declare-const var3926!2 (Array Int var848))
(define-const var2056 (Array Int var848) arr-var848-init) ; Statement: $r18 = newarray (java.lang.Object)[1] 
(declare-const var2056!1 (Array Int var848))
(assert (not (= var2056!1 null-__Array__Int__var848__)))
(assert (= (select var2056!1 0) (cast-from-String-to-var848 "{"))) ; Statement: $r18[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1546!9 var2056!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18) 

(declare-const var1546!10 var1770)
(declare-const var2056!2 (Array Int var848))
(define-const var303 (Array Int var848) arr-var848-init) ; Statement: $r19 = newarray (java.lang.Object)[1] 
(declare-const var303!1 (Array Int var848))
(assert (not (= var303!1 null-__Array__Int__var848__)))
(assert (= (select var303!1 0) (cast-from-String-to-var848 "   do {"))) ; Statement: $r19[0] = "   do {" 
(assert true)
;(assert (genCodeLine/787715242 var1546!10 var303!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19) 

(declare-const var1546!11 var1770)
(declare-const var303!2 (Array Int var848))
(define-const var3372 (Array Int var848) arr-var848-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(declare-const var3372!1 (Array Int var848))
(assert (not (= var3372!1 null-__Array__Int__var848__)))
(assert (= (select var3372!1 0) (cast-from-String-to-var848 "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];"))) ; Statement: $r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];" 
(assert true)
;(assert (genCodeLine/787715242 var1546!11 var3372!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20) 

(declare-const var1546!12 var1770)
(declare-const var3372!2 (Array Int var848))
(define-const var3491 (Array Int var848) arr-var848-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var3491!1 (Array Int var848))
(assert (not (= var3491!1 null-__Array__Int__var848__)))
(assert (= (select var3491!1 0) (cast-from-String-to-var848 "   } while (start++ != end);"))) ; Statement: $r21[0] = "   } while (start++ != end);" 
(assert true)
;(assert (genCodeLine/787715242 var1546!12 var3491!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var1546!13 var1770)
(declare-const var3491!2 (Array Int var848))
(define-const var3064 (Array Int var848) arr-var848-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var3064!1 (Array Int var848))
(assert (not (= var3064!1 null-__Array__Int__var848__)))
(assert (= (select var3064!1 0) (cast-from-String-to-var848 "}"))) ; Statement: $r22[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1546!13 var3064!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var1546!14 var1770)
(declare-const var3064!2 (Array Int var848))
(define-const var3250 (Array Int var848) arr-var848-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(define-const var3705 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3705)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3705!1 String)
(assert (= var3705!1 ""))
(define-const var878 Bool var1501_getStatic/-616544340) ; Statement: $z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>() 
 ; Statement: if $z2 == 0 goto $r56 = "" 
(assert (= (ite var878 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2309 String "") ; Statement: $r56 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var993 String (append/672562846 var3705!1 var2309)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3705!2 String)
(assert (= var3705!2 (str.++ var3705!1 var2309)))
(assert true)
(define-const var3059 String (append/672562846 var993 "private void jjCheckNAddTwoStates(int state1, int state2)")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)") 
(declare-const var993!1 String)
(assert (= var993!1 (str.++ var993 "private void jjCheckNAddTwoStates(int state1, int state2)")))
(assert true)
(define-const var1362 String (toString/-2075883882 var3059)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3250!1 (Array Int var848))
(assert (not (= var3250!1 null-__Array__Int__var848__)))
(assert (= (select var3250!1 0) (cast-from-String-to-var848 var1362))) ; Statement: $r23[0] = $r27 
(assert true)
;(assert (genCodeLine/787715242 var1546!14 var3250!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var1546!15 var1770)
(declare-const var3250!2 (Array Int var848))
(define-const var7 (Array Int var848) arr-var848-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var7!1 (Array Int var848))
(assert (not (= var7!1 null-__Array__Int__var848__)))
(assert (= (select var7!1 0) (cast-from-String-to-var848 "{"))) ; Statement: $r28[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1546!15 var7!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var1546!16 var1770)
(declare-const var7!2 (Array Int var848))
(define-const var3461 (Array Int var848) arr-var848-init) ; Statement: $r29 = newarray (java.lang.Object)[1] 
(declare-const var3461!1 (Array Int var848))
(assert (not (= var3461!1 null-__Array__Int__var848__)))
(assert (= (select var3461!1 0) (cast-from-String-to-var848 "   jjCheckNAdd(state1);"))) ; Statement: $r29[0] = "   jjCheckNAdd(state1);" 
(assert true)
;(assert (genCodeLine/787715242 var1546!16 var3461!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29) 

(declare-const var1546!17 var1770)
(declare-const var3461!2 (Array Int var848))
(define-const var37 (Array Int var848) arr-var848-init) ; Statement: $r30 = newarray (java.lang.Object)[1] 
(declare-const var37!1 (Array Int var848))
(assert (not (= var37!1 null-__Array__Int__var848__)))
(assert (= (select var37!1 0) (cast-from-String-to-var848 "   jjCheckNAdd(state2);"))) ; Statement: $r30[0] = "   jjCheckNAdd(state2);" 
(assert true)
;(assert (genCodeLine/787715242 var1546!17 var37!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30) 

(declare-const var1546!18 var1770)
(declare-const var37!2 (Array Int var848))
(define-const var2104 (Array Int var848) arr-var848-init) ; Statement: $r31 = newarray (java.lang.Object)[1] 
(declare-const var2104!1 (Array Int var848))
(assert (not (= var2104!1 null-__Array__Int__var848__)))
(assert (= (select var2104!1 0) (cast-from-String-to-var848 "}"))) ; Statement: $r31[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1546!18 var2104!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31) 

(declare-const var1546!19 var1770)
(declare-const var2104!2 (Array Int var848))
(define-const var1025 (Array Int var848) arr-var848-init) ; Statement: $r32 = newarray (java.lang.Object)[1] 
(declare-const var1025!1 (Array Int var848))
(assert (not (= var1025!1 null-__Array__Int__var848__)))
(assert (= (select var1025!1 0) (cast-from-String-to-var848 ""))) ; Statement: $r32[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var1546!19 var1025!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32) 

(declare-const var1546!20 var1770)
(declare-const var1025!2 (Array Int var848))
(define-const var517 Bool var2757-jjCheckNAddStatesDualNeeded) ; Statement: $z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded> 
 ; Statement: if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
(assert (= (ite var517 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2373 Bool var2757-jjCheckNAddStatesUnaryNeeded) ; Statement: $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded> 
 ; Statement: if $z6 == 0 goto return 
(assert (= (ite var2373 1 0) 0)) ; Cond: $z6 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var848-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1501_getStatic/-616544340=([], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var848=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var1770=org.javacc.parser.CodeGenerator, var1546=r0, var848=java.lang.Object, var978=$r1, var3380=$r2, var1501=org.javacc.parser.Options, var2464=$z0, var3939=$r54, var2591=$r3, var3647=$r4, var1371=$r5, var2715=$r6, var2546=$r7, var2018=$r8, var2598=$r9, var1033=$r10, var2925=$r11, var1744=$r12, var3926=$r13, var552=$r14, var3989=$z1, var3586=$r55, var1798=$r15, var2353=$r16, var2148=$r17, var2056=$r18, var303=$r19, var3372=$r20, var3491=$r21, var3064=$r22, var3250=$r23, var3705=$r24, var878=$z2, var2309=$r56, var993=$r25, var3059=$r26, var1362=$r27, var7=$r28, var3461=$r29, var37=$r30, var2104=$r31, var1025=$r32, var2757=org.javacc.parser.NfaState, var517=$z3, var2373=$z6}
; {org.javacc.parser.CodeGenerator=var1770, r0=var1546, java.lang.Object=var848, $r1=var978, $r2=var3380, org.javacc.parser.Options=var1501, $z0=var2464, $r54=var3939, $r3=var2591, $r4=var3647, $r5=var1371, $r6=var2715, $r7=var2546, $r8=var2018, $r9=var2598, $r10=var1033, $r11=var2925, $r12=var1744, $r13=var3926, $r14=var552, $z1=var3989, $r55=var3586, $r15=var1798, $r16=var2353, $r17=var2148, $r18=var2056, $r19=var303, $r20=var3372, $r21=var3491, $r22=var3064, $r23=var3250, $r24=var3705, $z2=var878, $r56=var2309, $r25=var993, $r26=var3059, $r27=var1362, $r28=var7, $r29=var3461, $r30=var37, $r31=var2104, $r32=var1025, org.javacc.parser.NfaState=var2757, $z3=var517, $z6=var2373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$z0 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z0 == 0 goto $r54 = "";	$r54 = "";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAdd(int state)");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r5;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[1];	$r6[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r6);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = "   if (jjrounds[state] != jjround)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r7);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r8);	$r9 = newarray (java.lang.Object)[1];	$r9[0] = "      jjstateSet[jjnewStateCnt++] = state;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r9);	$r10 = newarray (java.lang.Object)[1];	$r10[0] = "      jjrounds[state] = jjround;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r10);	$r11 = newarray (java.lang.Object)[1];	$r11[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r11);	$r12 = newarray (java.lang.Object)[1];	$r12[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r12);	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$z1 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z1 == 0 goto $r55 = "";	$r55 = "static ";	goto [?= $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55)];	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r55);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjAddStates(int start, int end)");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r13);	$r18 = newarray (java.lang.Object)[1];	$r18[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r18);	$r19 = newarray (java.lang.Object)[1];	$r19[0] = "   do {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r19);	$r20 = newarray (java.lang.Object)[1];	$r20[0] = "      jjstateSet[jjnewStateCnt++] = jjnextStates[start];";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r20);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "   } while (start++ != end);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z2 = staticinvoke <org.javacc.parser.Options: boolean getStatic()>();	if $z2 == 0 goto $r56 = "";	$r56 = "";	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private void jjCheckNAddTwoStates(int state1, int state2)");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r23[0] = $r27;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	$r29 = newarray (java.lang.Object)[1];	$r29[0] = "   jjCheckNAdd(state1);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r29);	$r30 = newarray (java.lang.Object)[1];	$r30[0] = "   jjCheckNAdd(state2);";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r30);	$r31 = newarray (java.lang.Object)[1];	$r31[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r31);	$r32 = newarray (java.lang.Object)[1];	$r32[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r32);	$z3 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesDualNeeded>;	if $z3 == 0 goto $z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	$z6 = <org.javacc.parser.NfaState: boolean jjCheckNAddStatesUnaryNeeded>;	if $z6 == 0 goto return;	return
;block_num 9