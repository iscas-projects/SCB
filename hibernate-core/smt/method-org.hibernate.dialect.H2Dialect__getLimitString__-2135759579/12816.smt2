(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var729 0)
(declare-sort var1707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var729 var729)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var705 var729) ; Statement: r5 := @this: org.hibernate.dialect.H2Dialect 
(assert (not (= var705 null-var729)))
(declare-const var266 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var266 null-String)))
(declare-const var2102 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2102 null-Bool)))
(define-const var365 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var365)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var365!1 String)
(assert (= var365!1 ""))
(assert true)
(define-const var2494 String (append/672562846 var365!1 var266)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var365!2 String)
(assert (= var365!2 (str.++ var365!1 var266)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (= (ite var2102 1 0) 0)) ; Cond: z0 == 0 
(define-const var1080 String " limit ?") ; Statement: $r6 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var702 String (append/672562846 var2494 var1080)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2494!1 String)
(assert (= var2494!1 (str.++ var2494 var1080)))
(assert true)
(define-const var299 String (toString/-2075883882 var702)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var729=org.hibernate.dialect.H2Dialect, var705=r5, var266=r1, var1707=null_type, var2102=z0, var365=$r0, var2494=$r2, var1080=$r6, var702=$r3, var299=$r4}
; {org.hibernate.dialect.H2Dialect=var729, r5=var705, r1=var266, null_type=var1707, z0=var2102, $r0=var365, $r2=var2494, $r6=var1080, $r3=var702, $r4=var299}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.H2Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3