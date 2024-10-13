(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1974 0)
(declare-sort var3765 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var3765) String)
(declare-fun cast-from-var1974-to-var3765 (var1974) var3765)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resultSet/1855752786 (var1974) var1760)
(declare-fun append/-1031950772 (String var3765) String)
(declare-fun cast-from-var1760-to-var3765 (var1760) var3765)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1974 var1974)
(declare-const var252 var1974) ; Statement: r1 := @this: org.hibernate.engine.loading.internal.CollectionLoadContext 
(assert (not (= var252 null-var1974)))
(define-const var678 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var678)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var678!1 String)
(assert (= var678!1 ""))
(assert true)
(define-const var2200 String (toString/-522406933 (cast-from-var1974-to-var3765 var252))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2555 String (append/672562846 var678!1 var2200)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var678!2 String)
(assert (= var678!2 (str.++ var678!1 var2200)))
(assert true)
(define-const var334 String (append/672562846 var2555 "<rs=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rs=") 
(declare-const var2555!1 String)
(assert (= var2555!1 (str.++ var2555 "<rs=")))
(define-const var2661 var1760 (resultSet/1855752786 var252)) ; Statement: $r4 = r1.<org.hibernate.engine.loading.internal.CollectionLoadContext: java.sql.ResultSet resultSet> 
(assert true)
(define-const var2418 String (append/-1031950772 var334 (cast-from-var1760-to-var3765 var2661))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var334!1 String)
(assert (str.prefixof var334 var334!1))
(assert true)
(define-const var2210 String (append/672562846 var2418 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2418!1 String)
(assert (= var2418!1 (str.++ var2418 ">")))
(assert true)
(define-const var2599 String (toString/-2075883882 var2210)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1974-to-var3765=([org.hibernate.engine.loading.internal.CollectionLoadContext], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resultSet/1855752786=([org.hibernate.engine.loading.internal.CollectionLoadContext], java.sql.ResultSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1760-to-var3765=([java.sql.ResultSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1974=org.hibernate.engine.loading.internal.CollectionLoadContext, var252=r1, var678=$r0, var3765=java.lang.Object, var2200=$r2, var2555=$r3, var334=$r5, var1760=java.sql.ResultSet, var2661=$r4, var2418=$r6, var2210=$r7, var2599=$r8}
; {org.hibernate.engine.loading.internal.CollectionLoadContext=var1974, r1=var252, $r0=var678, java.lang.Object=var3765, $r2=var2200, $r3=var2555, $r5=var334, java.sql.ResultSet=var1760, $r4=var2661, $r6=var2418, $r7=var2210, $r8=var2599}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.loading.internal.CollectionLoadContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rs=");	$r4 = r1.<org.hibernate.engine.loading.internal.CollectionLoadContext: java.sql.ResultSet resultSet>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1