(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3580 0)
(declare-sort var3945 0)
(declare-sort var1929 0)
(declare-sort var577 0)
(declare-sort var1268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var3580) Bool)
(declare-fun var3945_DumpStatesForStateCPP/11920310 (var3580) void)
(declare-fun switchToStaticsFile/-245861004 (var3580) void)
(declare-fun arr-var1929-init () (Array Int var1929))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1929 (String) var1929)
(declare-fun genCode/442726974 (var3580 (Array Int var1929)) void)
(declare-fun genCodeLine/787715242 (var3580 (Array Int var1929)) void)
(declare-const null-var3580 var3580)
(declare-const var1268-lg var577)
(declare-const var577-stateSetSize Int)
(declare-const null-__Array__Int__var1929__ (Array Int var1929))
(declare-const var3945-kinds (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3863 var3580) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3863 null-var3580)))
(assert true)
(define-const var799 Bool (isJavaLanguage/-1752064482 var3863)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0) 
(assert (= (ite var799 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var3945_DumpStatesForStateCPP/11920310 var3863)) ; Statement: staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0) 

(declare-const var3863!1 var3580)
(assert true) ; Non Conditional
(define-const var2017 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true)
(define-const var1164 Bool (isJavaLanguage/-1752064482 var3863!1)) ; Statement: $z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>() 
(assert (= (ite var1164 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
;(assert (switchToStaticsFile/-245861004 var3863!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>() 

(declare-const var3863!2 var3580)
(define-const var916 (Array Int var1929) arr-var1929-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(define-const var2965 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2965)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2965!1 String)
(assert (= var2965!1 ""))
(assert true)
(define-const var1573 String (append/672562846 var2965!1 "static const int kindForState[")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const int kindForState[") 
(declare-const var2965!2 String)
(assert (= var2965!2 (str.++ var2965!1 "static const int kindForState[")))
(define-const var2990 var577 var1268-lg) ; Statement: $r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var856 Int var577-stateSetSize) ; Statement: $i0 = <org.javacc.parser.LexGen: int stateSetSize> 
(assert true)
(define-const var3939 String (append/-1001720160 var1573 var856)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1573!1 String)
(assert (str.prefixof var1573 var1573!1))
(assert true)
(define-const var17 String (append/672562846 var3939 "][")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("][") 
(declare-const var3939!1 String)
(assert (= var3939!1 (str.++ var3939 "][")))
(define-const var1990 var577 var1268-lg) ; Statement: $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var3199 Int var577-stateSetSize) ; Statement: $i1 = <org.javacc.parser.LexGen: int stateSetSize> 
(assert true)
(define-const var1343 String (append/-1001720160 var17 var3199)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var17!1 String)
(assert (str.prefixof var17 var17!1))
(assert true)
(define-const var557 String (append/672562846 var1343 "] = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] = ") 
(declare-const var1343!1 String)
(assert (= var1343!1 (str.++ var1343 "] = ")))
(assert true)
(define-const var1137 String (toString/-2075883882 var557)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var916!1 (Array Int var1929))
(assert (not (= var916!1 null-__Array__Int__var1929__)))
(assert (= (select var916!1 0) (cast-from-String-to-var1929 var1137))) ; Statement: $r1[0] = $r10 
(assert true)
;(assert (genCode/442726974 var3863!2 var916!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r1) 

(declare-const var3863!3 var3580)
(declare-const var916!2 (Array Int var1929))
(assert true) ; Non Conditional
(define-const var795 (Array Int (Array Int Int)) var3945-kinds) ; Statement: $r11 = <org.javacc.parser.NfaState: int[][] kinds> 
 ; Statement: if $r11 != null goto $r12 = newarray (java.lang.Object)[1] 
(assert (not (not (= var795 null-__Array__Int____Array__Int__Int____)))) ; Negate: Cond: $r11 != null  
(define-const var2026 (Array Int var1929) arr-var1929-init) ; Statement: $r25 = newarray (java.lang.Object)[1] 
(declare-const var2026!1 (Array Int var1929))
(assert (not (= var2026!1 null-__Array__Int__var1929__)))
(assert (= (select var2026!1 0) (cast-from-String-to-var1929 "null;"))) ; Statement: $r25[0] = "null;" 
(assert true)
;(assert (genCodeLine/787715242 var3863!3 var2026!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25) 

(declare-const var3863!4 var3580)
(declare-const var2026!2 (Array Int var1929))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), var3945_DumpStatesForStateCPP/11920310=([org.javacc.parser.CodeGenerator], void), switchToStaticsFile/-245861004=([org.javacc.parser.CodeGenerator], void), arr-var1929-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1929=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3580=org.javacc.parser.CodeGenerator, var3863=r0, var799=$z0, var3945=org.javacc.parser.NfaState, var2017=z2, var1164=$z1, var1929=java.lang.Object, var916=$r1, var2965=$r2, var1573=$r4, var577=org.javacc.parser.LexGen, var1268=org.javacc.parser.Main, var2990=$r3, var856=$i0, var3939=$r5, var17=$r7, var1990=$r6, var3199=$i1, var1343=$r8, var557=$r9, var1137=$r10, var795=$r11, var2026=$r25}
; {org.javacc.parser.CodeGenerator=var3580, r0=var3863, $z0=var799, org.javacc.parser.NfaState=var3945, z2=var2017, $z1=var1164, java.lang.Object=var1929, $r1=var916, $r2=var2965, $r4=var1573, org.javacc.parser.LexGen=var577, org.javacc.parser.Main=var1268, $r3=var2990, $i0=var856, $r5=var3939, $r7=var17, $r6=var1990, $i1=var3199, $r8=var1343, $r9=var557, $r10=var1137, $r11=var795, $r25=var2026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0);	staticinvoke <org.javacc.parser.NfaState: void DumpStatesForStateCPP(org.javacc.parser.CodeGenerator)>(r0);	z2 = 0;	$z1 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z1 == 0 goto virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>();	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void switchToStaticsFile()>();	$r1 = newarray (java.lang.Object)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("static const int kindForState[");	$r3 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i0 = <org.javacc.parser.LexGen: int stateSetSize>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("][");	$r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$i1 = <org.javacc.parser.LexGen: int stateSetSize>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] = ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r10;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r1);	$r11 = <org.javacc.parser.NfaState: int[][] kinds>;	if $r11 != null goto $r12 = newarray (java.lang.Object)[1];	$r25 = newarray (java.lang.Object)[1];	$r25[0] = "null;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r25);	return
;block_num 6