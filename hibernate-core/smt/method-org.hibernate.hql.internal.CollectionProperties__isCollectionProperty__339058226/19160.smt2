(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1686 0)
(declare-sort var2347 0)
(declare-sort var1228 0)
(declare-sort var3330 0)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2347) String)
(declare-fun var3330_containsKey/1715618542 (var3330 var654) Bool)
(declare-fun cast-from-String-to-var654 (String) var654)
(declare-const null-String String)
(declare-const var2347-ROOT var2347)
(declare-const var1228-COLLECTION_INDEX_LOWER String)
(declare-const var1228-HQL_COLLECTION_PROPERTIES var3330)
(declare-const var2677 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2677 null-String)))
(define-const var1848 var2347 var2347-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1385 String (toLowerCase/1946809429 var2677 var1848)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var1603 String var1228-COLLECTION_INDEX_LOWER) ; Statement: $r3 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER> 
(assert true)
(define-const var1677 Bool (= var1603 var1385)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(assert (= (ite var1677 1 0) 0)) ; Cond: $z0 == 0 
(define-const var712 var3330 var1228-HQL_COLLECTION_PROPERTIES) ; Statement: $r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var1605 Bool (var3330_containsKey/1715618542 var712 (cast-from-String-to-var654 var1385))) ; Statement: $z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>(r2) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3330_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var654=([java.lang.String], java.lang.Object)}
; {var2677=r0, var1686=null_type, var2347=java.util.Locale, var1848=$r1, var1385=r2, var1228=org.hibernate.hql.internal.CollectionProperties, var1603=$r3, var1677=$z0, var3330=java.util.Map, var712=$r4, var654=java.lang.Object, var1605=$z1}
; {r0=var2677, null_type=var1686, java.util.Locale=var2347, $r1=var1848, r2=var1385, org.hibernate.hql.internal.CollectionProperties=var1228, $r3=var1603, $z0=var1677, java.util.Map=var3330, $r4=var712, java.lang.Object=var654, $z1=var1605}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$z1 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>(r2);	return $z1
;block_num 2