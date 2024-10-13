(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var2967 0)
(declare-sort var129 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPersister/561804582 (var129) var2967)
(declare-fun cast-from-var2290-to-var129 (var2290) var129)
(declare-fun var2227_getEntityName/-1914780628 (var2227) String)
(declare-fun cast-from-var2967-to-var2227 (var2967) var2227)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2290 var2290)
(declare-const var3758 var2290) ; Statement: r1 := @this: org.hibernate.loader.entity.CascadeEntityJoinWalker 
(assert (not (= var3758 null-var2290)))
(define-const var80 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var80)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var80!1 String)
(assert (= var80!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var80!1 "load ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ") 
(declare-const var80!2 String)
(assert (= var80!2 (str.++ var80!1 "load ")))
(assert true)
(define-const var2961 var2967 (getPersister/561804582 (cast-from-var2290-to-var129 var3758))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.loader.entity.CascadeEntityJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>() 
(define-const var473 String (var2227_getEntityName/-1914780628 (cast-from-var2967-to-var2227 var2961))) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>() 
(assert true)
(define-const var1222 String (append/672562846 var3362 var473)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var473)))
(assert true)
(define-const var230 String (toString/-2075883882 var1222)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPersister/561804582=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.Loadable), cast-from-var2290-to-var129=([org.hibernate.loader.entity.CascadeEntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), var2227_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var2967-to-var2227=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2290=org.hibernate.loader.entity.CascadeEntityJoinWalker, var3758=r1, var80=$r0, var3362=$r4, var2967=org.hibernate.persister.entity.Loadable, var129=org.hibernate.loader.AbstractEntityJoinWalker, var2961=$r2, var2227=org.hibernate.persister.entity.EntityPersister, var473=$r3, var1222=$r5, var230=$r6}
; {org.hibernate.loader.entity.CascadeEntityJoinWalker=var2290, r1=var3758, $r0=var80, $r4=var3362, org.hibernate.persister.entity.Loadable=var2967, org.hibernate.loader.AbstractEntityJoinWalker=var129, $r2=var2961, org.hibernate.persister.entity.EntityPersister=var2227, $r3=var473, $r5=var1222, $r6=var230}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.entity.CascadeEntityJoinWalker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("load ");	$r2 = virtualinvoke r1.<org.hibernate.loader.entity.CascadeEntityJoinWalker: org.hibernate.persister.entity.Loadable getPersister()>();	$r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.Loadable: java.lang.String getEntityName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1