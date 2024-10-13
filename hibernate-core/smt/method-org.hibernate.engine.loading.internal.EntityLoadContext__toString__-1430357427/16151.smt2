(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var2791 0)
(declare-sort var2002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var2791) String)
(declare-fun cast-from-var714-to-var2791 (var714) var2791)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resultSet/-1127754899 (var714) var2002)
(declare-fun append/-1031950772 (String var2791) String)
(declare-fun cast-from-var2002-to-var2791 (var2002) var2791)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var714 var714)
(declare-const var735 var714) ; Statement: r1 := @this: org.hibernate.engine.loading.internal.EntityLoadContext 
(assert (not (= var735 null-var714)))
(define-const var230 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var230)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var230!1 String)
(assert (= var230!1 ""))
(assert true)
(define-const var694 String (toString/-522406933 (cast-from-var714-to-var2791 var735))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1903 String (append/672562846 var230!1 var694)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var230!2 String)
(assert (= var230!2 (str.++ var230!1 var694)))
(assert true)
(define-const var3551 String (append/672562846 var1903 "<rs=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rs=") 
(declare-const var1903!1 String)
(assert (= var1903!1 (str.++ var1903 "<rs=")))
(define-const var357 var2002 (resultSet/-1127754899 var735)) ; Statement: $r4 = r1.<org.hibernate.engine.loading.internal.EntityLoadContext: java.sql.ResultSet resultSet> 
(assert true)
(define-const var3857 String (append/-1031950772 var3551 (cast-from-var2002-to-var2791 var357))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3551!1 String)
(assert (str.prefixof var3551 var3551!1))
(assert true)
(define-const var133 String (append/672562846 var3857 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3857!1 String)
(assert (= var3857!1 (str.++ var3857 ">")))
(assert true)
(define-const var437 String (toString/-2075883882 var133)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var714-to-var2791=([org.hibernate.engine.loading.internal.EntityLoadContext], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resultSet/-1127754899=([org.hibernate.engine.loading.internal.EntityLoadContext], java.sql.ResultSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2002-to-var2791=([java.sql.ResultSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var714=org.hibernate.engine.loading.internal.EntityLoadContext, var735=r1, var230=$r0, var2791=java.lang.Object, var694=$r2, var1903=$r3, var3551=$r5, var2002=java.sql.ResultSet, var357=$r4, var3857=$r6, var133=$r7, var437=$r8}
; {org.hibernate.engine.loading.internal.EntityLoadContext=var714, r1=var735, $r0=var230, java.lang.Object=var2791, $r2=var694, $r3=var1903, $r5=var3551, java.sql.ResultSet=var2002, $r4=var357, $r6=var3857, $r7=var133, $r8=var437}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.loading.internal.EntityLoadContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rs=");	$r4 = r1.<org.hibernate.engine.loading.internal.EntityLoadContext: java.sql.ResultSet resultSet>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1