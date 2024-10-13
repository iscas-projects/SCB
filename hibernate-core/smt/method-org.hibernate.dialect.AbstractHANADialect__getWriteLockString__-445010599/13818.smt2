(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1642 0)
(declare-sort var3853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getForUpdateString/-901126642 (var1642 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLockWaitTimeoutInSeconds/-781444613 (var1642 Int) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1642 var1642)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var45 var1642) ; Statement: r0 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var45 null-var1642)))
(declare-const var995 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var995 null-String)))
(declare-const var348 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var348 null-Int)))
 ; Statement: if i0 <= 0 goto (branch) 
(assert (not (<= var348 0))) ; Negate: Cond: i0 <= 0  
(define-const var407 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var407)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var407!1 String)
(assert (= var407!1 ""))
(assert true)
(define-const var3065 String (getForUpdateString/-901126642 var45 var995)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString(java.lang.String)>(r1) 
(assert true)
(define-const var2517 String (append/672562846 var407!1 var3065)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var407!2 String)
(assert (= var407!2 (str.++ var407!1 var3065)))
(assert true)
(define-const var2935 String (append/672562846 var2517 " wait ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wait ") 
(declare-const var2517!1 String)
(assert (= var2517!1 (str.++ var2517 " wait ")))
(assert true)
(define-const var3777 Int (getLockWaitTimeoutInSeconds/-781444613 var45 var348)) ; Statement: $l1 = specialinvoke r0.<org.hibernate.dialect.AbstractHANADialect: long getLockWaitTimeoutInSeconds(int)>(i0) 
(assert true)
(define-const var2527 String (append/-901862667 var2935 var3777)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var2935!1 String)
(assert (str.prefixof var2935 var2935!1))
(assert true)
(define-const var2831 String (toString/-2075883882 var2527)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getForUpdateString/-901126642=([org.hibernate.dialect.AbstractHANADialect, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLockWaitTimeoutInSeconds/-781444613=([org.hibernate.dialect.AbstractHANADialect, int], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1642=org.hibernate.dialect.AbstractHANADialect, var45=r0, var995=r1, var3853=null_type, var348=i0, var407=$r4, var3065=$r5, var2517=$r6, var2935=$r7, var3777=$l1, var2527=$r8, var2831=$r9}
; {org.hibernate.dialect.AbstractHANADialect=var1642, r0=var45, r1=var995, null_type=var3853, i0=var348, $r4=var407, $r5=var3065, $r6=var2517, $r7=var2935, $l1=var3777, $r8=var2527, $r9=var2831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 <= 0 goto (branch);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r0.<org.hibernate.dialect.AbstractHANADialect: java.lang.String getForUpdateString(java.lang.String)>(r1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wait ");	$l1 = specialinvoke r0.<org.hibernate.dialect.AbstractHANADialect: long getLockWaitTimeoutInSeconds(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2