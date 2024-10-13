(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var237 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var237 var237)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3580 var237) ; Statement: r5 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var3580 null-var237)))
(declare-const var3157 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3157 null-String)))
(declare-const var3178 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3178 null-Bool)))
(define-const var157 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var157)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var157!1 String)
(assert (= var157!1 ""))
(assert true)
(define-const var1976 String (append/672562846 var157!1 var3157)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var157!2 String)
(assert (= var157!2 (str.++ var157!1 var3157)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (= (ite var3178 1 0) 0)) ; Cond: z0 == 0 
(define-const var1652 String " limit ?") ; Statement: $r6 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var3195 String (append/672562846 var1976 var1652)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 var1652)))
(assert true)
(define-const var2098 String (toString/-2075883882 var3195)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var237=org.hibernate.dialect.CockroachDB192Dialect, var3580=r5, var3157=r1, var2080=null_type, var3178=z0, var157=$r0, var1976=$r2, var1652=$r6, var3195=$r3, var2098=$r4}
; {org.hibernate.dialect.CockroachDB192Dialect=var237, r5=var3580, r1=var3157, null_type=var2080, z0=var3178, $r0=var157, $r2=var1976, $r6=var1652, $r3=var3195, $r4=var2098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3