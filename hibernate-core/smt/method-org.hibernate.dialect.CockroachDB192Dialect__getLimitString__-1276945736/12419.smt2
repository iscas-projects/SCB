(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2056 0)
(declare-sort var876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2056 var2056)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var843 var2056) ; Statement: r5 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var843 null-var2056)))
(declare-const var191 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var191 null-String)))
(declare-const var996 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var996 null-Bool)))
(define-const var991 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var991)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var991!1 String)
(assert (= var991!1 ""))
(assert true)
(define-const var320 String (append/672562846 var991!1 var191)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var991!2 String)
(assert (= var991!2 (str.++ var991!1 var191)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (not (= (ite var996 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2795 String " limit ? offset ?") ; Statement: $r6 = " limit ? offset ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3259 String (append/672562846 var320 var2795)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var320!1 String)
(assert (= var320!1 (str.++ var320 var2795)))
(assert true)
(define-const var548 String (toString/-2075883882 var3259)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2056=org.hibernate.dialect.CockroachDB192Dialect, var843=r5, var191=r1, var876=null_type, var996=z0, var991=$r0, var320=$r2, var2795=$r6, var3259=$r3, var548=$r4}
; {org.hibernate.dialect.CockroachDB192Dialect=var2056, r5=var843, r1=var191, null_type=var876, z0=var996, $r0=var991, $r2=var320, $r6=var2795, $r3=var3259, $r4=var548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.CockroachDB192Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ? offset ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3