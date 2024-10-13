(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3037 0)
(declare-sort var2732 0)
(declare-sort var3908 0)
(declare-sort var547 0)
(declare-sort var1063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionElements/2096745176 (var3037) var3908)
(declare-fun getLast/1818428709 (var3908) var547)
(declare-fun cast-from-var547-to-var1063 (var547) var1063)
(declare-fun indexValue/-190461038 (var1063) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3037 var3037)
(declare-const null-String String)
(declare-const var3742 var3037) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var3742 null-var3037)))
(declare-const var2250 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2250 null-String)))
(define-const var131 var3908 (collectionElements/2096745176 var3742)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.util.LinkedList collectionElements> 
(assert true)
(define-const var1630 var547 (getLast/1818428709 var131)) ; Statement: $r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object getLast()>() 
(define-const var669 var1063 (cast-from-var547-to-var1063 var1630)) ; Statement: $r3 = (org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement) $r2 
(define-const var3276 String (indexValue/-190461038 var669)) ; Statement: $r5 = $r3.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue> 
(assert true)
;(assert (append/672562846 var3276 var2250)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3276!1 String)
(assert (= var3276!1 (str.++ var3276 var2250)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionElements/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.util.LinkedList), getLast/1818428709=([java.util.LinkedList], java.lang.Object), cast-from-var547-to-var1063=([java.lang.Object], org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement), indexValue/-190461038=([org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3037=org.hibernate.hql.internal.classic.PathExpressionParser, var3742=r0, var2250=r4, var2732=null_type, var3908=java.util.LinkedList, var131=$r1, var547=java.lang.Object, var1630=$r2, var1063=org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement, var669=$r3, var3276=$r5}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var3037, r0=var3742, r4=var2250, null_type=var2732, java.util.LinkedList=var3908, $r1=var131, java.lang.Object=var547, $r2=var1630, org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement=var1063, $r3=var669, $r5=var3276}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.util.LinkedList collectionElements>;	$r2 = virtualinvoke $r1.<java.util.LinkedList: java.lang.Object getLast()>();	$r3 = (org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement) $r2;	$r5 = $r3.<org.hibernate.hql.internal.classic.PathExpressionParser$CollectionElement: java.lang.StringBuilder indexValue>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	return
;block_num 1