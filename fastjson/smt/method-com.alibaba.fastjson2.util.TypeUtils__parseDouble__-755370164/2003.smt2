(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var214 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var214-init () var214)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var214 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var233 var233)
(declare-const var237 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var237 null-__Array__Int__Int__)))
(declare-const var2659 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2659 null-Int)))
(declare-const var3343 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3343 null-Int)))
(define-const var3663 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1574 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1901 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2582 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(define-const var1318 Int (+ var2659 var3343)) ; Statement: i2 = i0 + i1 
 ; Statement: if i1 != 0 goto i20 = i0 
(assert (not (not (= var3343 0)))) ; Negate: Cond: i1 != 0  
(define-const var169 var214 var214-init) ; Statement: $r13 = new java.lang.NumberFormatException 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2995 var233) ; Statement: $r4 := @caughtexception 
(assert (not (= var2995 null-var233)))
(assert true) ; Non Conditional
(define-const var2474 var214 var214-init) ; Statement: $r18 = new java.lang.NumberFormatException 
(define-const var2269 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2269)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2269!1 String)
(assert (= var2269!1 ""))
(assert true)
(define-const var563 String (append/672562846 var2269!1 "For input string: \u0022")) ; Statement: $r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"") 
(declare-const var2269!2 String)
(assert (= var2269!2 (str.++ var2269!1 "For input string: \u0022")))
(define-const var644 String String-init) ; Statement: $r17 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var644 var237 var2659 var3343)) ; Statement: specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, i1) 

(declare-const var644!1 String)
(declare-const var237!1 (Array Int Int))
(declare-const var2659!1 Int)
(declare-const var3343!1 Int)
(assert true)
(define-const var539 String (append/672562846 var563 var644!1)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var563!1 String)
(assert (= var563!1 (str.++ var563 var644!1)))
(assert true)
(define-const var754 String (append/672562846 var539 "\u0022")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var539!1 String)
(assert (= var539!1 (str.++ var539 "\u0022")))
(assert true)
(define-const var302 String (toString/-2075883882 var754)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2474 var302)) ; Statement: specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12) 

(declare-const var2474!1 var214)
(declare-const var302!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var214-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-1380519146=([java.lang.String, byte[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var237=r0, var2659=i0, var3343=i1, var3663=z1, var1574=z2, var1901=z7, var2582=z6, var1318=i2, var214=java.lang.NumberFormatException, var169=$r13, var233=java.lang.StringIndexOutOfBoundsException, var2995=$r4, var2474=$r18, var2269=$r16, var563=$r8, var644=$r17, var539=$r10, var754=$r11, var302=$r12}
; {r0=var237, i0=var2659, i1=var3343, z1=var3663, z2=var1574, z7=var1901, z6=var2582, i2=var1318, java.lang.NumberFormatException=var214, $r13=var169, java.lang.StringIndexOutOfBoundsException=var233, $r4=var2995, $r18=var2474, $r16=var2269, $r8=var563, $r17=var644, $r10=var539, $r11=var754, $r12=var302}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	z1 = 0;	z2 = 0;	z7 = 0;	z6 = 0;	i2 = i0 + i1;	if i1 != 0 goto i20 = i0;	$r13 = new java.lang.NumberFormatException;	$r4 := @caughtexception;	$r18 = new java.lang.NumberFormatException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("For input string: \"");	$r17 = new java.lang.String;	specialinvoke $r17.<java.lang.String: void <init>(byte[],int,int)>(r0, i0, i1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12);	throw $r18
;block_num 4