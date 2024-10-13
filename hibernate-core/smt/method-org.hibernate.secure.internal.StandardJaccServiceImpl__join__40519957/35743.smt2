(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2682 0)
(declare-sort var3358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var3358-1 ((Array Int var3358)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2682 var2682)
(declare-const null-__Array__Int__var3358__ (Array Int var3358))
(declare-const var2854 var2682) ; Statement: r6 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl 
(assert (not (= var2854 null-var2682)))
(declare-const var2352 (Array Int var3358)) ; Statement: r1 := @parameter0: java.security.Principal[] 
(assert (not (= var2352 null-__Array__Int__var3358__)))
(define-const var3780 String "") ; Statement: r7 = "" 
(define-const var1062 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1062)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1062!1 String)
(assert (= var1062!1 ""))
(define-const var484 Int (getLength-Arr-var3358-1 var2352)) ; Statement: i0 = lengthof r1 
(define-const var657 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var657 var484)) ; Cond: i1 >= i0 
(assert true)
(define-const var2142 String (toString/-2075883882 var1062!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var3358-1=([java.security.Principal[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2682=org.hibernate.secure.internal.StandardJaccServiceImpl, var2854=r6, var3358=java.security.Principal, var2352=r1, var3780=r7, var1062=$r0, var484=i0, var657=i1, var2142=$r2}
; {org.hibernate.secure.internal.StandardJaccServiceImpl=var2682, r6=var2854, java.security.Principal=var3358, r1=var2352, r7=var3780, $r0=var1062, i0=var484, i1=var657, $r2=var2142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.secure.internal.StandardJaccServiceImpl;	r1 := @parameter0: java.security.Principal[];	r7 = "";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3