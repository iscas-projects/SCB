(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2191 0)
(declare-sort var2441 0)
(declare-sort var354 0)
(declare-sort var2569 0)
(declare-sort var3963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun clazz/977116855 (var2191) var2441)
(declare-fun var354-init () var354)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2569) String)
(declare-fun cast-from-var2441-to-var2569 (var2441) var2569)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var354 String) void)
(declare-fun cast-from-var354-to-var3963 (var354) var3963)
(declare-const null-var2191 var2191)
(declare-const null-var2441 var2441)
(declare-const var1797 var2191) ; Statement: r0 := @this: org.hibernate.cfg.InheritanceState 
(assert (not (= var1797 null-var2191)))
(define-const var849 var2441 (clazz/977116855 var1797)) ; Statement: r30 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz> 
(assert true) ; Non Conditional
 ; Statement: if r30 == null goto r31 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz> 
(assert (= var849 null-var2441)) ; Cond: r30 == null 
(define-const var3096 var2441 (clazz/977116855 var1797)) ; Statement: r31 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz> 
(assert true) ; Non Conditional
 ; Statement: if r31 == null goto $r36 = new org.hibernate.AnnotationException 
(assert (= var3096 null-var2441)) ; Cond: r31 == null 
(define-const var676 var354 var354-init) ; Statement: $r36 = new org.hibernate.AnnotationException 
(define-const var2111 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2111)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2111!1 String)
(assert (= var2111!1 ""))
(assert true)
(define-const var575 String (append/672562846 var2111!1 "No identifier specified for entity: ")) ; Statement: $r4 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No identifier specified for entity: ") 
(declare-const var2111!2 String)
(assert (= var2111!2 (str.++ var2111!1 "No identifier specified for entity: ")))
(define-const var1335 var2441 (clazz/977116855 var1797)) ; Statement: $r3 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz> 
(assert true)
(define-const var2907 String (append/-1031950772 var575 (cast-from-var2441-to-var2569 var1335))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var575!1 String)
(assert (str.prefixof var575 var575!1))
(assert true)
(define-const var739 String (toString/-2075883882 var2907)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var676 var739)) ; Statement: specialinvoke $r36.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r6) 

(declare-const var676!1 var354)
(declare-const var739!1 String)
(define-const var2370 var3963 (cast-from-var354-to-var3963 var676!1)) ; Statement: $r37 = (java.lang.Throwable) $r36 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {clazz/977116855=([org.hibernate.cfg.InheritanceState], org.hibernate.annotations.common.reflection.XClass), var354-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2441-to-var2569=([org.hibernate.annotations.common.reflection.XClass], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var354-to-var3963=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2191=org.hibernate.cfg.InheritanceState, var1797=r0, var2441=org.hibernate.annotations.common.reflection.XClass, var849=r30, var3096=r31, var354=org.hibernate.AnnotationException, var676=$r36, var2111=$r35, var575=$r4, var1335=$r3, var2569=java.lang.Object, var2907=$r5, var739=$r6, var3963=java.lang.Throwable, var2370=$r37}
; {org.hibernate.cfg.InheritanceState=var2191, r0=var1797, org.hibernate.annotations.common.reflection.XClass=var2441, r30=var849, r31=var3096, org.hibernate.AnnotationException=var354, $r36=var676, $r35=var2111, $r4=var575, $r3=var1335, java.lang.Object=var2569, $r5=var2907, $r6=var739, java.lang.Throwable=var3963, $r37=var2370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.InheritanceState;	r30 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz>;	if r30 == null goto r31 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz>;	r31 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz>;	if r31 == null goto $r36 = new org.hibernate.AnnotationException;	$r36 = new org.hibernate.AnnotationException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No identifier specified for entity: ");	$r3 = r0.<org.hibernate.cfg.InheritanceState: org.hibernate.annotations.common.reflection.XClass clazz>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r36.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r6);	$r37 = (java.lang.Throwable) $r36;	throw $r37
;block_num 5