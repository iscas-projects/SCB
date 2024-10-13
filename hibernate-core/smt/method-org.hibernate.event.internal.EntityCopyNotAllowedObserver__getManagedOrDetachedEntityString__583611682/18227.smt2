(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var26 0)
(declare-sort var2494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2494) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var26 var26)
(declare-const null-var2494 var2494)
(declare-const var1765 var26) ; Statement: r12 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver 
(assert (not (= var1765 null-var26)))
(declare-const var1864 var2494) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1864 null-var2494)))
(declare-const var3638 var2494) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3638 null-var2494)))
 ; Statement: if r0 != r1 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3638 var1864))) ; Cond: r0 != r1 
(define-const var3723 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3723)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3723!1 String)
(assert (= var3723!1 ""))
(assert true)
(define-const var1459 String (append/672562846 var3723!1 "Detached: [")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detached: [") 
(declare-const var3723!2 String)
(assert (= var3723!2 (str.++ var3723!1 "Detached: [")))
(assert true)
(define-const var1285 String (append/-1031950772 var1459 var3638)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1459!1 String)
(assert (str.prefixof var1459 var1459!1))
(assert true)
(define-const var1415 String (append/672562846 var1285 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1285!1 String)
(assert (= var1285!1 (str.++ var1285 "]")))
(assert true)
(define-const var785 String (toString/-2075883882 var1415)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var26=org.hibernate.event.internal.EntityCopyNotAllowedObserver, var1765=r12, var2494=java.lang.Object, var1864=r1, var3638=r0, var3723=$r2, var1459=$r3, var1285=$r4, var1415=$r5, var785=$r6}
; {org.hibernate.event.internal.EntityCopyNotAllowedObserver=var26, r12=var1765, java.lang.Object=var2494, r1=var1864, r0=var3638, $r2=var3723, $r3=var1459, $r4=var1285, $r5=var1415, $r6=var785}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != r1 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Detached: [");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2