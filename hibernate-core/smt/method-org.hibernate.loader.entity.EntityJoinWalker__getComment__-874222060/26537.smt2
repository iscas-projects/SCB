(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2595 0)
(declare-sort var2732 0)
(declare-sort var3391 0)
(declare-sort var1875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPersister/561804582 (var3391) var2732)
(declare-fun cast-from-var2595-to-var3391 (var2595) var3391)
(declare-fun var1875_getEntityName/-1914780628 (var1875) String)
(declare-fun cast-from-var2732-to-var1875 (var2732) var1875)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2595 var2595)
(declare-const var1824 var2595) ; Statement: r1 := @this: org.hibernate.loader.entity.EntityJoinWalker 
(assert (not (= var1824 null-var2595)))
(define-const var1358 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1358)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1358!1 String)
(assert (= var1358!1 ""))
(assert true)
(define-const var1923 String (append/672562846 var1358!1 "load ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ") 
(declare-const var1358!2 String)
(assert (= var1358!2 (str.++ var1358!1 "load ")))
(assert true)
(define-const var2795 var2732 (getPersister/561804582 (cast-from-var2595-to-var3391 var1824))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>() 
(define-const var1308 String (var1875_getEntityName/-1914780628 (cast-from-var2732-to-var1875 var2795))) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>() 
(assert true)
(define-const var1632 String (append/672562846 var1923 var1308)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1923!1 String)
(assert (= var1923!1 (str.++ var1923 var1308)))
(assert true)
(define-const var2730 String (toString/-2075883882 var1632)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPersister/561804582=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.Loadable), cast-from-var2595-to-var3391=([org.hibernate.loader.entity.EntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), var1875_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var2732-to-var1875=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2595=org.hibernate.loader.entity.EntityJoinWalker, var1824=r1, var1358=$r0, var1923=$r4, var2732=org.hibernate.persister.entity.Loadable, var3391=org.hibernate.loader.AbstractEntityJoinWalker, var2795=$r2, var1875=org.hibernate.persister.entity.EntityPersister, var1308=$r3, var1632=$r5, var2730=$r6}
; {org.hibernate.loader.entity.EntityJoinWalker=var2595, r1=var1824, $r0=var1358, $r4=var1923, org.hibernate.persister.entity.Loadable=var2732, org.hibernate.loader.AbstractEntityJoinWalker=var3391, $r2=var2795, org.hibernate.persister.entity.EntityPersister=var1875, $r3=var1308, $r5=var1632, $r6=var2730}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.entity.EntityJoinWalker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ");	$r2 = virtualinvoke r1.<org.hibernate.loader.entity.EntityJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>();	$r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1