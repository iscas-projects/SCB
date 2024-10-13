(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2309 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3037-init () var3037)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3037 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2272 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2272 null-String)))
(declare-const var286 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var286 null-Int)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (not (>= var286 0))) ; Negate: Cond: i0 >= 0  
(define-const var1525 var3037 var3037-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3076 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3076)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3076!1 String)
(assert (= var3076!1 ""))
(assert true)
(define-const var3636 String (append/672562846 var3076!1 var2272)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3076!2 String)
(assert (= var3076!2 (str.++ var3076!1 var2272)))
(assert true)
(define-const var1195 String (append/672562846 var3636 " (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3636!1 String)
(assert (= var3636!1 (str.++ var3636 " (")))
(assert true)
(define-const var1837 String (append/-1001720160 var1195 var286)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1195!1 String)
(assert (str.prefixof var1195 var1195!1))
(assert true)
(define-const var2858 String (append/672562846 var1837 ") must be >= 0")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0") 
(declare-const var1837!1 String)
(assert (= var1837!1 (str.++ var1837 ") must be >= 0")))
(assert true)
(define-const var1719 String (toString/-2075883882 var2858)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1525 var1719)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1525!1 var3037)
(declare-const var1719!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3037-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2272=r2, var2309=null_type, var286=i0, var3037=java.lang.IllegalArgumentException, var1525=$r0, var3076=$r1, var3636=$r3, var1195=$r4, var1837=$r5, var2858=$r6, var1719=$r7}
; {r2=var2272, null_type=var2309, i0=var286, java.lang.IllegalArgumentException=var3037, $r0=var1525, $r1=var3076, $r3=var3636, $r4=var1195, $r5=var1837, $r6=var2858, $r7=var1719}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 >= 0 goto return i0;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 2