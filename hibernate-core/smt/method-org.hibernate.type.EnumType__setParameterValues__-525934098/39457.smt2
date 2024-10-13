(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var2276 0)
(declare-sort var1647 0)
(declare-sort var2918 0)
(declare-sort var2031 0)
(declare-sort var2519 0)
(declare-sort var1848 0)
(declare-sort var2259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-1721276195 (var2918 var1647) var1647)
(declare-fun cast-from-var2276-to-var2918 (var2276) var2918)
(declare-fun cast-from-String-to-var1647 (String) var1647)
(declare-fun cast-from-var1647-to-var2031 (var1647) var2031)
(declare-fun cast-from-var1647-to-String (var1647) String)
(declare-fun var1848-init () var1848)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1848 String var2259) void)
(declare-fun cast-from-var2519-to-var2259 (var2519) var2259)
(declare-fun cast-from-var1848-to-var2259 (var1848) var2259)
(declare-const null-var3895 var3895)
(declare-const null-var2276 var2276)
(declare-const null-var2031 var2031)
(declare-const null-var2519 var2519)
(declare-const var2401 var3895) ; Statement: r4 := @this: org.hibernate.type.EnumType 
(assert (not (= var2401 null-var3895)))
(declare-const var449 var2276) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var449 null-var2276)))
(assert true)
(define-const var3019 var1647 (get/-1721276195 (cast-from-var2276-to-var2918 var449) (cast-from-String-to-var1647 "org.hibernate.type.ParameterType"))) ; Statement: $r1 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("org.hibernate.type.ParameterType") 
(define-const var3255 var2031 (cast-from-var1647-to-var2031 var3019)) ; Statement: r2 = (org.hibernate.usertype.DynamicParameterizedType$ParameterType) $r1 
 ; Statement: if r2 == null goto $r3 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("enumClass") 
(assert (= var3255 null-var2031)) ; Cond: r2 == null 
(assert true)
(define-const var2044 var1647 (get/-1721276195 (cast-from-var2276-to-var2918 var449) (cast-from-String-to-var1647 "enumClass"))) ; Statement: $r3 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("enumClass") 
(define-const var3373 String (cast-from-var1647-to-String var2044)) ; Statement: r35 = (java.lang.String) $r3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1737 var2519) ; Statement: $r23 := @caughtexception 
(assert (not (= var1737 null-var2519)))
(define-const var3785 var1848 var1848-init) ; Statement: $r42 = new org.hibernate.HibernateException 
(define-const var630 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var630)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var630!1 String)
(assert (= var630!1 ""))
(assert true)
(define-const var559 String (append/672562846 var630!1 "Enum class not found: ")) ; Statement: $r26 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enum class not found: ") 
(declare-const var630!2 String)
(assert (= var630!2 (str.++ var630!1 "Enum class not found: ")))
(assert true)
(define-const var1301 String (append/672562846 var559 var3373)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r35) 
(declare-const var559!1 String)
(assert (= var559!1 (str.++ var559 var3373)))
(assert true)
(define-const var1586 String (toString/-2075883882 var1301)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var3785 var1586 (cast-from-var2519-to-var2259 var1737))) ; Statement: specialinvoke $r42.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23) 

(declare-const var3785!1 var1848)
(declare-const var1586!1 String)
(declare-const var1737!1 var2519)
(define-const var2601 var2259 (cast-from-var1848-to-var2259 var3785!1)) ; Statement: $r43 = (java.lang.Throwable) $r42 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var2276-to-var2918=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var1647=([java.lang.String], java.lang.Object), cast-from-var1647-to-var2031=([java.lang.Object], org.hibernate.usertype.DynamicParameterizedType$ParameterType), cast-from-var1647-to-String=([java.lang.Object], java.lang.String), var1848-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2519-to-var2259=([java.lang.ClassNotFoundException], java.lang.Throwable), cast-from-var1848-to-var2259=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3895=org.hibernate.type.EnumType, var2401=r4, var2276=java.util.Properties, var449=r0, var1647=java.lang.Object, var2918=java.util.Hashtable, var3019=$r1, var2031=org.hibernate.usertype.DynamicParameterizedType$ParameterType, var3255=r2, var2044=$r3, var3373=r35, var2519=java.lang.ClassNotFoundException, var1737=$r23, var1848=org.hibernate.HibernateException, var3785=$r42, var630=$r41, var559=$r26, var1301=$r27, var1586=$r28, var2259=java.lang.Throwable, var2601=$r43}
; {org.hibernate.type.EnumType=var3895, r4=var2401, java.util.Properties=var2276, r0=var449, java.lang.Object=var1647, java.util.Hashtable=var2918, $r1=var3019, org.hibernate.usertype.DynamicParameterizedType$ParameterType=var2031, r2=var3255, $r3=var2044, r35=var3373, java.lang.ClassNotFoundException=var2519, $r23=var1737, org.hibernate.HibernateException=var1848, $r42=var3785, $r41=var630, $r26=var559, $r27=var1301, $r28=var1586, java.lang.Throwable=var2259, $r43=var2601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.type.EnumType;	r0 := @parameter0: java.util.Properties;	$r1 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("org.hibernate.type.ParameterType");	r2 = (org.hibernate.usertype.DynamicParameterizedType$ParameterType) $r1;	if r2 == null goto $r3 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("enumClass");	$r3 = virtualinvoke r0.<java.util.Properties: java.lang.Object get(java.lang.Object)>("enumClass");	r35 = (java.lang.String) $r3;	$r23 := @caughtexception;	$r42 = new org.hibernate.HibernateException;	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enum class not found: ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r35);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r42.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r28, $r23);	$r43 = (java.lang.Throwable) $r42;	throw $r43
;block_num 3