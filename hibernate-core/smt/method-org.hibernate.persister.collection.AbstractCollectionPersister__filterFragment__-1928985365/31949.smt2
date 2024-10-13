(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var158 0)
(declare-sort var1729 0)
(declare-sort var1588 0)
(declare-sort var2639 0)
(declare-sort var3276 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filterHelper/835828228 (var158) var3276)
(declare-fun getFilterAliasGenerator/-49926223 (var158 String) var3661)
(declare-fun render/2062854292 (var3276 String var3661 var1588) void)
(declare-fun filterFragment/1096631803 (var158 String var2639) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var158 var158)
(declare-const null-String String)
(declare-const null-var1588 var1588)
(declare-const null-var2639 var2639)
(declare-const var1522 var158) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1522 null-var158)))
(declare-const var3348 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3348 null-String)))
(declare-const var1418 var1588) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var1418 null-var1588)))
(declare-const var605 var2639) ; Statement: r6 := @parameter2: java.util.Set 
(assert (not (= var605 null-var2639)))
(define-const var2706 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2706)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2706!1 String)
(assert (= var2706!1 ""))
(define-const var78 var3276 (filterHelper/835828228 var1522)) ; Statement: $r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper filterHelper> 
(assert true)
(define-const var2918 var3661 (getFilterAliasGenerator/-49926223 var1522 var3348)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2) 
(assert true)
;(assert (render/2062854292 var78 var2706!1 var2918 var1418)) ; Statement: virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4) 

(declare-const var78!1 var3276)
(declare-const var2706!2 String)
(declare-const var2918!1 var3661)
(declare-const var1418!1 var1588)
(assert true)
(define-const var3106 String (filterFragment/1096631803 var1522 var3348 var605)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String filterFragment(java.lang.String,java.util.Set)>(r2, r6) 
(assert true)
(define-const var644 String (append/672562846 var2706!2 var3106)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2706!3 String)
(assert (= var2706!3 (str.++ var2706!2 var3106)))
(assert true)
(define-const var234 String (toString/-2075883882 var644)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filterHelper/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.internal.FilterHelper), getFilterAliasGenerator/-49926223=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String], org.hibernate.internal.FilterAliasGenerator), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), filterFragment/1096631803=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String, java.util.Set], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var158=org.hibernate.persister.collection.AbstractCollectionPersister, var1522=r1, var3348=r2, var1729=null_type, var1588=java.util.Map, var1418=r4, var2639=java.util.Set, var605=r6, var2706=$r0, var3276=org.hibernate.internal.FilterHelper, var78=$r3, var3661=org.hibernate.internal.FilterAliasGenerator, var2918=$r5, var3106=$r7, var644=$r8, var234=$r9}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var158, r1=var1522, r2=var3348, null_type=var1729, java.util.Map=var1588, r4=var1418, java.util.Set=var2639, r6=var605, $r0=var2706, org.hibernate.internal.FilterHelper=var3276, $r3=var78, org.hibernate.internal.FilterAliasGenerator=var3661, $r5=var2918, $r7=var3106, $r8=var644, $r9=var234}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Map;	r6 := @parameter2: java.util.Set;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper filterHelper>;	$r5 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2);	virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4);	$r7 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String filterFragment(java.lang.String,java.util.Set)>(r2, r6);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1