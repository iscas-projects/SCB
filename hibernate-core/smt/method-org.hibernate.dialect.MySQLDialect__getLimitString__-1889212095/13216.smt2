(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1430 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1430 var1430)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var706 var1430) ; Statement: r5 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var706 null-var1430)))
(declare-const var1032 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1032 null-String)))
(declare-const var3920 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3920 null-Bool)))
(define-const var3661 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3661)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3661!1 String)
(assert (= var3661!1 ""))
(assert true)
(define-const var559 String (append/672562846 var3661!1 var1032)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3661!2 String)
(assert (= var3661!2 (str.++ var3661!1 var1032)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (= (ite var3920 1 0) 0)) ; Cond: z0 == 0 
(define-const var3402 String " limit ?") ; Statement: $r6 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var2735 String (append/672562846 var559 var3402)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var559!1 String)
(assert (= var559!1 (str.++ var559 var3402)))
(assert true)
(define-const var3807 String (toString/-2075883882 var2735)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1430=org.hibernate.dialect.MySQLDialect, var706=r5, var1032=r1, var1293=null_type, var3920=z0, var3661=$r0, var559=$r2, var3402=$r6, var2735=$r3, var3807=$r4}
; {org.hibernate.dialect.MySQLDialect=var1430, r5=var706, r1=var1032, null_type=var1293, z0=var3920, $r0=var3661, $r2=var559, $r6=var3402, $r3=var2735, $r4=var3807}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.MySQLDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3