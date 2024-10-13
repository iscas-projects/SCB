(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var2555 0)
(declare-sort var3234 0)
(declare-sort var2801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3234) String)
(declare-fun cast-from-var2555-to-var3234 (var2555) var3234)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2801 String) void)
(declare-fun cast-from-var2331-to-var2801 (var2331) var2801)
(declare-fun bagRoles/-1781530152 (var2331) var2555)
(declare-const null-var2331 var2331)
(declare-const null-var2555 var2555)
(declare-const var2694 var2331) ; Statement: r0 := @this: org.hibernate.loader.MultipleBagFetchException 
(assert (not (= var2694 null-var2331)))
(declare-const var59 var2555) ; Statement: r2 := @parameter0: java.util.List 
(assert (not (= var59 null-var2555)))
(define-const var1103 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1103)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1103!1 String)
(assert (= var1103!1 ""))
(assert true)
(define-const var1995 String (append/672562846 var1103!1 "cannot simultaneously fetch multiple bags: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot simultaneously fetch multiple bags: ") 
(declare-const var1103!2 String)
(assert (= var1103!2 (str.++ var1103!1 "cannot simultaneously fetch multiple bags: ")))
(assert true)
(define-const var2278 String (append/-1031950772 var1995 (cast-from-var2555-to-var3234 var59))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1995!1 String)
(assert (str.prefixof var1995 var1995!1))
(assert true)
(define-const var1074 String (toString/-2075883882 var2278)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 (cast-from-var2331-to-var2801 var2694) var1074)) ; Statement: specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var2694!1 var2331)
(declare-const var1074!1 String)
(declare-const var2694!2 var2331)
(assert (not (= var2694!2 null-var2331)))
(assert (= (bagRoles/-1781530152 var2694!2) var59)) ; Statement: r0.<org.hibernate.loader.MultipleBagFetchException: java.util.List bagRoles> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2555-to-var3234=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2331-to-var2801=([org.hibernate.loader.MultipleBagFetchException], org.hibernate.HibernateException), bagRoles/-1781530152=([org.hibernate.loader.MultipleBagFetchException], java.util.List)}
; {var2331=org.hibernate.loader.MultipleBagFetchException, var2694=r0, var2555=java.util.List, var59=r2, var1103=$r1, var1995=$r3, var3234=java.lang.Object, var2278=$r4, var1074=$r5, var2801=org.hibernate.HibernateException}
; {org.hibernate.loader.MultipleBagFetchException=var2331, r0=var2694, java.util.List=var2555, r2=var59, $r1=var1103, $r3=var1995, java.lang.Object=var3234, $r4=var2278, $r5=var1074, org.hibernate.HibernateException=var2801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.MultipleBagFetchException;	r2 := @parameter0: java.util.List;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cannot simultaneously fetch multiple bags: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	r0.<org.hibernate.loader.MultipleBagFetchException: java.util.List bagRoles> = r2;	return
;block_num 1