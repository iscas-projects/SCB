(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3664 0)
(declare-sort var1878 0)
(declare-sort var215 0)
(declare-sort var1461 0)
(declare-sort var3044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filterHelper/835828228 (var3664) var1461)
(declare-fun getFilterAliasGenerator/-49926223 (var3664 String) var3044)
(declare-fun render/2062854292 (var1461 String var3044 var215) void)
(declare-fun filterFragment/-363973243 (var3664 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3664 var3664)
(declare-const null-String String)
(declare-const null-var215 var215)
(declare-const var433 var3664) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var433 null-var3664)))
(declare-const var520 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var520 null-String)))
(declare-const var371 var215) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var371 null-var215)))
(define-const var3449 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3449)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3449!1 String)
(assert (= var3449!1 ""))
(define-const var31 var1461 (filterHelper/835828228 var433)) ; Statement: $r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper filterHelper> 
(assert true)
(define-const var2029 var3044 (getFilterAliasGenerator/-49926223 var433 var520)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2) 
(assert true)
;(assert (render/2062854292 var31 var3449!1 var2029 var371)) ; Statement: virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4) 

(declare-const var31!1 var1461)
(declare-const var3449!2 String)
(declare-const var2029!1 var3044)
(declare-const var371!1 var215)
(assert true)
(define-const var3433 String (filterFragment/-363973243 var433 var520)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String filterFragment(java.lang.String)>(r2) 
(assert true)
(define-const var2193 String (append/672562846 var3449!2 var3433)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3449!3 String)
(assert (= var3449!3 (str.++ var3449!2 var3433)))
(assert true)
(define-const var1180 String (toString/-2075883882 var2193)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filterHelper/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.internal.FilterHelper), getFilterAliasGenerator/-49926223=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String], org.hibernate.internal.FilterAliasGenerator), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), filterFragment/-363973243=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3664=org.hibernate.persister.collection.AbstractCollectionPersister, var433=r1, var520=r2, var1878=null_type, var215=java.util.Map, var371=r4, var3449=$r0, var1461=org.hibernate.internal.FilterHelper, var31=$r3, var3044=org.hibernate.internal.FilterAliasGenerator, var2029=$r5, var3433=$r6, var2193=$r7, var1180=$r8}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3664, r1=var433, r2=var520, null_type=var1878, java.util.Map=var215, r4=var371, $r0=var3449, org.hibernate.internal.FilterHelper=var1461, $r3=var31, org.hibernate.internal.FilterAliasGenerator=var3044, $r5=var2029, $r6=var3433, $r7=var2193, $r8=var1180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper filterHelper>;	$r5 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2);	virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4);	$r6 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String filterFragment(java.lang.String)>(r2);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1