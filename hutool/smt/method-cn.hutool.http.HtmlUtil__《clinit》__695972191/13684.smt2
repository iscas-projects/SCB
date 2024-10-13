(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-const var2300-TEXT (Array Int (Array Int Int)))
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(define-const var1174 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: $r0 = newarray (char[])[256] 
(define-const var3596 (Array Int (Array Int Int)) var1174) ; Statement: <cn.hutool.http.HtmlUtil: char[][] TEXT> = $r0 
(define-const var2111 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= 256 goto $r2 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(assert (>= var2111 256)) ; Cond: i1 >= 256 
(define-const var3663 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r2 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var3972 String "&#039;") ; Statement: $r1 = "&#039;" 
(assert true)
(define-const var3821 (Array Int Int) (toCharArray/415275702 var3972)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var3663!1 (Array Int (Array Int Int)))
(assert (not (= var3663!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3663!1 39) var3821)) ; Statement: $r2[39] = $r3 
(define-const var1492 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r5 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var2845 String "&quot;") ; Statement: $r4 = "&quot;" 
(assert true)
(define-const var1289 (Array Int Int) (toCharArray/415275702 var2845)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(declare-const var1492!1 (Array Int (Array Int Int)))
(assert (not (= var1492!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1492!1 34) var1289)) ; Statement: $r5[34] = $r6 
(define-const var1409 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r8 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var2036 String "&amp;") ; Statement: $r7 = "&amp;" 
(assert true)
(define-const var3346 (Array Int Int) (toCharArray/415275702 var2036)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.String: char[] toCharArray()>() 
(declare-const var1409!1 (Array Int (Array Int Int)))
(assert (not (= var1409!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1409!1 38) var3346)) ; Statement: $r8[38] = $r9 
(define-const var1919 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r11 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var3594 String "&lt;") ; Statement: $r10 = "&lt;" 
(assert true)
(define-const var3097 (Array Int Int) (toCharArray/415275702 var3594)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>() 
(declare-const var1919!1 (Array Int (Array Int Int)))
(assert (not (= var1919!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1919!1 60) var3097)) ; Statement: $r11[60] = $r12 
(define-const var1060 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r14 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var3219 String "&gt;") ; Statement: $r13 = "&gt;" 
(assert true)
(define-const var3149 (Array Int Int) (toCharArray/415275702 var3219)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.String: char[] toCharArray()>() 
(declare-const var1060!1 (Array Int (Array Int Int)))
(assert (not (= var1060!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1060!1 62) var3149)) ; Statement: $r14[62] = $r15 
(define-const var1353 (Array Int (Array Int Int)) var2300-TEXT) ; Statement: $r17 = <cn.hutool.http.HtmlUtil: char[][] TEXT> 
(define-const var3637 String "&nbsp;") ; Statement: $r16 = "&nbsp;" 
(assert true)
(define-const var2865 (Array Int Int) (toCharArray/415275702 var3637)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.String: char[] toCharArray()>() 
(declare-const var1353!1 (Array Int (Array Int Int)))
(assert (not (= var1353!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var1353!1 160) var2865)) ; Statement: $r17[160] = $r18 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], char[][]), toCharArray/415275702=([java.lang.String], char[])}
; {var1174=$r0, var3596=<cn.hutool.http.HtmlUtil: char[][] TEXT>, var2111=i1, var2300=cn.hutool.http.HtmlUtil, var3663=$r2, var3972=$r1, var3821=$r3, var1492=$r5, var2845=$r4, var1289=$r6, var1409=$r8, var2036=$r7, var3346=$r9, var1919=$r11, var3594=$r10, var3097=$r12, var1060=$r14, var3219=$r13, var3149=$r15, var1353=$r17, var3637=$r16, var2865=$r18}
; {$r0=var1174, <cn.hutool.http.HtmlUtil: char[][] TEXT>=var3596, i1=var2111, cn.hutool.http.HtmlUtil=var2300, $r2=var3663, $r1=var3972, $r3=var3821, $r5=var1492, $r4=var2845, $r6=var1289, $r8=var1409, $r7=var2036, $r9=var3346, $r11=var1919, $r10=var3594, $r12=var3097, $r14=var1060, $r13=var3219, $r15=var3149, $r17=var1353, $r16=var3637, $r18=var2865}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 6}
;stmts $r0 = newarray (char[])[256];	<cn.hutool.http.HtmlUtil: char[][] TEXT> = $r0;	i1 = 0;	if i1 >= 256 goto $r2 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r2 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r1 = "&#039;";	$r3 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	$r2[39] = $r3;	$r5 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r4 = "&quot;";	$r6 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	$r5[34] = $r6;	$r8 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r7 = "&amp;";	$r9 = virtualinvoke $r7.<java.lang.String: char[] toCharArray()>();	$r8[38] = $r9;	$r11 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r10 = "&lt;";	$r12 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>();	$r11[60] = $r12;	$r14 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r13 = "&gt;";	$r15 = virtualinvoke $r13.<java.lang.String: char[] toCharArray()>();	$r14[62] = $r15;	$r17 = <cn.hutool.http.HtmlUtil: char[][] TEXT>;	$r16 = "&nbsp;";	$r18 = virtualinvoke $r16.<java.lang.String: char[] toCharArray()>();	$r17[160] = $r18;	return
;block_num 3