(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2855 0)
(declare-sort var2633 0)
(declare-sort var3330 0)
(declare-sort var789 0)
(declare-sort var989 0)
(declare-sort var435 0)
(declare-sort var417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var2633) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3330_getBooleanType/-2111917935 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun nonAsciiMethod/1847772117 (var2855) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var3330_getLongType/-387263599 () String)
(declare-fun generateMethodDefHeader/-453602513 (var2633 String String String) void)
(declare-fun arr-var435-init () (Array Int var435))
(declare-fun cast-from-String-to-var435 (String) var435)
(declare-fun genCodeLine/787715242 (var2633 (Array Int var435)) void)
(declare-fun loByteVec/1847772117 (var2855) var417)
(declare-fun nonAsciiMoveIndices/1847772117 (var2855) (Array Int Int))
(declare-const null-var2855 var2855)
(declare-const null-var2633 var2633)
(declare-const var989-lg var789)
(declare-const var789-tokMgrClassName String)
(declare-const null-__Array__Int__var435__ (Array Int var435))
(declare-const null-var417 var417)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var845 var2855) ; Statement: r9 := @this: org.javacc.parser.NfaState 
(assert (not (= var845 null-var2855)))
(declare-const var3826 var2633) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3826 null-var2633)))
(assert true)
(define-const var2080 Bool (isJavaLanguage/-1752064482 var3826)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto $r99 = new java.lang.StringBuilder 
(assert (= (ite var2080 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1143 String String-init) ; Statement: $r99 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1143)) ; Statement: specialinvoke $r99.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1143!1 String)
(assert (= var1143!1 ""))
(assert true)
(define-const var533 String (append/672562846 var1143!1 "")) ; Statement: $r3 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1143!2 String)
(assert (= var1143!2 (str.++ var1143!1 "")))
(define-const var127 String var3330_getBooleanType/-2111917935) ; Statement: $r2 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>() 
(assert true)
(define-const var1705 String (append/672562846 var533 var127)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var533!1 String)
(assert (= var533!1 (str.++ var533 var127)))
(assert true)
(define-const var152 String (append/672562846 var1705 "")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1705!1 String)
(assert (= var1705!1 (str.++ var1705 "")))
(assert true)
(define-const var995 String (toString/-2075883882 var152)) ; Statement: $r20 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3255 var789 var989-lg) ; Statement: $r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg> 
(define-const var674 String var789-tokMgrClassName) ; Statement: $r8 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName> 
(define-const var3432 String String-init) ; Statement: $r100 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3432)) ; Statement: specialinvoke $r100.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3432!1 String)
(assert (= var3432!1 ""))
(assert true)
(define-const var3488 String (append/672562846 var3432!1 "jjCanMove_")) ; Statement: $r10 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjCanMove_") 
(declare-const var3432!2 String)
(assert (= var3432!2 (str.++ var3432!1 "jjCanMove_")))
(define-const var3012 Int (nonAsciiMethod/1847772117 var845)) ; Statement: $i0 = r9.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert true)
(define-const var1250 String (append/-1001720160 var3488 var3012)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3488!1 String)
(assert (str.prefixof var3488 var3488!1))
(assert true)
(define-const var1492 String (append/672562846 var1250 "(int hiByte, int i1, int i2, ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int hiByte, int i1, int i2, ") 
(declare-const var1250!1 String)
(assert (= var1250!1 (str.++ var1250 "(int hiByte, int i1, int i2, ")))
(define-const var1623 String var3330_getLongType/-387263599) ; Statement: $r12 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var2010 String (append/672562846 var1492 var1623)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1492!1 String)
(assert (= var1492!1 (str.++ var1492 var1623)))
(assert true)
(define-const var3284 String (append/672562846 var2010 " l1, ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l1, ") 
(declare-const var2010!1 String)
(assert (= var2010!1 (str.++ var2010 " l1, ")))
(define-const var1703 String var3330_getLongType/-387263599) ; Statement: $r15 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var128 String (append/672562846 var3284 var1703)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3284!1 String)
(assert (= var3284!1 (str.++ var3284 var1703)))
(assert true)
(define-const var1063 String (append/672562846 var128 " l2)")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l2)") 
(declare-const var128!1 String)
(assert (= var128!1 (str.++ var128 " l2)")))
(assert true)
(define-const var3600 String (toString/-2075883882 var1063)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (generateMethodDefHeader/-453602513 var3826 var995 var674 var3600)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>($r20, $r8, $r19) 

(declare-const var3826!1 var2633)
(declare-const var995!1 String)
(declare-const var674!1 String)
(declare-const var3600!1 String)
(assert true) ; Non Conditional
(define-const var3487 (Array Int var435) arr-var435-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var3487!1 (Array Int var435))
(assert (not (= var3487!1 null-__Array__Int__var435__)))
(assert (= (select var3487!1 0) (cast-from-String-to-var435 "{"))) ; Statement: $r21[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var3826!1 var3487!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var3826!2 var2633)
(declare-const var3487!2 (Array Int var435))
(define-const var1624 (Array Int var435) arr-var435-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1624!1 (Array Int var435))
(assert (not (= var1624!1 null-__Array__Int__var435__)))
(assert (= (select var1624!1 0) (cast-from-String-to-var435 "   switch(hiByte)"))) ; Statement: $r22[0] = "   switch(hiByte)" 
(assert true)
;(assert (genCodeLine/787715242 var3826!2 var1624!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var3826!3 var2633)
(declare-const var1624!2 (Array Int var435))
(define-const var239 (Array Int var435) arr-var435-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(declare-const var239!1 (Array Int var435))
(assert (not (= var239!1 null-__Array__Int__var435__)))
(assert (= (select var239!1 0) (cast-from-String-to-var435 "   {"))) ; Statement: $r23[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var3826!3 var239!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var3826!4 var2633)
(declare-const var239!2 (Array Int var435))
(define-const var12 var417 (loByteVec/1847772117 var845)) ; Statement: $r24 = r9.<org.javacc.parser.NfaState: java.util.Vector loByteVec> 
 ; Statement: if $r24 == null goto $r93 = newarray (java.lang.Object)[1] 
(assert (= var12 null-var417)) ; Cond: $r24 == null 
(define-const var17 (Array Int var435) arr-var435-init) ; Statement: $r93 = newarray (java.lang.Object)[1] 
(declare-const var17!1 (Array Int var435))
(assert (not (= var17!1 null-__Array__Int__var435__)))
(assert (= (select var17!1 0) (cast-from-String-to-var435 "      default :"))) ; Statement: $r93[0] = "      default :" 
(assert true)
;(assert (genCodeLine/787715242 var3826!4 var17!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r93) 

(declare-const var3826!5 var2633)
(declare-const var17!2 (Array Int var435))
(define-const var2287 (Array Int Int) (nonAsciiMoveIndices/1847772117 var845)) ; Statement: $r94 = r9.<org.javacc.parser.NfaState: int[] nonAsciiMoveIndices> 
 ; Statement: if $r94 == null goto $r95 = newarray (java.lang.Object)[1] 
(assert (= var2287 null-__Array__Int__Int__)) ; Cond: $r94 == null 
(define-const var46 (Array Int var435) arr-var435-init) ; Statement: $r95 = newarray (java.lang.Object)[1] 
(declare-const var46!1 (Array Int var435))
(assert (not (= var46!1 null-__Array__Int__var435__)))
(assert (= (select var46!1 0) (cast-from-String-to-var435 "         return false;"))) ; Statement: $r95[0] = "         return false;" 
(assert true)
;(assert (genCodeLine/787715242 var3826!5 var46!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r95) 

(declare-const var3826!6 var2633)
(declare-const var46!2 (Array Int var435))
(define-const var259 (Array Int var435) arr-var435-init) ; Statement: $r96 = newarray (java.lang.Object)[1] 
(declare-const var259!1 (Array Int var435))
(assert (not (= var259!1 null-__Array__Int__var435__)))
(assert (= (select var259!1 0) (cast-from-String-to-var435 "   }"))) ; Statement: $r96[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var3826!6 var259!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r96) 

(declare-const var3826!7 var2633)
(declare-const var259!2 (Array Int var435))
(define-const var3250 (Array Int var435) arr-var435-init) ; Statement: $r97 = newarray (java.lang.Object)[1] 
(declare-const var3250!1 (Array Int var435))
(assert (not (= var3250!1 null-__Array__Int__var435__)))
(assert (= (select var3250!1 0) (cast-from-String-to-var435 "}"))) ; Statement: $r97[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var3826!7 var3250!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r97) 

(declare-const var3826!8 var2633)
(declare-const var3250!2 (Array Int var435))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3330_getBooleanType/-2111917935=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var3330_getLongType/-387263599=([], java.lang.String), generateMethodDefHeader/-453602513=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.String, java.lang.String], void), arr-var435-init=([], java.lang.Object[]), cast-from-String-to-var435=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), loByteVec/1847772117=([org.javacc.parser.NfaState], java.util.Vector), nonAsciiMoveIndices/1847772117=([org.javacc.parser.NfaState], int[])}
; {var2855=org.javacc.parser.NfaState, var845=r9, var2633=org.javacc.parser.CodeGenerator, var3826=r0, var2080=$z0, var1143=$r99, var533=$r3, var3330=org.javacc.parser.Options, var127=$r2, var1705=$r4, var152=$r5, var995=$r20, var789=org.javacc.parser.LexGen, var989=org.javacc.parser.Main, var3255=$r6, var674=$r8, var3432=$r100, var3488=$r10, var3012=$i0, var1250=$r11, var1492=$r13, var1623=$r12, var2010=$r14, var3284=$r16, var1703=$r15, var128=$r17, var1063=$r18, var3600=$r19, var435=java.lang.Object, var3487=$r21, var1624=$r22, var239=$r23, var417=java.util.Vector, var12=$r24, var17=$r93, var2287=$r94, var46=$r95, var259=$r96, var3250=$r97}
; {org.javacc.parser.NfaState=var2855, r9=var845, org.javacc.parser.CodeGenerator=var2633, r0=var3826, $z0=var2080, $r99=var1143, $r3=var533, org.javacc.parser.Options=var3330, $r2=var127, $r4=var1705, $r5=var152, $r20=var995, org.javacc.parser.LexGen=var789, org.javacc.parser.Main=var989, $r6=var3255, $r8=var674, $r100=var3432, $r10=var3488, $i0=var3012, $r11=var1250, $r13=var1492, $r12=var1623, $r14=var2010, $r16=var3284, $r15=var1703, $r17=var128, $r18=var1063, $r19=var3600, java.lang.Object=var435, $r21=var3487, $r22=var1624, $r23=var239, java.util.Vector=var417, $r24=var12, $r93=var17, $r94=var2287, $r95=var46, $r96=var259, $r97=var3250}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r9 := @this: org.javacc.parser.NfaState;	r0 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto $r99 = new java.lang.StringBuilder;	$r99 = new java.lang.StringBuilder;	specialinvoke $r99.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r99.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r2 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r20 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = <org.javacc.parser.Main: org.javacc.parser.LexGen lg>;	$r8 = <org.javacc.parser.LexGen: java.lang.String tokMgrClassName>;	$r100 = new java.lang.StringBuilder;	specialinvoke $r100.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r100.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jjCanMove_");	$i0 = r9.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int hiByte, int i1, int i2, ");	$r12 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l1, ");	$r15 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l2)");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void generateMethodDefHeader(java.lang.String,java.lang.String,java.lang.String)>($r20, $r8, $r19);	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "   switch(hiByte)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r23[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r24 = r9.<org.javacc.parser.NfaState: java.util.Vector loByteVec>;	if $r24 == null goto $r93 = newarray (java.lang.Object)[1];	$r93 = newarray (java.lang.Object)[1];	$r93[0] = "      default :";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r93);	$r94 = r9.<org.javacc.parser.NfaState: int[] nonAsciiMoveIndices>;	if $r94 == null goto $r95 = newarray (java.lang.Object)[1];	$r95 = newarray (java.lang.Object)[1];	$r95[0] = "         return false;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r95);	$r96 = newarray (java.lang.Object)[1];	$r96[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r96);	$r97 = newarray (java.lang.Object)[1];	$r97[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r97);	return
;block_num 5