(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3270 0)
(declare-sort var3267 0)
(declare-sort var3483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3267) ClassObject)
(declare-fun cast-from-var3270-to-var3267 (var3270) var3267)
(declare-fun hashCode/1739917532 (var3267) Int)
(declare-fun cast-from-ClassObject-to-var3267 (ClassObject) var3267)
(declare-fun fieldName/502401487 (var3270) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun featureName/502401487 (var3270) String)
(declare-fun function/502401487 (var3270) var3483)
(declare-fun cast-from-var3483-to-var3267 (var3483) var3267)
(declare-const null-var3270 var3270)
(declare-const var3867 var3270) ; Statement: r0 := @this: org.apache.lucene.document.FeatureQuery 
(assert (not (= var3867 null-var3270)))
(assert true)
(define-const var1135 ClassObject (getClass/1258963082 (cast-from-var3270-to-var3267 var3867))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2384 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3267 var1135))) ; Statement: i6 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var154 Int (* 31 var2384)) ; Statement: $i1 = 31 * i6 
(define-const var3977 String (fieldName/502401487 var3867)) ; Statement: $r2 = r0.<org.apache.lucene.document.FeatureQuery: java.lang.String fieldName> 
(assert true)
(define-const var159 Int (hashCode/-467973558 var3977)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1202 Int (+ var154 var159)) ; Statement: i7 = $i1 + $i0 
(define-const var711 Int (* 31 var1202)) ; Statement: $i3 = 31 * i7 
(define-const var2939 String (featureName/502401487 var3867)) ; Statement: $r3 = r0.<org.apache.lucene.document.FeatureQuery: java.lang.String featureName> 
(assert true)
(define-const var3862 Int (hashCode/-467973558 var2939)) ; Statement: $i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2850 Int (+ var711 var3862)) ; Statement: i8 = $i3 + $i2 
(define-const var3887 Int (* 31 var2850)) ; Statement: $i5 = 31 * i8 
(define-const var1314 var3483 (function/502401487 var3867)) ; Statement: $r4 = r0.<org.apache.lucene.document.FeatureQuery: org.apache.lucene.document.FeatureField$FeatureFunction function> 
(assert true)
(define-const var1412 Int (hashCode/1739917532 (cast-from-var3483-to-var3267 var1314))) ; Statement: $i4 = virtualinvoke $r4.<java.lang.Object: int hashCode()>() 
(define-const var3414 Int (+ var3887 var1412)) ; Statement: i9 = $i5 + $i4 
 ; Statement: return i9 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3270-to-var3267=([org.apache.lucene.document.FeatureQuery], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var3267=([java.lang.Class], java.lang.Object), fieldName/502401487=([org.apache.lucene.document.FeatureQuery], java.lang.String), hashCode/-467973558=([java.lang.String], int), featureName/502401487=([org.apache.lucene.document.FeatureQuery], java.lang.String), function/502401487=([org.apache.lucene.document.FeatureQuery], org.apache.lucene.document.FeatureField$FeatureFunction), cast-from-var3483-to-var3267=([org.apache.lucene.document.FeatureField$FeatureFunction], java.lang.Object)}
; {var3270=org.apache.lucene.document.FeatureQuery, var3867=r0, var3267=java.lang.Object, var1135=$r1, var2384=i6, var154=$i1, var3977=$r2, var159=$i0, var1202=i7, var711=$i3, var2939=$r3, var3862=$i2, var2850=i8, var3887=$i5, var3483=org.apache.lucene.document.FeatureField$FeatureFunction, var1314=$r4, var1412=$i4, var3414=i9}
; {org.apache.lucene.document.FeatureQuery=var3270, r0=var3867, java.lang.Object=var3267, $r1=var1135, i6=var2384, $i1=var154, $r2=var3977, $i0=var159, i7=var1202, $i3=var711, $r3=var2939, $i2=var3862, i8=var2850, $i5=var3887, org.apache.lucene.document.FeatureField$FeatureFunction=var3483, $r4=var1314, $i4=var1412, i9=var3414}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.apache.lucene.document.FeatureQuery;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	i6 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	$i1 = 31 * i6;	$r2 = r0.<org.apache.lucene.document.FeatureQuery: java.lang.String fieldName>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i7 = $i1 + $i0;	$i3 = 31 * i7;	$r3 = r0.<org.apache.lucene.document.FeatureQuery: java.lang.String featureName>;	$i2 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i8 = $i3 + $i2;	$i5 = 31 * i8;	$r4 = r0.<org.apache.lucene.document.FeatureQuery: org.apache.lucene.document.FeatureField$FeatureFunction function>;	$i4 = virtualinvoke $r4.<java.lang.Object: int hashCode()>();	i9 = $i5 + $i4;	return i9
;block_num 1