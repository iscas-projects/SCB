(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2228 0)
(declare-sort var2074 0)
(declare-sort var999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun projection/-294722229 (var2228) var2074)
(declare-fun toString/-522406933 (var999) String)
(declare-fun cast-from-var2074-to-var999 (var2074) var999)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun alias/-294722229 (var2228) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2228 var2228)
(declare-const var1801 var2228) ; Statement: r1 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var1801 null-var2228)))
(define-const var3869 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3869)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3869!1 String)
(assert (= var3869!1 ""))
(define-const var3196 var2074 (projection/-294722229 var1801)) ; Statement: $r2 = r1.<org.hibernate.criterion.AliasedProjection: org.hibernate.criterion.Projection projection> 
(assert true)
(define-const var3842 String (toString/-522406933 (cast-from-var2074-to-var999 var3196))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1862 String (append/672562846 var3869!1 var3842)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3869!2 String)
(assert (= var3869!2 (str.++ var3869!1 var3842)))
(assert true)
(define-const var2461 String (append/672562846 var1862 " as ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var1862!1 String)
(assert (= var1862!1 (str.++ var1862 " as ")))
(define-const var806 String (alias/-294722229 var1801)) ; Statement: $r5 = r1.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var2294 String (append/672562846 var2461 var806)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2461!1 String)
(assert (= var2461!1 (str.++ var2461 var806)))
(assert true)
(define-const var2522 String (toString/-2075883882 var2294)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), projection/-294722229=([org.hibernate.criterion.AliasedProjection], org.hibernate.criterion.Projection), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2074-to-var999=([org.hibernate.criterion.Projection], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2228=org.hibernate.criterion.AliasedProjection, var1801=r1, var3869=$r0, var2074=org.hibernate.criterion.Projection, var3196=$r2, var999=java.lang.Object, var3842=$r3, var1862=$r4, var2461=$r6, var806=$r5, var2294=$r7, var2522=$r8}
; {org.hibernate.criterion.AliasedProjection=var2228, r1=var1801, $r0=var3869, org.hibernate.criterion.Projection=var2074, $r2=var3196, java.lang.Object=var999, $r3=var3842, $r4=var1862, $r6=var2461, $r5=var806, $r7=var2294, $r8=var2522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.AliasedProjection;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.AliasedProjection: org.hibernate.criterion.Projection projection>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r5 = r1.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1