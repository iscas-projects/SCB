(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3813 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3813 null-Int)))
(declare-const var3394 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3394 null-Int)))
 ; Statement: if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var3813 2147483647))) ; Cond: i0 != 2147483647 
(define-const var2530 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2530)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2530!1 String)
(assert (= var2530!1 ""))
(assert true)
(define-const var242 String (append/672562846 var2530!1 "")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2530!2 String)
(assert (= var2530!2 (str.++ var2530!1 "")))
(assert true)
(define-const var2849 String (append/672562846 var242 "(")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var242!1 String)
(assert (= var242!1 (str.++ var242 "(")))
(assert true)
(define-const var3364 String (append/-1001720160 var2849 var3813)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2849!1 String)
(assert (str.prefixof var2849 var2849!1))
(assert true)
(define-const var2969 String (append/672562846 var3364 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3364!1 String)
(assert (= var3364!1 (str.++ var3364 ")")))
(assert true)
(define-const var1475 String (toString/-2075883882 var2969)) ; Statement: r20 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3494 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3494)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3494!1 String)
(assert (= var3494!1 ""))
(assert true)
(define-const var3140 String (append/672562846 var3494!1 var1475)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20) 
(declare-const var3494!2 String)
(assert (= var3494!2 (str.++ var3494!1 var1475)))
(assert true)
(define-const var1195 String (append/672562846 var3140 "-")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 "-")))
(assert true)
(define-const var1768 String (toString/-2075883882 var1195)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var3394 2147483647))) ; Cond: i1 != 2147483647 
(define-const var3172 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3172)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3172!1 String)
(assert (= var3172!1 ""))
(assert true)
(define-const var3787 String (append/672562846 var3172!1 var1768)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3172!2 String)
(assert (= var3172!2 (str.++ var3172!1 var1768)))
(assert true)
(define-const var1822 String (append/672562846 var3787 "(")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 "(")))
(assert true)
(define-const var1039 String (append/-1001720160 var1822 var3394)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1822!1 String)
(assert (str.prefixof var1822 var1822!1))
(assert true)
(define-const var2840 String (append/672562846 var1039 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1039!1 String)
(assert (= var1039!1 (str.++ var1039 ")")))
(assert true)
(define-const var1884 String (toString/-2075883882 var2840)) ; Statement: r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r21 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3813=i0, var3394=i1, var2530=$r0, var242=$r1, var2849=$r2, var3364=$r3, var2969=$r4, var1475=r20, var3494=$r5, var3140=$r6, var1195=$r7, var1768=$r19, var3172=$r8, var3787=$r9, var1822=$r10, var1039=$r11, var2840=$r12, var1884=r21}
; {i0=var3813, i1=var3394, $r0=var2530, $r1=var242, $r2=var2849, $r3=var3364, $r4=var2969, r20=var1475, $r5=var3494, $r6=var3140, $r7=var1195, $r19=var1768, $r8=var3172, $r9=var3787, $r10=var1822, $r11=var1039, $r12=var2840, r21=var1884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 != 2147483647 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r20 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r20);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	if i1 != 2147483647 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r21 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return r21
;block_num 5