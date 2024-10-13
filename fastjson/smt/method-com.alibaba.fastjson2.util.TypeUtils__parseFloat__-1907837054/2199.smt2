(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1824 0)
(declare-sort var3231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1824-init () var1824)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1824 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var3231 var3231)
(declare-const var1235 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var1235 null-__Array__Int__Int__)))
(declare-const var2734 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2734 null-Int)))
(declare-const var1812 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1812 null-Int)))
(define-const var2644 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1405 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var3431 Bool (ite (= 1 0) true false)) ; Statement: z12 = 0 
(define-const var547 Bool (ite (= 1 0) true false)) ; Statement: z11 = 0 
(define-const var3504 Int (+ var2734 var1812)) ; Statement: i2 = i0 + i1 
 ; Statement: if i1 != 0 goto i18 = i0 
(assert (not (not (= var1812 0)))) ; Negate: Cond: i1 != 0  
(define-const var909 var1824 var1824-init) ; Statement: $r13 = new java.lang.NumberFormatException 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var358 var3231) ; Statement: $r4 := @caughtexception 
(assert (not (= var358 null-var3231)))
(assert true) ; Non Conditional
(define-const var3013 var1824 var1824-init) ; Statement: $r18 = new java.lang.NumberFormatException 
(define-const var2733 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2733)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2733!1 String)
(assert (= var2733!1 ""))
(assert true)
(define-const var1597 String (append/672562846 var2733!1 "For input string: \u0022")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"") 
(declare-const var2733!2 String)
(assert (= var2733!2 (str.++ var2733!1 "For input string: \u0022")))
(define-const var2539 String String-init) ; Statement: $r17 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2539 var1235 var2734 var1812)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>(r0, i0, i1) 

(declare-const var2539!1 String)
(declare-const var1235!1 (Array Int Int))
(declare-const var2734!1 Int)
(declare-const var1812!1 Int)
(assert true)
(define-const var3841 String (append/672562846 var1597 var2539!1)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1597!1 String)
(assert (= var1597!1 (str.++ var1597 var2539!1)))
(assert true)
(define-const var3109 String (append/672562846 var3841 "\u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3841!1 String)
(assert (= var3841!1 (str.++ var3841 "\u0022")))
(assert true)
(define-const var1618 String (toString/-2075883882 var3109)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var3013 var1618)) ; Statement: specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12) 

(declare-const var3013!1 var1824)
(declare-const var1618!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1824-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-253222812=([java.lang.String, char[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var1235=r0, var2734=i0, var1812=i1, var2644=z1, var1405=z2, var3431=z12, var547=z11, var3504=i2, var1824=java.lang.NumberFormatException, var909=$r13, var3231=java.lang.StringIndexOutOfBoundsException, var358=$r4, var3013=$r18, var2733=$r16, var1597=$r8, var2539=$r17, var3841=$r10, var3109=$r11, var1618=$r12}
; {r0=var1235, i0=var2734, i1=var1812, z1=var2644, z2=var1405, z12=var3431, z11=var547, i2=var3504, java.lang.NumberFormatException=var1824, $r13=var909, java.lang.StringIndexOutOfBoundsException=var3231, $r4=var358, $r18=var3013, $r16=var2733, $r8=var1597, $r17=var2539, $r10=var3841, $r11=var3109, $r12=var1618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	z1 = 0;	z2 = 0;	z12 = 0;	z11 = 0;	i2 = i0 + i1;	if i1 != 0 goto i18 = i0;	$r13 = new java.lang.NumberFormatException;	$r4 := @caughtexception;	$r18 = new java.lang.NumberFormatException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"");	$r17 = new java.lang.String;	specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>(r0, i0, i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12);	throw $r18
;block_num 4