(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3824 0)
(declare-sort var442 0)
(declare-sort var1267 0)
(declare-sort var1768 0)
(declare-sort var2649 0)
(declare-sort var1747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun manyToManyFilterHelper/835828228 (var3824) var1768)
(declare-fun elementPersister/835828228 (var3824) var2649)
(declare-fun var2649_getFilterAliasGenerator/-54881581 (var2649 String) var1747)
(declare-fun render/2062854292 (var1768 String var1747 var1267) void)
(declare-fun manyToManyWhereString/835828228 (var3824) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3824 var3824)
(declare-const null-String String)
(declare-const null-var1267 var1267)
(declare-const var3442 var3824) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var3442 null-var3824)))
(declare-const var440 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var440 null-String)))
(declare-const var1593 var1267) ; Statement: r5 := @parameter1: java.util.Map 
(assert (not (= var1593 null-var1267)))
(define-const var690 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var690)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var690!1 String)
(assert (= var690!1 ""))
(define-const var766 var1768 (manyToManyFilterHelper/835828228 var3442)) ; Statement: $r4 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper manyToManyFilterHelper> 
(define-const var304 var2649 (elementPersister/835828228 var3442)) ; Statement: $r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.EntityPersister elementPersister> 
(define-const var776 var1747 (var2649_getFilterAliasGenerator/-54881581 var304 var440)) ; Statement: $r6 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2) 
(assert true)
;(assert (render/2062854292 var766 var690!1 var776 var1593)) ; Statement: virtualinvoke $r4.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r6, r5) 

(declare-const var766!1 var1768)
(declare-const var690!2 String)
(declare-const var776!1 var1747)
(declare-const var1593!1 var1267)
(define-const var3422 String (manyToManyWhereString/835828228 var3442)) ; Statement: $r7 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String manyToManyWhereString> 
 ; Statement: if $r7 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3422 null-String)) ; Cond: $r7 == null 
(assert true)
(define-const var3223 String (toString/-2075883882 var690!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), manyToManyFilterHelper/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.internal.FilterHelper), elementPersister/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.EntityPersister), var2649_getFilterAliasGenerator/-54881581=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.internal.FilterAliasGenerator), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), manyToManyWhereString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3824=org.hibernate.persister.collection.AbstractCollectionPersister, var3442=r1, var440=r2, var442=null_type, var1267=java.util.Map, var1593=r5, var690=$r0, var1768=org.hibernate.internal.FilterHelper, var766=$r4, var2649=org.hibernate.persister.entity.EntityPersister, var304=$r3, var1747=org.hibernate.internal.FilterAliasGenerator, var776=$r6, var3422=$r7, var3223=$r8}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3824, r1=var3442, r2=var440, null_type=var442, java.util.Map=var1267, r5=var1593, $r0=var690, org.hibernate.internal.FilterHelper=var1768, $r4=var766, org.hibernate.persister.entity.EntityPersister=var2649, $r3=var304, org.hibernate.internal.FilterAliasGenerator=var1747, $r6=var776, $r7=var3422, $r8=var3223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.internal.FilterHelper manyToManyFilterHelper>;	$r3 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.EntityPersister elementPersister>;	$r6 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2);	virtualinvoke $r4.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r6, r5);	$r7 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String manyToManyWhereString>;	if $r7 == null goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2