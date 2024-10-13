(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2101 0)
(declare-sort var1110 0)
(declare-sort var2116 0)
(declare-sort var589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var1110) var589)
(declare-fun greaterThan/1267601476 (var589 var589) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2101 var2101)
(declare-const null-var1110 var1110)
(declare-const null-String String)
(declare-const var589-READ var589)
(declare-const var2498 var2101) ; Statement: r7 := @this: org.hibernate.dialect.AbstractTransactSQLDialect 
(assert (not (= var2498 null-var2101)))
(declare-const var591 var1110) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var591 null-var1110)))
(declare-const var1950 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1950 null-String)))
(assert true)
(define-const var921 var589 (getLockMode/2004258094 var591)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var3125 var589 var589-READ) ; Statement: $r1 = <org.hibernate.LockMode: org.hibernate.LockMode READ> 
(assert true)
(define-const var498 Bool (greaterThan/1267601476 var921 var3125)) ; Statement: $z0 = virtualinvoke $r2.<org.hibernate.LockMode: boolean greaterThan(org.hibernate.LockMode)>($r1) 
 ; Statement: if $z0 == 0 goto $r8 = r3 
(assert (not (= (ite var498 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1326 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1326)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1326!1 String)
(assert (= var1326!1 ""))
(assert true)
(define-const var2887 String (append/672562846 var1326!1 var1950)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1326!2 String)
(assert (= var1326!2 (str.++ var1326!1 var1950)))
(assert true)
(define-const var2708 String (append/672562846 var2887 " holdlock")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" holdlock") 
(declare-const var2887!1 String)
(assert (= var2887!1 (str.++ var2887 " holdlock")))
(assert true)
(define-const var2094 String (toString/-2075883882 var2708)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), greaterThan/1267601476=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2101=org.hibernate.dialect.AbstractTransactSQLDialect, var2498=r7, var1110=org.hibernate.LockOptions, var591=r0, var1950=r3, var2116=null_type, var589=org.hibernate.LockMode, var921=$r2, var3125=$r1, var498=$z0, var1326=$r4, var2887=$r5, var2708=$r6, var2094=$r8}
; {org.hibernate.dialect.AbstractTransactSQLDialect=var2101, r7=var2498, org.hibernate.LockOptions=var1110, r0=var591, r3=var1950, null_type=var2116, org.hibernate.LockMode=var589, $r2=var921, $r1=var3125, $z0=var498, $r4=var1326, $r5=var2887, $r6=var2708, $r8=var2094}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.AbstractTransactSQLDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r3 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r1 = <org.hibernate.LockMode: org.hibernate.LockMode READ>;	$z0 = virtualinvoke $r2.<org.hibernate.LockMode: boolean greaterThan(org.hibernate.LockMode)>($r1);	if $z0 == 0 goto $r8 = r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" holdlock");	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3