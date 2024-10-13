(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3949 0)
(declare-sort var2501 0)
(declare-sort var3870 0)
(declare-sort var713 0)
(declare-sort var2893 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2501) void)
(declare-fun cast-from-var3949-to-var2501 (var3949) var2501)
(declare-fun var713_bootstrap$/-524909572 (var3949) var3870)
(declare-fun var2893_doPrivileged/1828555841 (var3870) var2501)
(declare-fun cast-from-var2501-to-var2859 (var2501) var2859)
(declare-fun booleanValue/-1820462562 (var2859) Bool)
(declare-fun isDeprecatedRewriteMethodOverridden/-94838440 (var3949) Bool)
(declare-fun getClass/1258963082 (var2501) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun CLASS_NAME_HASH/-94838440 (var3949) Int)
(declare-const null-var3949 var3949)
(declare-const var3964 var3949) ; Statement: r0 := @this: org.apache.lucene.search.Query 
(assert (not (= var3964 null-var3949)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3949-to-var2501 var3964))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3964!1 var3949)
(define-const var3225 var3870 (var713_bootstrap$/-524909572 var3964!1)) ; Statement: $r1 = staticinvoke <org.apache.lucene.search.Query$lambda_new_0__346: java.security.PrivilegedAction bootstrap$(org.apache.lucene.search.Query)>(r0) 
(define-const var3926 var2501 (var2893_doPrivileged/1828555841 var3225)) ; Statement: $r2 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r1) 
(define-const var1833 var2859 (cast-from-var2501-to-var2859 var3926)) ; Statement: $r3 = (java.lang.Boolean) $r2 
(assert true)
(define-const var1638 Bool (booleanValue/-1820462562 var1833)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3964!2 var3949)
(assert (not (= var3964!2 null-var3949)))
(assert (= (isDeprecatedRewriteMethodOverridden/-94838440 var3964!2) var1638)) ; Statement: r0.<org.apache.lucene.search.Query: boolean isDeprecatedRewriteMethodOverridden> = $z0 
(assert true)
(define-const var1828 ClassObject (getClass/1258963082 (cast-from-var3949-to-var2501 var3964!2))) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1507 String (getName/-1958580599 var1828)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3119 Int (hashCode/-467973558 var1507)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
(declare-const var3964!3 var3949)
(assert (not (= var3964!3 null-var3949)))
(assert (= (CLASS_NAME_HASH/-94838440 var3964!3) var3119)) ; Statement: r0.<org.apache.lucene.search.Query: int CLASS_NAME_HASH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3949-to-var2501=([org.apache.lucene.search.Query], java.lang.Object), var713_bootstrap$/-524909572=([org.apache.lucene.search.Query], java.security.PrivilegedAction), var2893_doPrivileged/1828555841=([java.security.PrivilegedAction], java.lang.Object), cast-from-var2501-to-var2859=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), isDeprecatedRewriteMethodOverridden/-94838440=([org.apache.lucene.search.Query], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), CLASS_NAME_HASH/-94838440=([org.apache.lucene.search.Query], int)}
; {var3949=org.apache.lucene.search.Query, var3964=r0, var2501=java.lang.Object, var3870=java.security.PrivilegedAction, var713=org.apache.lucene.search.Query$lambda_new_0__346, var3225=$r1, var2893=java.security.AccessController, var3926=$r2, var2859=java.lang.Boolean, var1833=$r3, var1638=$z0, var1828=$r4, var1507=$r5, var3119=$i0}
; {org.apache.lucene.search.Query=var3949, r0=var3964, java.lang.Object=var2501, java.security.PrivilegedAction=var3870, org.apache.lucene.search.Query$lambda_new_0__346=var713, $r1=var3225, java.security.AccessController=var2893, $r2=var3926, java.lang.Boolean=var2859, $r3=var1833, $z0=var1638, $r4=var1828, $r5=var1507, $i0=var3119}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.lucene.search.Query;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = staticinvoke <org.apache.lucene.search.Query$lambda_new_0__346: java.security.PrivilegedAction bootstrap$(org.apache.lucene.search.Query)>(r0);	$r2 = staticinvoke <java.security.AccessController: java.lang.Object doPrivileged(java.security.PrivilegedAction)>($r1);	$r3 = (java.lang.Boolean) $r2;	$z0 = virtualinvoke $r3.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.apache.lucene.search.Query: boolean isDeprecatedRewriteMethodOverridden> = $z0;	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	r0.<org.apache.lucene.search.Query: int CLASS_NAME_HASH> = $i0;	return
;block_num 1