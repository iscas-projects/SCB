(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const var2182-REPLACEMENT_CHARS (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(define-const var1158 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r0 = newarray (char[])[256] 
(define-const var3966 (Array Int (Array Int Int)) var1158) ; Statement: <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> = $r0 
(define-const var2025 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= 32 goto i14 = 127 
(assert (>= var2025 32)) ; Cond: i12 >= 32 
(define-const var95 Int 127) ; Statement: i14 = 127 
(assert true) ; Non Conditional
 ; Statement: if i14 >= 256 goto $r2 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(assert (>= var95 256)) ; Cond: i14 >= 256 
(define-const var2876 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r2 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var2537 String "\u005cx27") ; Statement: $r1 = "\\x27" 
(assert true)
(define-const var1123 (Array Int Int) (toCharArray/415275702 var2537)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var2876!1 (Array Int (Array Int Int)))
(assert (not (= var2876!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2876!1 39) var1123)) ; Statement: $r2[39] = $r3 
(define-const var1341 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r5 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var450 String "\u005cx22") ; Statement: $r4 = "\\x22" 
(assert true)
(define-const var1890 (Array Int Int) (toCharArray/415275702 var450)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(declare-const var1341!1 (Array Int (Array Int Int)))
(assert (not (= var1341!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1341!1 34) var1890)) ; Statement: $r5[34] = $r6 
(define-const var730 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r8 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var104 String "\u005cx3c") ; Statement: $r7 = "\\x3c" 
(assert true)
(define-const var36 (Array Int Int) (toCharArray/415275702 var104)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.String: char[] toCharArray()>() 
(declare-const var730!1 (Array Int (Array Int Int)))
(assert (not (= var730!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var730!1 60) var36)) ; Statement: $r8[60] = $r9 
(define-const var3370 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r11 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var174 String "\u005cx3d") ; Statement: $r10 = "\\x3d" 
(assert true)
(define-const var2034 (Array Int Int) (toCharArray/415275702 var174)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>() 
(declare-const var3370!1 (Array Int (Array Int Int)))
(assert (not (= var3370!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3370!1 61) var2034)) ; Statement: $r11[61] = $r12 
(define-const var2639 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r14 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var178 String "\u005cx3e") ; Statement: $r13 = "\\x3e" 
(assert true)
(define-const var353 (Array Int Int) (toCharArray/415275702 var178)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: char[] toCharArray()>() 
(declare-const var2639!1 (Array Int (Array Int Int)))
(assert (not (= var2639!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2639!1 62) var353)) ; Statement: $r14[62] = $r15 
(define-const var1551 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r17 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var3539 String "\u005cx26") ; Statement: $r16 = "\\x26" 
(assert true)
(define-const var2360 (Array Int Int) (toCharArray/415275702 var3539)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.String: char[] toCharArray()>() 
(declare-const var1551!1 (Array Int (Array Int Int)))
(assert (not (= var1551!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1551!1 38) var2360)) ; Statement: $r17[38] = $r18 
(define-const var1075 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r20 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var1989 String "\u005cb") ; Statement: $r19 = "\\b" 
(assert true)
(define-const var2438 (Array Int Int) (toCharArray/415275702 var1989)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.String: char[] toCharArray()>() 
(declare-const var1075!1 (Array Int (Array Int Int)))
(assert (not (= var1075!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1075!1 8) var2438)) ; Statement: $r20[8] = $r21 
(define-const var2272 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r23 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var2593 String "\u005ct") ; Statement: $r22 = "\\t" 
(assert true)
(define-const var2821 (Array Int Int) (toCharArray/415275702 var2593)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>() 
(declare-const var2272!1 (Array Int (Array Int Int)))
(assert (not (= var2272!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2272!1 9) var2821)) ; Statement: $r23[9] = $r24 
(define-const var2736 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r26 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var854 String "\u005cn") ; Statement: $r25 = "\\n" 
(assert true)
(define-const var3541 (Array Int Int) (toCharArray/415275702 var854)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.String: char[] toCharArray()>() 
(declare-const var2736!1 (Array Int (Array Int Int)))
(assert (not (= var2736!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2736!1 10) var3541)) ; Statement: $r26[10] = $r27 
(define-const var2217 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r29 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var1440 String "\u005cf") ; Statement: $r28 = "\\f" 
(assert true)
(define-const var2790 (Array Int Int) (toCharArray/415275702 var1440)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.String: char[] toCharArray()>() 
(declare-const var2217!1 (Array Int (Array Int Int)))
(assert (not (= var2217!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2217!1 12) var2790)) ; Statement: $r29[12] = $r30 
(define-const var1457 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r32 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var3477 String "\u005cr") ; Statement: $r31 = "\\r" 
(assert true)
(define-const var2328 (Array Int Int) (toCharArray/415275702 var3477)) ; Statement: $r33 = virtualinvoke $r31.<java.lang.String: char[] toCharArray()>() 
(declare-const var1457!1 (Array Int (Array Int Int)))
(assert (not (= var1457!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1457!1 13) var2328)) ; Statement: $r32[13] = $r33 
(define-const var627 (Array Int (Array Int Int)) var2182-REPLACEMENT_CHARS) ; Statement: $r35 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> 
(define-const var1190 String "\u005c\u005c") ; Statement: $r34 = "\\\\" 
(assert true)
(define-const var466 (Array Int Int) (toCharArray/415275702 var1190)) ; Statement: $r36 = virtualinvoke $r34.<java.lang.String: char[] toCharArray()>() 
(declare-const var627!1 (Array Int (Array Int Int)))
(assert (not (= var627!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var627!1 92) var466)) ; Statement: $r35[92] = $r36 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], char[][]), toCharArray/415275702=([java.lang.String], char[])}
; {var1158=$r0, var3966=<com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>, var2025=i12, var95=i14, var2182=com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper, var2876=$r2, var2537=$r1, var1123=$r3, var1341=$r5, var450=$r4, var1890=$r6, var730=$r8, var104=$r7, var36=$r9, var3370=$r11, var174=$r10, var2034=$r12, var2639=$r14, var178=$r13, var353=$r15, var1551=$r17, var3539=$r16, var2360=$r18, var1075=$r20, var1989=$r19, var2438=$r21, var2272=$r23, var2593=$r22, var2821=$r24, var2736=$r26, var854=$r25, var3541=$r27, var2217=$r29, var1440=$r28, var2790=$r30, var1457=$r32, var3477=$r31, var2328=$r33, var627=$r35, var1190=$r34, var466=$r36}
; {$r0=var1158, <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>=var3966, i12=var2025, i14=var95, com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper=var2182, $r2=var2876, $r1=var2537, $r3=var1123, $r5=var1341, $r4=var450, $r6=var1890, $r8=var730, $r7=var104, $r9=var36, $r11=var3370, $r10=var174, $r12=var2034, $r14=var2639, $r13=var178, $r15=var353, $r17=var1551, $r16=var3539, $r18=var2360, $r20=var1075, $r19=var1989, $r21=var2438, $r23=var2272, $r22=var2593, $r24=var2821, $r26=var2736, $r25=var854, $r27=var3541, $r29=var2217, $r28=var1440, $r30=var2790, $r32=var1457, $r31=var3477, $r33=var2328, $r35=var627, $r34=var1190, $r36=var466}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 12}
;stmts $r0 = newarray (char[])[256];	<com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS> = $r0;	i12 = 0;	if i12 >= 32 goto i14 = 127;	i14 = 127;	if i14 >= 256 goto $r2 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r2 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r1 = "\\x27";	$r3 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	$r2[39] = $r3;	$r5 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r4 = "\\x22";	$r6 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	$r5[34] = $r6;	$r8 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r7 = "\\x3c";	$r9 = virtualinvoke $r7.<java.lang.String: char[] toCharArray()>();	$r8[60] = $r9;	$r11 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r10 = "\\x3d";	$r12 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>();	$r11[61] = $r12;	$r14 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r13 = "\\x3e";	$r15 = virtualinvoke $r13.<java.lang.String: char[] toCharArray()>();	$r14[62] = $r15;	$r17 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r16 = "\\x26";	$r18 = virtualinvoke $r16.<java.lang.String: char[] toCharArray()>();	$r17[38] = $r18;	$r20 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r19 = "\\b";	$r21 = virtualinvoke $r19.<java.lang.String: char[] toCharArray()>();	$r20[8] = $r21;	$r23 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r22 = "\\t";	$r24 = virtualinvoke $r22.<java.lang.String: char[] toCharArray()>();	$r23[9] = $r24;	$r26 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r25 = "\\n";	$r27 = virtualinvoke $r25.<java.lang.String: char[] toCharArray()>();	$r26[10] = $r27;	$r29 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r28 = "\\f";	$r30 = virtualinvoke $r28.<java.lang.String: char[] toCharArray()>();	$r29[12] = $r30;	$r32 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r31 = "\\r";	$r33 = virtualinvoke $r31.<java.lang.String: char[] toCharArray()>();	$r32[13] = $r33;	$r35 = <com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: char[][] REPLACEMENT_CHARS>;	$r34 = "\\\\";	$r36 = virtualinvoke $r34.<java.lang.String: char[] toCharArray()>();	$r35[92] = $r36;	return
;block_num 5