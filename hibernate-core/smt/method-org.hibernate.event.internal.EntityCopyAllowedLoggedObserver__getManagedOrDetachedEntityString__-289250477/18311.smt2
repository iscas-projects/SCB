(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3832 0)
(declare-sort var2582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2582) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3832 var3832)
(declare-const null-var2582 var2582)
(declare-const var2954 var3832) ; Statement: r12 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver 
(assert (not (= var2954 null-var3832)))
(declare-const var3131 var2582) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3131 null-var2582)))
(declare-const var606 var2582) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var606 null-var2582)))
 ; Statement: if r0 != r1 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var606 var3131))) ; Cond: r0 != r1 
(define-const var113 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var113)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var113!1 String)
(assert (= var113!1 ""))
(assert true)
(define-const var109 String (append/672562846 var113!1 "Detached: [")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detached: [") 
(declare-const var113!2 String)
(assert (= var113!2 (str.++ var113!1 "Detached: [")))
(assert true)
(define-const var1076 String (append/-1031950772 var109 var606)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var109!1 String)
(assert (str.prefixof var109 var109!1))
(assert true)
(define-const var1674 String (append/672562846 var1076 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1076!1 String)
(assert (= var1076!1 (str.++ var1076 "]")))
(assert true)
(define-const var3123 String (toString/-2075883882 var1674)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3832=org.hibernate.event.internal.EntityCopyAllowedLoggedObserver, var2954=r12, var2582=java.lang.Object, var3131=r1, var606=r0, var113=$r2, var109=$r3, var1076=$r4, var1674=$r5, var3123=$r6}
; {org.hibernate.event.internal.EntityCopyAllowedLoggedObserver=var3832, r12=var2954, java.lang.Object=var2582, r1=var3131, r0=var606, $r2=var113, $r3=var109, $r4=var1076, $r5=var1674, $r6=var3123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != r1 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detached: [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2