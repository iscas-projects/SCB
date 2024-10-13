(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3979 0)
(declare-sort var3946 0)
(declare-sort var303 0)
(declare-sort var1944 0)
(declare-sort var2164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3979-init () var3979)
(declare-fun <init>/1054507276 (var3979 Int) void)
(declare-fun cast-from-var3979-to-var3946 (var3979) var3946)
(declare-fun var303-init () var303)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/238274446 (var303 (Array Int Int)) void)
(declare-fun cast-from-var303-to-var3946 (var303) var3946)
(declare-fun var1944-init () var1944)
(declare-fun <init>/-1103458966 (var1944) void)
(declare-fun cast-from-var1944-to-var3946 (var1944) var3946)
(declare-fun var2164-init () var2164)
(declare-fun <init>/1800374827 (var2164) void)
(declare-fun cast-from-var2164-to-var3946 (var2164) var3946)
(define-const var1590 var3979 var3979-init) ; Statement: $r0 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher 
(assert true)
;(assert (<init>/1054507276 var1590 44)) ; Statement: specialinvoke $r0.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(44) 

(declare-const var1590!1 var3979)
(declare-const var2293 Int)
(define-const var2200 var3946 (cast-from-var3979-to-var3946 var1590!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher COMMA_MATCHER> = $r0 
(define-const var1129 var3979 var3979-init) ; Statement: $r1 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher 
(assert true)
;(assert (<init>/1054507276 var1129 9)) ; Statement: specialinvoke $r1.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(9) 

(declare-const var1129!1 var3979)
(declare-const var831 Int)
(define-const var41 var3946 (cast-from-var3979-to-var3946 var1129!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TAB_MATCHER> = $r1 
(define-const var778 var3979 var3979-init) ; Statement: $r2 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher 
(assert true)
;(assert (<init>/1054507276 var778 32)) ; Statement: specialinvoke $r2.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(32) 

(declare-const var778!1 var3979)
(declare-const var1751 Int)
(define-const var1263 var3946 (cast-from-var3979-to-var3946 var778!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPACE_MATCHER> = $r2 
(define-const var2578 var303 var303-init) ; Statement: $r3 = new org.apache.commons.lang3.text.StrMatcher$CharSetMatcher 
(define-const var1621 String " \t\n\r\f") ; Statement: $r4 = " \t\n\r\f" 
(assert true)
(define-const var2027 (Array Int Int) (toCharArray/415275702 var1621)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/238274446 var2578 var2027)) ; Statement: specialinvoke $r3.<org.apache.commons.lang3.text.StrMatcher$CharSetMatcher: void <init>(char[])>($r5) 

(declare-const var2578!1 var303)
(declare-const var2027!1 (Array Int Int))
(define-const var1919 var3946 (cast-from-var303-to-var3946 var2578!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPLIT_MATCHER> = $r3 
(define-const var121 var1944 var1944-init) ; Statement: $r6 = new org.apache.commons.lang3.text.StrMatcher$TrimMatcher 
(assert true)
;(assert (<init>/-1103458966 var121)) ; Statement: specialinvoke $r6.<org.apache.commons.lang3.text.StrMatcher$TrimMatcher: void <init>()>() 

(declare-const var121!1 var1944)
(define-const var1814 var3946 (cast-from-var1944-to-var3946 var121!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TRIM_MATCHER> = $r6 
(define-const var2526 var3979 var3979-init) ; Statement: $r7 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher 
(assert true)
;(assert (<init>/1054507276 var2526 39)) ; Statement: specialinvoke $r7.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(39) 

(declare-const var2526!1 var3979)
(declare-const var3385 Int)
(define-const var757 var3946 (cast-from-var3979-to-var3946 var2526!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SINGLE_QUOTE_MATCHER> = $r7 
(define-const var783 var3979 var3979-init) ; Statement: $r8 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher 
(assert true)
;(assert (<init>/1054507276 var783 34)) ; Statement: specialinvoke $r8.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(34) 

(declare-const var783!1 var3979)
(declare-const var3528 Int)
(define-const var3642 var3946 (cast-from-var3979-to-var3946 var783!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher DOUBLE_QUOTE_MATCHER> = $r8 
(define-const var527 var303 var303-init) ; Statement: $r9 = new org.apache.commons.lang3.text.StrMatcher$CharSetMatcher 
(define-const var2978 String "\u0027\u0022") ; Statement: $r10 = "\'\"" 
(assert true)
(define-const var3508 (Array Int Int) (toCharArray/415275702 var2978)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/238274446 var527 var3508)) ; Statement: specialinvoke $r9.<org.apache.commons.lang3.text.StrMatcher$CharSetMatcher: void <init>(char[])>($r11) 

(declare-const var527!1 var303)
(declare-const var3508!1 (Array Int Int))
(define-const var1770 var3946 (cast-from-var303-to-var3946 var527!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher QUOTE_MATCHER> = $r9 
(define-const var3952 var2164 var2164-init) ; Statement: $r12 = new org.apache.commons.lang3.text.StrMatcher$NoMatcher 
(assert true)
;(assert (<init>/1800374827 var3952)) ; Statement: specialinvoke $r12.<org.apache.commons.lang3.text.StrMatcher$NoMatcher: void <init>()>() 

(declare-const var3952!1 var2164)
(define-const var2456 var3946 (cast-from-var2164-to-var3946 var3952!1)) ; Statement: <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher NONE_MATCHER> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3979-init=([], org.apache.commons.lang3.text.StrMatcher$CharMatcher), <init>/1054507276=([org.apache.commons.lang3.text.StrMatcher$CharMatcher, char], void), cast-from-var3979-to-var3946=([org.apache.commons.lang3.text.StrMatcher$CharMatcher], org.apache.commons.lang3.text.StrMatcher), var303-init=([], org.apache.commons.lang3.text.StrMatcher$CharSetMatcher), toCharArray/415275702=([java.lang.String], char[]), <init>/238274446=([org.apache.commons.lang3.text.StrMatcher$CharSetMatcher, char[]], void), cast-from-var303-to-var3946=([org.apache.commons.lang3.text.StrMatcher$CharSetMatcher], org.apache.commons.lang3.text.StrMatcher), var1944-init=([], org.apache.commons.lang3.text.StrMatcher$TrimMatcher), <init>/-1103458966=([org.apache.commons.lang3.text.StrMatcher$TrimMatcher], void), cast-from-var1944-to-var3946=([org.apache.commons.lang3.text.StrMatcher$TrimMatcher], org.apache.commons.lang3.text.StrMatcher), var2164-init=([], org.apache.commons.lang3.text.StrMatcher$NoMatcher), <init>/1800374827=([org.apache.commons.lang3.text.StrMatcher$NoMatcher], void), cast-from-var2164-to-var3946=([org.apache.commons.lang3.text.StrMatcher$NoMatcher], org.apache.commons.lang3.text.StrMatcher)}
; {var3979=org.apache.commons.lang3.text.StrMatcher$CharMatcher, var1590=$r0, var2293=44, var3946=org.apache.commons.lang3.text.StrMatcher, var2200=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher COMMA_MATCHER>, var1129=$r1, var831=9, var41=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TAB_MATCHER>, var778=$r2, var1751=32, var1263=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPACE_MATCHER>, var303=org.apache.commons.lang3.text.StrMatcher$CharSetMatcher, var2578=$r3, var1621=$r4, var2027=$r5, var1919=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPLIT_MATCHER>, var1944=org.apache.commons.lang3.text.StrMatcher$TrimMatcher, var121=$r6, var1814=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TRIM_MATCHER>, var2526=$r7, var3385=39, var757=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SINGLE_QUOTE_MATCHER>, var783=$r8, var3528=34, var3642=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher DOUBLE_QUOTE_MATCHER>, var527=$r9, var2978=$r10, var3508=$r11, var1770=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher QUOTE_MATCHER>, var2164=org.apache.commons.lang3.text.StrMatcher$NoMatcher, var3952=$r12, var2456=<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher NONE_MATCHER>}
; {org.apache.commons.lang3.text.StrMatcher$CharMatcher=var3979, $r0=var1590, 44=var2293, org.apache.commons.lang3.text.StrMatcher=var3946, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher COMMA_MATCHER>=var2200, $r1=var1129, 9=var831, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TAB_MATCHER>=var41, $r2=var778, 32=var1751, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPACE_MATCHER>=var1263, org.apache.commons.lang3.text.StrMatcher$CharSetMatcher=var303, $r3=var2578, $r4=var1621, $r5=var2027, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPLIT_MATCHER>=var1919, org.apache.commons.lang3.text.StrMatcher$TrimMatcher=var1944, $r6=var121, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TRIM_MATCHER>=var1814, $r7=var2526, 39=var3385, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SINGLE_QUOTE_MATCHER>=var757, $r8=var783, 34=var3528, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher DOUBLE_QUOTE_MATCHER>=var3642, $r9=var527, $r10=var2978, $r11=var3508, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher QUOTE_MATCHER>=var1770, org.apache.commons.lang3.text.StrMatcher$NoMatcher=var2164, $r12=var3952, <org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher NONE_MATCHER>=var2456}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts $r0 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher;	specialinvoke $r0.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(44);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher COMMA_MATCHER> = $r0;	$r1 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher;	specialinvoke $r1.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(9);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TAB_MATCHER> = $r1;	$r2 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher;	specialinvoke $r2.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(32);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPACE_MATCHER> = $r2;	$r3 = new org.apache.commons.lang3.text.StrMatcher$CharSetMatcher;	$r4 = " \t\n\r\f";	$r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	specialinvoke $r3.<org.apache.commons.lang3.text.StrMatcher$CharSetMatcher: void <init>(char[])>($r5);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SPLIT_MATCHER> = $r3;	$r6 = new org.apache.commons.lang3.text.StrMatcher$TrimMatcher;	specialinvoke $r6.<org.apache.commons.lang3.text.StrMatcher$TrimMatcher: void <init>()>();	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher TRIM_MATCHER> = $r6;	$r7 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher;	specialinvoke $r7.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(39);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher SINGLE_QUOTE_MATCHER> = $r7;	$r8 = new org.apache.commons.lang3.text.StrMatcher$CharMatcher;	specialinvoke $r8.<org.apache.commons.lang3.text.StrMatcher$CharMatcher: void <init>(char)>(34);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher DOUBLE_QUOTE_MATCHER> = $r8;	$r9 = new org.apache.commons.lang3.text.StrMatcher$CharSetMatcher;	$r10 = "\'\"";	$r11 = virtualinvoke $r10.<java.lang.String: char[] toCharArray()>();	specialinvoke $r9.<org.apache.commons.lang3.text.StrMatcher$CharSetMatcher: void <init>(char[])>($r11);	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher QUOTE_MATCHER> = $r9;	$r12 = new org.apache.commons.lang3.text.StrMatcher$NoMatcher;	specialinvoke $r12.<org.apache.commons.lang3.text.StrMatcher$NoMatcher: void <init>()>();	<org.apache.commons.lang3.text.StrMatcher: org.apache.commons.lang3.text.StrMatcher NONE_MATCHER> = $r12;	return
;block_num 1