(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3956 0)
(declare-sort var2586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3956-init () var3956)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var3956 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var2586 var2586)
(declare-const var2367 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2367 null-__Array__Int__Int__)))
(declare-const var2869 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2869 null-Int)))
(declare-const var755 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var755 null-Int)))
(define-const var605 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3921 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2565 Bool (ite (= 1 0) true false)) ; Statement: z10 = 0 
(define-const var2887 Bool (ite (= 1 0) true false)) ; Statement: z9 = 0 
(define-const var3106 Int (+ var2869 var755)) ; Statement: i2 = i0 + i1 
 ; Statement: if i1 != 0 goto i20 = i0 
(assert (not (not (= var755 0)))) ; Negate: Cond: i1 != 0  
(define-const var3792 var3956 var3956-init) ; Statement: $r13 = new java.lang.NumberFormatException 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2603 var2586) ; Statement: $r4 := @caughtexception 
(assert (not (= var2603 null-var2586)))
(assert true) ; Non Conditional
(define-const var2818 var3956 var3956-init) ; Statement: $r18 = new java.lang.NumberFormatException 
(define-const var1328 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1328)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1328!1 String)
(assert (= var1328!1 ""))
(assert true)
(define-const var3591 String (append/672562846 var1328!1 "For input string: \u0022")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"") 
(declare-const var1328!2 String)
(assert (= var1328!2 (str.++ var1328!1 "For input string: \u0022")))
(define-const var2271 String String-init) ; Statement: $r17 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var2271 var2367 var2869 var755)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, i1) 

(declare-const var2271!1 String)
(declare-const var2367!1 (Array Int Int))
(declare-const var2869!1 Int)
(declare-const var755!1 Int)
(assert true)
(define-const var1307 String (append/672562846 var3591 var2271!1)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3591!1 String)
(assert (= var3591!1 (str.++ var3591 var2271!1)))
(assert true)
(define-const var434 String (append/672562846 var1307 "\u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1307!1 String)
(assert (= var1307!1 (str.++ var1307 "\u0022")))
(assert true)
(define-const var3269 String (toString/-2075883882 var434)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2818 var3269)) ; Statement: specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12) 

(declare-const var2818!1 var3956)
(declare-const var3269!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3956-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-1380519146=([java.lang.String, byte[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var2367=r0, var2869=i0, var755=i1, var605=z1, var3921=z2, var2565=z10, var2887=z9, var3106=i2, var3956=java.lang.NumberFormatException, var3792=$r13, var2586=java.lang.StringIndexOutOfBoundsException, var2603=$r4, var2818=$r18, var1328=$r16, var3591=$r8, var2271=$r17, var1307=$r10, var434=$r11, var3269=$r12}
; {r0=var2367, i0=var2869, i1=var755, z1=var605, z2=var3921, z10=var2565, z9=var2887, i2=var3106, java.lang.NumberFormatException=var3956, $r13=var3792, java.lang.StringIndexOutOfBoundsException=var2586, $r4=var2603, $r18=var2818, $r16=var1328, $r8=var3591, $r17=var2271, $r10=var1307, $r11=var434, $r12=var3269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	z1 = 0;	z2 = 0;	z10 = 0;	z9 = 0;	i2 = i0 + i1;	if i1 != 0 goto i20 = i0;	$r13 = new java.lang.NumberFormatException;	$r4 := @caughtexception;	$r18 = new java.lang.NumberFormatException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"");	$r17 = new java.lang.String;	specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12);	throw $r18
;block_num 4