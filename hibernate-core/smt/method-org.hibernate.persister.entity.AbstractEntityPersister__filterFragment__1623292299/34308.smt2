(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort var3447 0)
(declare-sort var304 0)
(declare-sort var1365 0)
(declare-sort var190 0)
(declare-sort var335 0)
(declare-sort var959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filterHelper/824079012 (var1084) var190)
(declare-fun getFilterAliasGenerator/-54881581 (var959 String) var335)
(declare-fun cast-from-var1084-to-var959 (var1084) var959)
(declare-fun render/2062854292 (var190 String var335 var304) void)
(declare-fun filterFragment/-1350872421 (var1084 String var1365) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1084 var1084)
(declare-const null-String String)
(declare-const null-var304 var304)
(declare-const null-var1365 var1365)
(declare-const var555 var1084) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var555 null-var1084)))
(declare-const var245 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
(declare-const var76 var304) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var76 null-var304)))
(declare-const var3335 var1365) ; Statement: r6 := @parameter2: java.util.Set 
(assert (not (= var3335 null-var1365)))
(define-const var1436 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1436)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1436!1 String)
(assert (= var1436!1 ""))
(define-const var3394 var190 (filterHelper/824079012 var555)) ; Statement: $r3 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterHelper filterHelper> 
(assert true)
(define-const var3724 var335 (getFilterAliasGenerator/-54881581 (cast-from-var1084-to-var959 var555) var245)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2) 
(assert true)
;(assert (render/2062854292 var3394 var1436!1 var3724 var76)) ; Statement: virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4) 

(declare-const var3394!1 var190)
(declare-const var1436!2 String)
(declare-const var3724!1 var335)
(declare-const var76!1 var304)
(assert true)
(define-const var3613 String (filterFragment/-1350872421 var555 var245 var3335)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String filterFragment(java.lang.String,java.util.Set)>(r2, r6) 
(assert true)
(define-const var3663 String (append/672562846 var1436!2 var3613)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1436!3 String)
(assert (= var1436!3 (str.++ var1436!2 var3613)))
(assert true)
(define-const var2217 String (toString/-2075883882 var3663)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filterHelper/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.internal.FilterHelper), getFilterAliasGenerator/-54881581=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.internal.FilterAliasGenerator), cast-from-var1084-to-var959=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), filterFragment/-1350872421=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, java.util.Set], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1084=org.hibernate.persister.entity.AbstractEntityPersister, var555=r1, var245=r2, var3447=null_type, var304=java.util.Map, var76=r4, var1365=java.util.Set, var3335=r6, var1436=$r0, var190=org.hibernate.internal.FilterHelper, var3394=$r3, var335=org.hibernate.internal.FilterAliasGenerator, var959=org.hibernate.persister.entity.EntityPersister, var3724=$r5, var3613=$r7, var3663=$r8, var2217=$r9}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1084, r1=var555, r2=var245, null_type=var3447, java.util.Map=var304, r4=var76, java.util.Set=var1365, r6=var3335, $r0=var1436, org.hibernate.internal.FilterHelper=var190, $r3=var3394, org.hibernate.internal.FilterAliasGenerator=var335, org.hibernate.persister.entity.EntityPersister=var959, $r5=var3724, $r7=var3613, $r8=var3663, $r9=var2217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Map;	r6 := @parameter2: java.util.Set;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterHelper filterHelper>;	$r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2);	virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4);	$r7 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String filterFragment(java.lang.String,java.util.Set)>(r2, r6);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1