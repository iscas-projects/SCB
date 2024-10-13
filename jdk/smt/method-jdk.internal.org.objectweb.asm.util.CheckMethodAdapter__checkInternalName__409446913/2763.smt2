(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2432 0)
(declare-sort var2266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2266-init () var2266)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2266 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2266 var2266)
(declare-const var2615 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2615 null-String)))
(declare-const var3944 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3944 null-Int)))
(declare-const var1149 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1149 null-Int)))
(declare-const var2772 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var2772 null-String)))
(define-const var1872 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $i3 = i0 
(assert (not (= var1149 var1872))) ; Cond: i0 != $i9 
(define-const var430 Int var1149) ; Statement: $i3 = i0 
(assert true) ; Non Conditional
(define-const var1780 Int var430) ; Statement: i1 = $i3 
(define-const var2508 Int var3944) ; Statement: i4 = i2 
(assert true) ; Non Conditional
(define-const var830 Int (+ var2508 1)) ; Statement: $i5 = i4 + 1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var768 var2266) ; Statement: $r1 := @caughtexception 
(assert (not (= var768 null-var2266)))
(define-const var3648 var2266 var2266-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1760 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1760)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1760!1 String)
(assert (= var1760!1 ""))
(assert true)
(define-const var1407 String (append/672562846 var1760!1 "Invalid ")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var1760!2 String)
(assert (= var1760!2 (str.++ var1760!1 "Invalid ")))
(assert true)
(define-const var1519 String (append/672562846 var1407 var2772)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1407!1 String)
(assert (= var1407!1 (str.++ var1407 var2772)))
(assert true)
(define-const var2207 String (append/672562846 var1519 " (must be a fully qualified class name in internal form): ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a fully qualified class name in internal form): ") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 " (must be a fully qualified class name in internal form): ")))
(assert true)
(define-const var785 String (append/672562846 var2207 var2615)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2207!1 String)
(assert (= var2207!1 (str.++ var2207 var2615)))
(assert true)
(define-const var2334 String (toString/-2075883882 var785)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3648 var2334)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3648!1 var2266)
(declare-const var2334!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var2266-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2615=r0, var2432=null_type, var3944=i2, var1149=i0, var2772=r4, var1872=$i9, var430=$i3, var1780=i1, var2508=i4, var830=$i5, var2266=java.lang.IllegalArgumentException, var768=$r1, var3648=$r11, var1760=$r10, var1407=$r5, var1519=$r6, var2207=$r7, var785=$r8, var2334=$r9}
; {r0=var2615, null_type=var2432, i2=var3944, i0=var1149, r4=var2772, $i9=var1872, $i3=var430, i1=var1780, i4=var2508, $i5=var830, java.lang.IllegalArgumentException=var2266, $r1=var768, $r11=var3648, $r10=var1760, $r5=var1407, $r6=var1519, $r7=var2207, $r8=var785, $r9=var2334}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	i0 := @parameter2: int;	r4 := @parameter3: java.lang.String;	$i9 = (int) -1;	if i0 != $i9 goto $i3 = i0;	$i3 = i0;	i1 = $i3;	i4 = i2;	$i5 = i4 + 1;	$r1 := @caughtexception;	$r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a fully qualified class name in internal form): ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 5