(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2219 0)
(declare-sort var3372 0)
(declare-sort var1590 0)
(declare-sort var1728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun signum/-1960206851 (var3372) Int)
(declare-fun var1590-init () var1590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1728) String)
(declare-fun cast-from-var3372-to-var1728 (var3372) var1728)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1590 String) void)
(declare-const null-String String)
(declare-const null-var3372 var3372)
(declare-const var203 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var203 null-String)))
(declare-const var500 var3372) ; Statement: r0 := @parameter1: java.math.BigInteger 
(assert (not (= var500 null-var3372)))
(assert true)
(define-const var411 Int (signum/-1960206851 var500)) ; Statement: $i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>() 
 ; Statement: if $i0 >= 0 goto return r0 
(assert (not (>= var411 0))) ; Negate: Cond: $i0 >= 0  
(define-const var376 var1590 var1590-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var293 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(assert true)
(define-const var3269 String (append/672562846 var293!1 var203)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 var203)))
(assert true)
(define-const var3127 String (append/672562846 var3269 " (")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 " (")))
(assert true)
(define-const var2556 String (append/-1031950772 var3127 (cast-from-var3372-to-var1728 var500))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3127!1 String)
(assert (str.prefixof var3127 var3127!1))
(assert true)
(define-const var250 String (append/672562846 var2556 ") must be >= 0")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0") 
(declare-const var2556!1 String)
(assert (= var2556!1 (str.++ var2556 ") must be >= 0")))
(assert true)
(define-const var2259 String (toString/-2075883882 var250)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var376 var2259)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var376!1 var1590)
(declare-const var2259!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {signum/-1960206851=([java.math.BigInteger], int), var1590-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3372-to-var1728=([java.math.BigInteger], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var203=r3, var2219=null_type, var3372=java.math.BigInteger, var500=r0, var411=$i0, var1590=java.lang.IllegalArgumentException, var376=$r1, var293=$r2, var3269=$r4, var3127=$r5, var1728=java.lang.Object, var2556=$r6, var250=$r7, var2259=$r8}
; {r3=var203, null_type=var2219, java.math.BigInteger=var3372, r0=var500, $i0=var411, java.lang.IllegalArgumentException=var1590, $r1=var376, $r2=var293, $r4=var3269, $r5=var3127, java.lang.Object=var1728, $r6=var2556, $r7=var250, $r8=var2259}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.math.BigInteger;	$i0 = virtualinvoke r0.<java.math.BigInteger: int signum()>();	if $i0 >= 0 goto return r0;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be >= 0");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2