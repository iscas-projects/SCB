(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1847 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3031) void)
(declare-fun cast-from-var1847-to-var3031 (var1847) var3031)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun indexValue/-190461038 (var1847) String)
(declare-const null-var1847 var1847)
(declare-const var2299 var1847) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement 
(assert (not (= var2299 null-var1847)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1847-to-var3031 var2299))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2299!1 var1847)
(define-const var3836 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3836)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3836!1 String)
(assert (= var3836!1 ""))
(declare-const var2299!2 var1847)
(assert (not (= var2299!2 null-var1847)))
(assert (= (indexValue/-190461038 var2299!2) var3836!1)) ; Statement: r0.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1847-to-var3031=([org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), indexValue/-190461038=([org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], java.lang.StringBuilder)}
; {var1847=org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement, var2299=r0, var3031=java.lang.Object, var3836=$r1}
; {org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement=var1847, r0=var2299, java.lang.Object=var3031, $r1=var3836}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue> = $r1;	return
;block_num 1