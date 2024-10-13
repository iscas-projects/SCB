(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort var2013 0)
(declare-sort var3872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2013) String)
(declare-const null-String String)
(declare-const var2013-ROOT var2013)
(declare-const var3872-COLLECTION_INDEX_LOWER String)
(declare-const var3844 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3844 null-String)))
(define-const var2945 var2013 var2013-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2855 String (toLowerCase/1946809429 var3844 var2945)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2816 String var3872-COLLECTION_INDEX_LOWER) ; Statement: $r3 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER> 
(assert true)
(define-const var404 Bool (= var2816 var2855)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES> 
(assert (not (= (ite var404 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3844=r0, var3905=null_type, var2013=java.util.Locale, var2945=$r1, var2855=r2, var3872=org.hibernate.hql.internal.CollectionProperties, var2816=$r3, var404=$z0}
; {r0=var3844, null_type=var3905, java.util.Locale=var2013, $r1=var2945, r2=var2855, org.hibernate.hql.internal.CollectionProperties=var3872, $r3=var2816, $z0=var404}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r3 = <org.hibernate.hql.internal.CollectionProperties: java.lang.String COLLECTION_INDEX_LOWER>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = <org.hibernate.hql.internal.CollectionProperties: java.util.Map HQL_COLLECTION_PROPERTIES>;	return 0
;block_num 2