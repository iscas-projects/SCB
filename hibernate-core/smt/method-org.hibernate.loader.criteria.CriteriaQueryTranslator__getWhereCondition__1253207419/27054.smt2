(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3228 0)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun rootCriteria/333213257 (var3228) var2986)
(declare-fun iterateExpressionEntries/369233729 (var2986) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3228 var3228)
(declare-const var3299 var3228) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var3299 null-var3228)))
(define-const var1336 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1336 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var1336!1 String)
(declare-const var1193 Int)
(define-const var1994 var2986 (rootCriteria/333213257 var3299)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var2873 Iterator (iterateExpressionEntries/369233729 var1994)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.internal.CriteriaImpl: java.util.Iterator iterateExpressionEntries()>() 
(assert true) ; Non Conditional
(define-const var3873 Bool (Iterator_hasNext/-1669924200 var2873)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3873 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2940 String (toString/-2075883882 var1336!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), iterateExpressionEntries/369233729=([org.hibernate.internal.CriteriaImpl], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3228=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3299=r1, var1336=$r0, var1193=30, var2986=org.hibernate.internal.CriteriaImpl, var1994=$r2, var2873=r3, var3873=$z0, var2940=$r4}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var3228, r1=var3299, $r0=var1336, 30=var1193, org.hibernate.internal.CriteriaImpl=var2986, $r2=var1994, r3=var2873, $z0=var3873, $r4=var2940}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	r3 = virtualinvoke $r2.<org.hibernate.internal.CriteriaImpl: java.util.Iterator iterateExpressionEntries()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3