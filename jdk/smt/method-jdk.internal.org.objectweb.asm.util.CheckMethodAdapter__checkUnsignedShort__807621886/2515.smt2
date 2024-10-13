(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1390 0)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2406-init () var2406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2406 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1840 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1840 null-Int)))
(declare-const var1112 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1112 null-String)))
 ; Statement: if i0 < 0 goto $r8 = new java.lang.IllegalArgumentException 
(assert (< var1840 0)) ; Cond: i0 < 0 
(define-const var3366 var2406 var2406-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var2722 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2722)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2722!1 String)
(assert (= var2722!1 ""))
(assert true)
(define-const var673 String (append/672562846 var2722!1 var1112)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2722!2 String)
(assert (= var2722!2 (str.++ var2722!1 var1112)))
(assert true)
(define-const var3131 String (append/672562846 var673 " (must be an unsigned short): ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be an unsigned short): ") 
(declare-const var673!1 String)
(assert (= var673!1 (str.++ var673 " (must be an unsigned short): ")))
(assert true)
(define-const var789 String (append/-1001720160 var3131 var1840)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3131!1 String)
(assert (str.prefixof var3131 var3131!1))
(assert true)
(define-const var206 String (toString/-2075883882 var789)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3366 var206)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3366!1 var2406)
(declare-const var206!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2406-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1840=i0, var1112=r2, var1390=null_type, var2406=java.lang.IllegalArgumentException, var3366=$r8, var2722=$r7, var673=$r3, var3131=$r4, var789=$r5, var206=$r6}
; {i0=var1840, r2=var1112, null_type=var1390, java.lang.IllegalArgumentException=var2406, $r8=var3366, $r7=var2722, $r3=var673, $r4=var3131, $r5=var789, $r6=var206}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 < 0 goto $r8 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be an unsigned short): ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2