(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2316 0)
(declare-sort var2599 0)
(declare-sort var3326 0)
(declare-sort var3197 0)
(declare-sort var1562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2599) String)
(declare-fun var3326_containsKey/1715618542 (var3326 var1562) Bool)
(declare-fun cast-from-String-to-var1562 (String) var1562)
(declare-const null-String String)
(declare-const var2599-ROOT var2599)
(declare-const var3197-HQL_COLLECTION_PROPERTIES var3326)
(declare-const var1467 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1467 null-String)))
(define-const var2024 var2599 var2599-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3061 String (toLowerCase/1946809429 var1467 var2024)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3842 var3326 var3197-HQL_COLLECTION_PROPERTIES) ; Statement: $r3 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(define-const var822 Bool (var3326_containsKey/1715618542 var3842 (cast-from-String-to-var1562 var3061))) ; Statement: $z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>(r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3326_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1562=([java.lang.String], java.lang.Object)}
; {var1467=r0, var2316=null_type, var2599=java.util.Locale, var2024=$r1, var3061=r2, var3326=java.util.Map, var3197=org.hibernate.hql.internal.CollectionProperties, var3842=$r3, var1562=java.lang.Object, var822=$z0}
; {r0=var1467, null_type=var2316, java.util.Locale=var2599, $r1=var2024, r2=var3061, java.util.Map=var3326, org.hibernate.hql.internal.CollectionProperties=var3197, $r3=var3842, java.lang.Object=var1562, $z0=var822}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	$z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>(r2);	return $z0
;block_num 1