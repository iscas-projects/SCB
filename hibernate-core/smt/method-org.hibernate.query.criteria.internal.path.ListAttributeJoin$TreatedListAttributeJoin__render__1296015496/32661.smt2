(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var670 0)
(declare-sort var813 0)
(declare-sort var2543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun original/-1324108218 (var2862) var813)
(declare-fun render/627455273 (var2543 var670) String)
(declare-fun cast-from-var813-to-var2543 (var813) var2543)
(declare-fun treatAsType/-1324108218 (var2862) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2862 var2862)
(declare-const null-var670 var670)
(declare-const var3259 var2862) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin 
(assert (not (= var3259 null-var2862)))
(declare-const var2523 var670) ; Statement: r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2523 null-var670)))
(define-const var2184 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2184)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2184!1 String)
(assert (= var2184!1 ""))
(assert true)
(define-const var796 String (append/672562846 var2184!1 "treat(")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(") 
(declare-const var2184!2 String)
(assert (= var2184!2 (str.++ var2184!1 "treat(")))
(define-const var2828 var813 (original/-1324108218 var3259)) ; Statement: $r3 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: org.hibernate.query.criteria.internal.path.ListAttributeJoin original> 
(assert true)
(define-const var371 String (render/627455273 (cast-from-var813-to-var2543 var2828) var2523)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.ListAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var1519 String (append/672562846 var796 var371)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var796!1 String)
(assert (= var796!1 (str.++ var796 var371)))
(assert true)
(define-const var1690 String (append/672562846 var1519 " as ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 " as ")))
(define-const var2711 ClassObject (treatAsType/-1324108218 var3259)) ; Statement: $r7 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.Class treatAsType> 
(assert true)
(define-const var186 String (getName/-1958580599 var2711)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1324 String (append/672562846 var1690 var186)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 var186)))
(assert true)
(define-const var2836 String (append/672562846 var1324 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1324!1 String)
(assert (= var1324!1 (str.++ var1324 ")")))
(assert true)
(define-const var3379 String (toString/-2075883882 var2836)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), original/-1324108218=([org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin], org.hibernate.query.criteria.internal.path.ListAttributeJoin), render/627455273=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var813-to-var2543=([org.hibernate.query.criteria.internal.path.ListAttributeJoin], org.hibernate.query.criteria.internal.path.AbstractFromImpl), treatAsType/-1324108218=([org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2862=org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin, var3259=r1, var670=org.hibernate.query.criteria.internal.compile.RenderingContext, var2523=r2, var2184=$r0, var796=$r5, var813=org.hibernate.query.criteria.internal.path.ListAttributeJoin, var2828=$r3, var2543=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var371=$r4, var1519=$r6, var1690=$r9, var2711=$r7, var186=$r8, var1324=$r10, var2836=$r11, var3379=$r12}
; {org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin=var2862, r1=var3259, org.hibernate.query.criteria.internal.compile.RenderingContext=var670, r2=var2523, $r0=var2184, $r5=var796, org.hibernate.query.criteria.internal.path.ListAttributeJoin=var813, $r3=var2828, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var2543, $r4=var371, $r6=var1519, $r9=var1690, $r7=var2711, $r8=var186, $r10=var1324, $r11=var2836, $r12=var3379}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin;	r2 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("treat(");	$r3 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: org.hibernate.query.criteria.internal.path.ListAttributeJoin original>;	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.ListAttributeJoin: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r7 = r1.<org.hibernate.query.criteria.internal.path.ListAttributeJoin$TreatedListAttributeJoin: java.lang.Class treatAsType>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1