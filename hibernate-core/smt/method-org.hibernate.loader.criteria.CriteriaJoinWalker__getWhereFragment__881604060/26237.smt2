(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var661 0)
(declare-sort var491 0)
(declare-sort var2077 0)
(declare-sort var419 0)
(declare-sort var285 0)
(declare-sort var3565 0)
(declare-sort var3271 0)
(declare-sort var2866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getWhereFragment/-793714747 (var491) String)
(declare-fun cast-from-var661-to-var491 (var661) var491)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPersister/561804582 (var491) var2077)
(declare-fun cast-from-var2077-to-var419 (var2077) var419)
(declare-fun getAlias/-1544776148 (var491) String)
(declare-fun getLoadQueryInfluencers/-1412699050 (var3565) var285)
(declare-fun cast-from-var661-to-var3565 (var661) var3565)
(declare-fun getEnabledFilters/-185187305 (var285) var3271)
(declare-fun var2866_filterFragment/1785996213 (var2866 String var3271) String)
(declare-fun cast-from-var419-to-var2866 (var419) var2866)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var661 var661)
(declare-const var2007 var661) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaJoinWalker 
(assert (not (= var2007 null-var661)))
(define-const var1778 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1778)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1778!1 String)
(assert (= var1778!1 ""))
(assert true)
(define-const var3925 String (getWhereFragment/-793714747 (cast-from-var661-to-var491 var2007))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>() 
(assert true)
(define-const var2370 String (append/672562846 var1778!1 var3925)) ; Statement: $r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1778!2 String)
(assert (= var1778!2 (str.++ var1778!1 var3925)))
(assert true)
(define-const var3320 var2077 (getPersister/561804582 (cast-from-var661-to-var491 var2007))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>() 
(define-const var2063 var419 (cast-from-var2077-to-var419 var3320)) ; Statement: $r7 = (org.hibernate.persister.entity.Queryable) $r3 
(assert true)
(define-const var2916 String (getAlias/-1544776148 (cast-from-var661-to-var491 var2007))) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: java.lang.String getAlias()>() 
(assert true)
(define-const var1282 var285 (getLoadQueryInfluencers/-1412699050 (cast-from-var661-to-var3565 var2007))) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(assert true)
(define-const var454 var3271 (getEnabledFilters/-185187305 var1282)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>() 
(define-const var1753 String (var2866_filterFragment/1785996213 (cast-from-var419-to-var2866 var2063) var2916 var454)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Queryable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r6, $r5) 
(assert true)
(define-const var1149 String (append/672562846 var2370 var1753)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2370!1 String)
(assert (= var2370!1 (str.++ var2370 var1753)))
(assert true)
(define-const var1697 String (toString/-2075883882 var1149)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getWhereFragment/-793714747=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), cast-from-var661-to-var491=([org.hibernate.loader.criteria.CriteriaJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPersister/561804582=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.Loadable), cast-from-var2077-to-var419=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.Queryable), getAlias/-1544776148=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), getLoadQueryInfluencers/-1412699050=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.LoadQueryInfluencers), cast-from-var661-to-var3565=([org.hibernate.loader.criteria.CriteriaJoinWalker], org.hibernate.loader.JoinWalker), getEnabledFilters/-185187305=([org.hibernate.engine.spi.LoadQueryInfluencers], java.util.Map), var2866_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var419-to-var2866=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Joinable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var661=org.hibernate.loader.criteria.CriteriaJoinWalker, var2007=r1, var1778=$r0, var491=org.hibernate.loader.AbstractEntityJoinWalker, var3925=$r2, var2370=$r9, var2077=org.hibernate.persister.entity.Loadable, var3320=$r3, var419=org.hibernate.persister.entity.Queryable, var2063=$r7, var2916=$r6, var285=org.hibernate.engine.spi.LoadQueryInfluencers, var3565=org.hibernate.loader.JoinWalker, var1282=$r4, var3271=java.util.Map, var454=$r5, var2866=org.hibernate.persister.entity.Joinable, var1753=$r8, var1149=$r10, var1697=$r11}
; {org.hibernate.loader.criteria.CriteriaJoinWalker=var661, r1=var2007, $r0=var1778, org.hibernate.loader.AbstractEntityJoinWalker=var491, $r2=var3925, $r9=var2370, org.hibernate.persister.entity.Loadable=var2077, $r3=var3320, org.hibernate.persister.entity.Queryable=var419, $r7=var2063, $r6=var2916, org.hibernate.engine.spi.LoadQueryInfluencers=var285, org.hibernate.loader.JoinWalker=var3565, $r4=var1282, java.util.Map=var3271, $r5=var454, org.hibernate.persister.entity.Joinable=var2866, $r8=var1753, $r10=var1149, $r11=var1697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaJoinWalker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>();	$r9 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>();	$r7 = (org.hibernate.persister.entity.Queryable) $r3;	$r6 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: java.lang.String getAlias()>();	$r4 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	$r5 = virtualinvoke $r4.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>();	$r8 = interfaceinvoke $r7.<org.hibernate.persister.entity.Queryable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r6, $r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1