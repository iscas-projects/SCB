(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1928 0)
(declare-sort var1169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1928-init () var1928)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1928 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1169 var1169)
(declare-const var892 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var892 null-__Array__Int__Int__)))
(declare-const var623 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var623 null-Int)))
(declare-const var1772 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1772 null-Int)))
(define-const var2214 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1744 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1029 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3442 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1456 Int (+ var623 var1772)) ; Statement: i2 = i0 + i1 
 ; Statement: if i1 != 0 goto i18 = i0 
(assert (not (not (= var1772 0)))) ; Negate: Cond: i1 != 0  
(define-const var2329 var1928 var1928-init) ; Statement: $r13 = new java.lang.NumberFormatException 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2899 var1169) ; Statement: $r4 := @caughtexception 
(assert (not (= var2899 null-var1169)))
(assert true) ; Non Conditional
(define-const var2284 var1928 var1928-init) ; Statement: $r18 = new java.lang.NumberFormatException 
(define-const var2092 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2092)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2092!1 String)
(assert (= var2092!1 ""))
(assert true)
(define-const var3839 String (append/672562846 var2092!1 "For input string: \u0022")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"") 
(declare-const var2092!2 String)
(assert (= var2092!2 (str.++ var2092!1 "For input string: \u0022")))
(define-const var2797 String String-init) ; Statement: $r17 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2797 var892 var623 var1772)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>(r0, i0, i1) 

(declare-const var2797!1 String)
(declare-const var892!1 (Array Int Int))
(declare-const var623!1 Int)
(declare-const var1772!1 Int)
(assert true)
(define-const var3732 String (append/672562846 var3839 var2797!1)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3839!1 String)
(assert (= var3839!1 (str.++ var3839 var2797!1)))
(assert true)
(define-const var3781 String (append/672562846 var3732 "\u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3732!1 String)
(assert (= var3732!1 (str.++ var3732 "\u0022")))
(assert true)
(define-const var2507 String (toString/-2075883882 var3781)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2284 var2507)) ; Statement: specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12) 

(declare-const var2284!1 var1928)
(declare-const var2507!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var1928-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-253222812=([java.lang.String, char[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var892=r0, var623=i0, var1772=i1, var2214=z1, var1744=z2, var1029=z7, var3442=z6, var1456=i2, var1928=java.lang.NumberFormatException, var2329=$r13, var1169=java.lang.StringIndexOutOfBoundsException, var2899=$r4, var2284=$r18, var2092=$r16, var3839=$r8, var2797=$r17, var3732=$r10, var3781=$r11, var2507=$r12}
; {r0=var892, i0=var623, i1=var1772, z1=var2214, z2=var1744, z7=var1029, z6=var3442, i2=var1456, java.lang.NumberFormatException=var1928, $r13=var2329, java.lang.StringIndexOutOfBoundsException=var1169, $r4=var2899, $r18=var2284, $r16=var2092, $r8=var3839, $r17=var2797, $r10=var3732, $r11=var3781, $r12=var2507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	z1 = 0;	z2 = 0;	z7 = 0;	z6 = 0;	i2 = i0 + i1;	if i1 != 0 goto i18 = i0;	$r13 = new java.lang.NumberFormatException;	$r4 := @caughtexception;	$r18 = new java.lang.NumberFormatException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"");	$r17 = new java.lang.String;	specialinvoke $r17.<java.lang.String: void <init>(char[],int,int)>(r0, i0, i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12);	throw $r18
;block_num 4