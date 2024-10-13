(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2025 0)
(declare-sort var2709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2025 var2025)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1988 var2025) ; Statement: r7 := @this: org.hibernate.dialect.InterbaseDialect 
(assert (not (= var1988 null-var2025)))
(declare-const var2052 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2052 null-String)))
(declare-const var2768 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2768 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var2768 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1541 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1541)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1541!1 String)
(assert (= var1541!1 ""))
(assert true)
(define-const var563 String (append/672562846 var1541!1 var2052)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1541!2 String)
(assert (= var1541!2 (str.++ var1541!1 var2052)))
(assert true)
(define-const var589 String (append/672562846 var563 " rows ? to ?")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ? to ?") 
(declare-const var563!1 String)
(assert (= var563!1 (str.++ var563 " rows ? to ?")))
(assert true)
(define-const var800 String (toString/-2075883882 var589)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2025=org.hibernate.dialect.InterbaseDialect, var1988=r7, var2052=r1, var2709=null_type, var2768=z0, var1541=$r4, var563=$r5, var589=$r6, var800=$r8}
; {org.hibernate.dialect.InterbaseDialect=var2025, r7=var1988, r1=var2052, null_type=var2709, z0=var2768, $r4=var1541, $r5=var563, $r6=var589, $r8=var800}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.InterbaseDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows ? to ?");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3