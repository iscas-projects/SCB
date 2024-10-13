(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1186 0)
(declare-sort var2819 0)
(declare-sort var2905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var2819) String)
(declare-fun cast-from-var1186-to-var2819 (var1186) var2819)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun collection/570268399 (var1186) var2905)
(declare-fun getRole/-486327642 (var2905) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1186 var1186)
(declare-const var322 var1186) ; Statement: r1 := @this: org.hibernate.cfg.CollectionPropertyHolder 
(assert (not (= var322 null-var1186)))
(define-const var204 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var204)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var204!1 String)
(assert (= var204!1 ""))
(assert true)
(define-const var3912 String (toString/-522406933 (cast-from-var1186-to-var2819 var322))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1551 String (append/672562846 var204!1 var3912)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var204!2 String)
(assert (= var204!2 (str.++ var204!1 var3912)))
(assert true)
(define-const var1815 String (append/672562846 var1551 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1551!1 String)
(assert (= var1551!1 (str.++ var1551 "(")))
(define-const var967 var2905 (collection/570268399 var322)) ; Statement: $r4 = r1.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection> 
(assert true)
(define-const var1163 String (getRole/-486327642 var967)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var1525 String (append/672562846 var1815 var1163)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1815!1 String)
(assert (= var1815!1 (str.++ var1815 var1163)))
(assert true)
(define-const var1136 String (append/672562846 var1525 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1525!1 String)
(assert (= var1525!1 (str.++ var1525 ")")))
(assert true)
(define-const var1439 String (toString/-2075883882 var1136)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1186-to-var2819=([org.hibernate.cfg.CollectionPropertyHolder], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), collection/570268399=([org.hibernate.cfg.CollectionPropertyHolder], org.hibernate.mapping.Collection), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1186=org.hibernate.cfg.CollectionPropertyHolder, var322=r1, var204=$r0, var2819=java.lang.Object, var3912=$r2, var1551=$r3, var1815=$r6, var2905=org.hibernate.mapping.Collection, var967=$r4, var1163=$r5, var1525=$r7, var1136=$r8, var1439=$r9}
; {org.hibernate.cfg.CollectionPropertyHolder=var1186, r1=var322, $r0=var204, java.lang.Object=var2819, $r2=var3912, $r3=var1551, $r6=var1815, org.hibernate.mapping.Collection=var2905, $r4=var967, $r5=var1163, $r7=var1525, $r8=var1136, $r9=var1439}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.CollectionPropertyHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection>;	$r5 = virtualinvoke $r4.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1