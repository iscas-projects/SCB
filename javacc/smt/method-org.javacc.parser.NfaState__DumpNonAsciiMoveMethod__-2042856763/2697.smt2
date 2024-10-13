(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort var3040 0)
(declare-sort var468 0)
(declare-sort var1938 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var3040) Bool)
(declare-fun arr-var468-init () (Array Int var468))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1938_getBooleanType/-2111917935 () String)
(declare-fun nonAsciiMethod/1847772117 (var978) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var1938_getLongType/-387263599 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var468 (String) var468)
(declare-fun genCodeLine/787715242 (var3040 (Array Int var468)) void)
(declare-fun loByteVec/1847772117 (var978) var647)
(declare-fun nonAsciiMoveIndices/1847772117 (var978) (Array Int Int))
(declare-const null-var978 var978)
(declare-const null-var3040 var3040)
(declare-const null-__Array__Int__var468__ (Array Int var468))
(declare-const null-var647 var647)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var67 var978) ; Statement: r9 := @this: org.javacc.parser.NfaState 
(assert (not (= var67 null-var978)))
(declare-const var1876 var3040) ; Statement: r0 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var1876 null-var3040)))
(assert true)
(define-const var2701 Bool (isJavaLanguage/-1752064482 var1876)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto $r99 = new java.lang.StringBuilder 
(assert (not (= (ite var2701 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var496 (Array Int var468) arr-var468-init) ; Statement: $r78 = newarray (java.lang.Object)[1] 
(define-const var3529 String String-init) ; Statement: $r98 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3529)) ; Statement: specialinvoke $r98.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3529!1 String)
(assert (= var3529!1 ""))
(assert true)
(define-const var1472 String (append/672562846 var3529!1 "private static final ")) ; Statement: $r81 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private static final ") 
(declare-const var3529!2 String)
(assert (= var3529!2 (str.++ var3529!1 "private static final ")))
(define-const var2747 String var1938_getBooleanType/-2111917935) ; Statement: $r80 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>() 
(assert true)
(define-const var3331 String (append/672562846 var1472 var2747)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80) 
(declare-const var1472!1 String)
(assert (= var1472!1 (str.++ var1472 var2747)))
(assert true)
(define-const var474 String (append/672562846 var3331 " jjCanMove_")) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjCanMove_") 
(declare-const var3331!1 String)
(assert (= var3331!1 (str.++ var3331 " jjCanMove_")))
(define-const var3384 Int (nonAsciiMethod/1847772117 var67)) ; Statement: $i17 = r9.<org.javacc.parser.NfaState: int nonAsciiMethod> 
(assert true)
(define-const var1553 String (append/-1001720160 var474 var3384)) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i17) 
(declare-const var474!1 String)
(assert (str.prefixof var474 var474!1))
(assert true)
(define-const var2590 String (append/672562846 var1553 "(int hiByte, int i1, int i2, ")) ; Statement: $r86 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int hiByte, int i1, int i2, ") 
(declare-const var1553!1 String)
(assert (= var1553!1 (str.++ var1553 "(int hiByte, int i1, int i2, ")))
(define-const var2868 String var1938_getLongType/-387263599) ; Statement: $r85 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var1614 String (append/672562846 var2590 var2868)) ; Statement: $r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85) 
(declare-const var2590!1 String)
(assert (= var2590!1 (str.++ var2590 var2868)))
(assert true)
(define-const var851 String (append/672562846 var1614 " l1, ")) ; Statement: $r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l1, ") 
(declare-const var1614!1 String)
(assert (= var1614!1 (str.++ var1614 " l1, ")))
(define-const var3462 String var1938_getLongType/-387263599) ; Statement: $r88 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>() 
(assert true)
(define-const var2392 String (append/672562846 var851 var3462)) ; Statement: $r90 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r88) 
(declare-const var851!1 String)
(assert (= var851!1 (str.++ var851 var3462)))
(assert true)
(define-const var2091 String (append/672562846 var2392 " l2)")) ; Statement: $r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l2)") 
(declare-const var2392!1 String)
(assert (= var2392!1 (str.++ var2392 " l2)")))
(assert true)
(define-const var2093 String (toString/-2075883882 var2091)) ; Statement: $r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var496!1 (Array Int var468))
(assert (not (= var496!1 null-__Array__Int__var468__)))
(assert (= (select var496!1 0) (cast-from-String-to-var468 var2093))) ; Statement: $r78[0] = $r92 
(assert true)
;(assert (genCodeLine/787715242 var1876 var496!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r78) 

(declare-const var1876!1 var3040)
(declare-const var496!2 (Array Int var468))
 ; Statement: goto [?= $r21 = newarray (java.lang.Object)[1]] 
(assert true) ; Non Conditional
(define-const var1841 (Array Int var468) arr-var468-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(declare-const var1841!1 (Array Int var468))
(assert (not (= var1841!1 null-__Array__Int__var468__)))
(assert (= (select var1841!1 0) (cast-from-String-to-var468 "{"))) ; Statement: $r21[0] = "{" 
(assert true)
;(assert (genCodeLine/787715242 var1876!1 var1841!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21) 

(declare-const var1876!2 var3040)
(declare-const var1841!2 (Array Int var468))
(define-const var1373 (Array Int var468) arr-var468-init) ; Statement: $r22 = newarray (java.lang.Object)[1] 
(declare-const var1373!1 (Array Int var468))
(assert (not (= var1373!1 null-__Array__Int__var468__)))
(assert (= (select var1373!1 0) (cast-from-String-to-var468 "   switch(hiByte)"))) ; Statement: $r22[0] = "   switch(hiByte)" 
(assert true)
;(assert (genCodeLine/787715242 var1876!2 var1373!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22) 

(declare-const var1876!3 var3040)
(declare-const var1373!2 (Array Int var468))
(define-const var2721 (Array Int var468) arr-var468-init) ; Statement: $r23 = newarray (java.lang.Object)[1] 
(declare-const var2721!1 (Array Int var468))
(assert (not (= var2721!1 null-__Array__Int__var468__)))
(assert (= (select var2721!1 0) (cast-from-String-to-var468 "   {"))) ; Statement: $r23[0] = "   {" 
(assert true)
;(assert (genCodeLine/787715242 var1876!3 var2721!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23) 

(declare-const var1876!4 var3040)
(declare-const var2721!2 (Array Int var468))
(define-const var336 var647 (loByteVec/1847772117 var67)) ; Statement: $r24 = r9.<org.javacc.parser.NfaState: java.util.Vector loByteVec> 
 ; Statement: if $r24 == null goto $r93 = newarray (java.lang.Object)[1] 
(assert (= var336 null-var647)) ; Cond: $r24 == null 
(define-const var598 (Array Int var468) arr-var468-init) ; Statement: $r93 = newarray (java.lang.Object)[1] 
(declare-const var598!1 (Array Int var468))
(assert (not (= var598!1 null-__Array__Int__var468__)))
(assert (= (select var598!1 0) (cast-from-String-to-var468 "      default :"))) ; Statement: $r93[0] = "      default :" 
(assert true)
;(assert (genCodeLine/787715242 var1876!4 var598!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r93) 

(declare-const var1876!5 var3040)
(declare-const var598!2 (Array Int var468))
(define-const var764 (Array Int Int) (nonAsciiMoveIndices/1847772117 var67)) ; Statement: $r94 = r9.<org.javacc.parser.NfaState: int[] nonAsciiMoveIndices> 
 ; Statement: if $r94 == null goto $r95 = newarray (java.lang.Object)[1] 
(assert (= var764 null-__Array__Int__Int__)) ; Cond: $r94 == null 
(define-const var2289 (Array Int var468) arr-var468-init) ; Statement: $r95 = newarray (java.lang.Object)[1] 
(declare-const var2289!1 (Array Int var468))
(assert (not (= var2289!1 null-__Array__Int__var468__)))
(assert (= (select var2289!1 0) (cast-from-String-to-var468 "         return false;"))) ; Statement: $r95[0] = "         return false;" 
(assert true)
;(assert (genCodeLine/787715242 var1876!5 var2289!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r95) 

(declare-const var1876!6 var3040)
(declare-const var2289!2 (Array Int var468))
(define-const var1338 (Array Int var468) arr-var468-init) ; Statement: $r96 = newarray (java.lang.Object)[1] 
(declare-const var1338!1 (Array Int var468))
(assert (not (= var1338!1 null-__Array__Int__var468__)))
(assert (= (select var1338!1 0) (cast-from-String-to-var468 "   }"))) ; Statement: $r96[0] = "   }" 
(assert true)
;(assert (genCodeLine/787715242 var1876!6 var1338!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r96) 

(declare-const var1876!7 var3040)
(declare-const var1338!2 (Array Int var468))
(define-const var3458 (Array Int var468) arr-var468-init) ; Statement: $r97 = newarray (java.lang.Object)[1] 
(declare-const var3458!1 (Array Int var468))
(assert (not (= var3458!1 null-__Array__Int__var468__)))
(assert (= (select var3458!1 0) (cast-from-String-to-var468 "}"))) ; Statement: $r97[0] = "}" 
(assert true)
;(assert (genCodeLine/787715242 var1876!7 var3458!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r97) 

(declare-const var1876!8 var3040)
(declare-const var3458!2 (Array Int var468))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), arr-var468-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1938_getBooleanType/-2111917935=([], java.lang.String), nonAsciiMethod/1847772117=([org.javacc.parser.NfaState], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var1938_getLongType/-387263599=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var468=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), loByteVec/1847772117=([org.javacc.parser.NfaState], java.util.Vector), nonAsciiMoveIndices/1847772117=([org.javacc.parser.NfaState], int[])}
; {var978=org.javacc.parser.NfaState, var67=r9, var3040=org.javacc.parser.CodeGenerator, var1876=r0, var2701=$z0, var468=java.lang.Object, var496=$r78, var3529=$r98, var1472=$r81, var1938=org.javacc.parser.Options, var2747=$r80, var3331=$r82, var474=$r83, var3384=$i17, var1553=$r84, var2590=$r86, var2868=$r85, var1614=$r87, var851=$r89, var3462=$r88, var2392=$r90, var2091=$r91, var2093=$r92, var1841=$r21, var1373=$r22, var2721=$r23, var647=java.util.Vector, var336=$r24, var598=$r93, var764=$r94, var2289=$r95, var1338=$r96, var3458=$r97}
; {org.javacc.parser.NfaState=var978, r9=var67, org.javacc.parser.CodeGenerator=var3040, r0=var1876, $z0=var2701, java.lang.Object=var468, $r78=var496, $r98=var3529, $r81=var1472, org.javacc.parser.Options=var1938, $r80=var2747, $r82=var3331, $r83=var474, $i17=var3384, $r84=var1553, $r86=var2590, $r85=var2868, $r87=var1614, $r89=var851, $r88=var3462, $r90=var2392, $r91=var2091, $r92=var2093, $r21=var1841, $r22=var1373, $r23=var2721, java.util.Vector=var647, $r24=var336, $r93=var598, $r94=var764, $r95=var2289, $r96=var1338, $r97=var3458}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.javacc.parser.NfaState;	r0 := @parameter0: org.javacc.parser.CodeGenerator;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto $r99 = new java.lang.StringBuilder;	$r78 = newarray (java.lang.Object)[1];	$r98 = new java.lang.StringBuilder;	specialinvoke $r98.<java.lang.StringBuilder: void <init>()>();	$r81 = virtualinvoke $r98.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("private static final ");	$r80 = staticinvoke <org.javacc.parser.Options: java.lang.String getBooleanType()>();	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80);	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" jjCanMove_");	$i17 = r9.<org.javacc.parser.NfaState: int nonAsciiMethod>;	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i17);	$r86 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(int hiByte, int i1, int i2, ");	$r85 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r87 = virtualinvoke $r86.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r85);	$r89 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l1, ");	$r88 = staticinvoke <org.javacc.parser.Options: java.lang.String getLongType()>();	$r90 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r88);	$r91 = virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" l2)");	$r92 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.String toString()>();	$r78[0] = $r92;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r78);	goto [?= $r21 = newarray (java.lang.Object)[1]];	$r21 = newarray (java.lang.Object)[1];	$r21[0] = "{";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r21);	$r22 = newarray (java.lang.Object)[1];	$r22[0] = "   switch(hiByte)";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r22);	$r23 = newarray (java.lang.Object)[1];	$r23[0] = "   {";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r23);	$r24 = r9.<org.javacc.parser.NfaState: java.util.Vector loByteVec>;	if $r24 == null goto $r93 = newarray (java.lang.Object)[1];	$r93 = newarray (java.lang.Object)[1];	$r93[0] = "      default :";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r93);	$r94 = r9.<org.javacc.parser.NfaState: int[] nonAsciiMoveIndices>;	if $r94 == null goto $r95 = newarray (java.lang.Object)[1];	$r95 = newarray (java.lang.Object)[1];	$r95[0] = "         return false;";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r95);	$r96 = newarray (java.lang.Object)[1];	$r96[0] = "   }";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r96);	$r97 = newarray (java.lang.Object)[1];	$r97[0] = "}";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r97);	return
;block_num 5