(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var507 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var507 var507)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var130 var507) ; Statement: r5 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var130 null-var507)))
(declare-const var2761 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2761 null-String)))
(declare-const var1976 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1976 null-Bool)))
(define-const var203 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var203)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var203!1 String)
(assert (= var203!1 ""))
(assert true)
(define-const var175 String (append/672562846 var203!1 var2761)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var203!2 String)
(assert (= var203!2 (str.++ var203!1 var2761)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (not (= (ite var1976 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3240 String " limit ? offset ?") ; Statement: $r6 = " limit ? offset ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3755 String (append/672562846 var175 var3240)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var175!1 String)
(assert (= var175!1 (str.++ var175 var3240)))
(assert true)
(define-const var314 String (toString/-2075883882 var3755)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var507=org.hibernate.dialect.PostgreSQL81Dialect, var130=r5, var2761=r1, var1568=null_type, var1976=z0, var203=$r0, var175=$r2, var3240=$r6, var3755=$r3, var314=$r4}
; {org.hibernate.dialect.PostgreSQL81Dialect=var507, r5=var130, r1=var2761, null_type=var1568, z0=var1976, $r0=var203, $r2=var175, $r6=var3240, $r3=var3755, $r4=var314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ? offset ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3