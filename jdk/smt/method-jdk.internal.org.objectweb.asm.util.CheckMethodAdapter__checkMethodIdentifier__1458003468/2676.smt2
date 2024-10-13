(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var2671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2671-init () var2671)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2671 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1428 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1428 null-Int)))
(declare-const var3108 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3108 null-String)))
(declare-const var256 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var256 null-String)))
 ; Statement: if r0 == null goto $r31 = new java.lang.IllegalArgumentException 
(assert (= var3108 null-String)) ; Cond: r0 == null 
(define-const var1747 var2671 var2671-init) ; Statement: $r31 = new java.lang.IllegalArgumentException 
(define-const var2470 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2470)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2470!1 String)
(assert (= var2470!1 ""))
(assert true)
(define-const var125 String (append/672562846 var2470!1 "Invalid ")) ; Statement: $r4 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ") 
(declare-const var2470!2 String)
(assert (= var2470!2 (str.++ var2470!1 "Invalid ")))
(assert true)
(define-const var3449 String (append/672562846 var125 var256)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var125!1 String)
(assert (= var125!1 (str.++ var125 var256)))
(assert true)
(define-const var2892 String (append/672562846 var3449 " (must not be null or empty)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)") 
(declare-const var3449!1 String)
(assert (= var3449!1 (str.++ var3449 " (must not be null or empty)")))
(assert true)
(define-const var2207 String (toString/-2075883882 var2892)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1747 var2207)) ; Statement: specialinvoke $r31.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1747!1 var2671)
(declare-const var2207!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var2671-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1428=i1, var3108=r0, var748=null_type, var256=r3, var2671=java.lang.IllegalArgumentException, var1747=$r31, var2470=$r30, var125=$r4, var3449=$r5, var2892=$r6, var2207=$r7}
; {i1=var1428, r0=var3108, null_type=var748, r3=var256, java.lang.IllegalArgumentException=var2671, $r31=var1747, $r30=var2470, $r4=var125, $r5=var3449, $r6=var2892, $r7=var2207}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	if r0 == null goto $r31 = new java.lang.IllegalArgumentException;	$r31 = new java.lang.IllegalArgumentException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must not be null or empty)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r31
;block_num 2