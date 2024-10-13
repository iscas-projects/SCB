(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1478 0)
(declare-sort var3524 0)
(declare-sort var732 0)
(declare-sort var2484 0)
(declare-sort var3433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var1478) Bool)
(declare-fun var3524_DumpStatesForState/-476328967 (var1478) void)
(declare-fun switchToStaticsFile/-245861004 (var1478) void)
(declare-fun arr-var732-init () (Array Int var732))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var732 (String) var732)
(declare-fun genCode/442726974 (var1478 (Array Int var732)) void)
(declare-fun genCodeLine/787715242 (var1478 (Array Int var732)) void)
(declare-const null-var1478 var1478)
(declare-const var3433-lg var2484)
(declare-const var2484-stateSetSize Int)
(declare-const null-__Array__Int__var732__ (Array Int var732))
(declare-const var3524-kinds (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3683 var1478) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3683 null-var1478)))
(assert true)
(define-const var3817 Bool (isJavaLanguage/-1752064482 var3683)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0) 
(assert (not (= (ite var3817 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var3524_DumpStatesForState/-476328967 var3683)) ; Statement: staticinvoke <org.javacc.parser.NfaState: void DumpStatesForState(org.javacc.parser.CodeGenerator)>(r0) 

(declare-const var3683!1 var1478)
 ; Statement: goto [?= z2 = 0] 
(assert true) ; Non Conditional
(define-const var531 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true)
(define-const var3833 Bool (isJavaLanguage/-1752064482 var3683!1)) ; Statement: $z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>() 
(assert (= (ite var3833 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (switchToStaticsFile/-245861004 var3683!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>() 

(declare-const var3683!2 var1478)
(define-const var725 (Array Int var732) arr-var732-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var1715 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1715)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1715!1 String)
(assert (= var1715!1 ""))
(assert true)
(define-const var2806 String (append/672562846 var1715!1 "static const int kindForState[")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const int kindForState[") 
(declare-const var1715!2 String)
(assert (= var1715!2 (str.++ var1715!1 "static const int kindForState[")))
(define-const var3891 var2484 var3433-lg) ; Statement: $r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var3396 Int var2484-stateSetSize) ; Statement: $i0 = <org.javacc.parser.LexGen: int stateSetSize> 
(assert true)
(define-const var2439 String (append/-1001720160 var2806 var3396)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2806!1 String)
(assert (str.prefixof var2806 var2806!1))
(assert true)
(define-const var2402 String (append/672562846 var2439 "][")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("][") 
(declare-const var2439!1 String)
(assert (= var2439!1 (str.++ var2439 "][")))
(define-const var2088 var2484 var3433-lg) ; Statement: $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var1104 Int var2484-stateSetSize) ; Statement: $i1 = <org.javacc.parser.LexGen: int stateSetSize> 
(assert true)
(define-const var3261 String (append/-1001720160 var2402 var1104)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2402!1 String)
(assert (str.prefixof var2402 var2402!1))
(assert true)
(define-const var2407 String (append/672562846 var3261 "] = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] = ") 
(declare-const var3261!1 String)
(assert (= var3261!1 (str.++ var3261 "] = ")))
(assert true)
(define-const var2775 String (toString/-2075883882 var2407)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var725!1 (Array Int var732))
(assert (not (= var725!1 null-__Array__Int__var732__)))
(assert (= (select var725!1 0) (cast-from-String-to-var732 var2775))) ; Statement: $r1[0] = $r10 
(assert true)
;(assert (genCode/442726974 var3683!2 var725!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r1) 

(declare-const var3683!3 var1478)
(declare-const var725!2 (Array Int var732))
(assert true) ; Non Conditional
(define-const var3083 (Array Int (Array Int Int)) var3524-kinds) ; Statement: $r11 = <org.javacc.parser.NfaState: int[][] kinds> 
 ; Statement: if $r11 != null goto $r12 = newarray (java.lang.Object)[1] 
(assert (not (not (= var3083 null-__Array__Int____Array__Int__Int____)))) ; Negate: Cond: $r11 != null  
(define-const var2140 (Array Int var732) arr-var732-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(declare-const var2140!1 (Array Int var732))
(assert (not (= var2140!1 null-__Array__Int__var732__)))
(assert (= (select var2140!1 0) (cast-from-String-to-var732 "null;"))) ; Statement: $r25[0] = "null;" 
(assert true)
;(assert (genCodeLine/787715242 var3683!3 var2140!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25) 

(declare-const var3683!4 var1478)
(declare-const var2140!2 (Array Int var732))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), var3524_DumpStatesForState/-476328967=([org.javacc.parser.CodeGenerator], void), switchToStaticsFile/-245861004=([org.javacc.parser.CodeGenerator], void), arr-var732-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var732=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var1478=org.javacc.parser.CodeGenerator, var3683=r0, var3817=$z0, var3524=org.javacc.parser.NfaState, var531=z2, var3833=$z1, var732=java.lang.Object, var725=$r1, var1715=$r2, var2806=$r4, var2484=org.javacc.parser.LexGen, var3433=org.javacc.parser.Main, var3891=$r3, var3396=$i0, var2439=$r5, var2402=$r7, var2088=$r6, var1104=$i1, var3261=$r8, var2407=$r9, var2775=$r10, var3083=$r11, var2140=$r25}
; {org.javacc.parser.CodeGenerator=var1478, r0=var3683, $z0=var3817, org.javacc.parser.NfaState=var3524, z2=var531, $z1=var3833, java.lang.Object=var732, $r1=var725, $r2=var1715, $r4=var2806, org.javacc.parser.LexGen=var2484, org.javacc.parser.Main=var3433, $r3=var3891, $i0=var3396, $r5=var2439, $r7=var2402, $r6=var2088, $i1=var1104, $r8=var3261, $r9=var2407, $r10=var2775, $r11=var3083, $r25=var2140}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0);	staticinvoke <org.javacc.parser.NfaState: void DumpStatesForState(org.javacc.parser.CodeGenerator)>(r0);	goto [?= z2 = 0];	z2 = 0;	$z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>();	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>();	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const int kindForState[");	$r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i0 = <org.javacc.parser.LexGen: int stateSetSize>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("][");	$r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i1 = <org.javacc.parser.LexGen: int stateSetSize>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r10;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r1);	$r11 = <org.javacc.parser.NfaState: int[][] kinds>;	if $r11 != null goto $r12 = newarray (java.lang.Object)[1];	$r25 = newarray (java.lang.Object)[1];	$r25[0] = "null;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25);	return
;block_num 6