(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort var805 0)
(declare-sort var3574 0)
(declare-sort var2029 0)
(declare-sort var1183 0)
(declare-sort var92 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2029-init () (Array Int var2029))
(declare-fun getClass/1258963082 (var2029) ClassObject)
(declare-fun cast-from-var1475-to-var2029 (var1475) var2029)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2029 (String) var2029)
(declare-fun target/-1292238762 (var1475) (Array Int Float32))
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var2029 (Float32) var2029)
(declare-fun traversalSimilarity/2088866160 (var1183) Float32)
(declare-fun cast-from-var1475-to-var1183 (var1475) var1183)
(declare-fun resultSimilarity/2088866160 (var1183) Float32)
(declare-fun filter/2088866160 (var1183) var92)
(declare-fun cast-from-var92-to-var2029 (var92) var2029)
(declare-fun String_format/-647569892 (var3574 String (Array Int var2029)) String)
(declare-const null-var1475 var1475)
(declare-const null-String String)
(declare-const var3574-ROOT var3574)
(declare-const null-__Array__Int__var2029__ (Array Int var2029))
(declare-const var1565 var1475) ; Statement: r1 := @this: org.apache.lucene.search.FloatVectorSimilarityQuery 
(assert (not (= var1565 null-var1475)))
(declare-const var3252 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3252 null-String)))
(define-const var1885 var3574 var3574-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1273 (Array Int var2029) arr-var2029-init) ; Statement: $r0 = newarray (java.lang.Object)[6] 
(assert true)
(define-const var1823 ClassObject (getClass/1258963082 (cast-from-var1475-to-var2029 var1565))) ; Statement: $r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1995 String (getSimpleName/-390194377 var1823)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var1273!1 (Array Int var2029))
(assert (not (= var1273!1 null-__Array__Int__var2029__)))
(assert (= (select var1273!1 0) (cast-from-String-to-var2029 var1995))) ; Statement: $r0[0] = $r4 
(declare-const var1273!2 (Array Int var2029))
(assert (not (= var1273!2 null-__Array__Int__var2029__)))
(assert (= (select var1273!2 1) (cast-from-String-to-var2029 var3252))) ; Statement: $r0[1] = r5 
(define-const var1155 (Array Int Float32) (target/-1292238762 var1565)) ; Statement: $r6 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float[] target> 
(define-const var1526 Float32 (select var1155 0)) ; Statement: $f0 = $r6[0] 
(define-const var2226 Float32 (Float32_valueOf/-1292433465 var1526)) ; Statement: $r7 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0) 
(declare-const var1273!3 (Array Int var2029))
(assert (not (= var1273!3 null-__Array__Int__var2029__)))
(assert (= (select var1273!3 2) (cast-from-Float32-to-var2029 var2226))) ; Statement: $r0[2] = $r7 
(define-const var1835 Float32 (traversalSimilarity/2088866160 (cast-from-var1475-to-var1183 var1565))) ; Statement: $f1 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float traversalSimilarity> 
(define-const var1856 Float32 (Float32_valueOf/-1292433465 var1835)) ; Statement: $r8 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f1) 
(declare-const var1273!4 (Array Int var2029))
(assert (not (= var1273!4 null-__Array__Int__var2029__)))
(assert (= (select var1273!4 3) (cast-from-Float32-to-var2029 var1856))) ; Statement: $r0[3] = $r8 
(define-const var3210 Float32 (resultSimilarity/2088866160 (cast-from-var1475-to-var1183 var1565))) ; Statement: $f2 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float resultSimilarity> 
(define-const var3549 Float32 (Float32_valueOf/-1292433465 var3210)) ; Statement: $r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f2) 
(declare-const var1273!5 (Array Int var2029))
(assert (not (= var1273!5 null-__Array__Int__var2029__)))
(assert (= (select var1273!5 4) (cast-from-Float32-to-var2029 var3549))) ; Statement: $r0[4] = $r9 
(define-const var183 var92 (filter/2088866160 (cast-from-var1475-to-var1183 var1565))) ; Statement: $r10 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: org.apache.lucene.search.Query filter> 
(declare-const var1273!6 (Array Int var2029))
(assert (not (= var1273!6 null-__Array__Int__var2029__)))
(assert (= (select var1273!6 5) (cast-from-var92-to-var2029 var183))) ; Statement: $r0[5] = $r10 
(define-const var991 String (String_format/-647569892 var1885 "%s[field=%s target=[%f...] traversalSimilarity=%f resultSimilarity=%f filter=%s]" var1273!6)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s[field=%s target=[%f...] traversalSimilarity=%f resultSimilarity=%f filter=%s]", $r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2029-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1475-to-var2029=([org.apache.lucene.search.FloatVectorSimilarityQuery], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2029=([java.lang.String], java.lang.Object), target/-1292238762=([org.apache.lucene.search.FloatVectorSimilarityQuery], float[]), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var2029=([java.lang.Float], java.lang.Object), traversalSimilarity/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], float), cast-from-var1475-to-var1183=([org.apache.lucene.search.FloatVectorSimilarityQuery], org.apache.lucene.search.AbstractVectorSimilarityQuery), resultSimilarity/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], float), filter/2088866160=([org.apache.lucene.search.AbstractVectorSimilarityQuery], org.apache.lucene.search.Query), cast-from-var92-to-var2029=([org.apache.lucene.search.Query], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1475=org.apache.lucene.search.FloatVectorSimilarityQuery, var1565=r1, var3252=r5, var805=null_type, var3574=java.util.Locale, var1885=$r2, var2029=java.lang.Object, var1273=$r0, var1823=$r3, var1995=$r4, var1155=$r6, var1526=$f0, var2226=$r7, var1183=org.apache.lucene.search.AbstractVectorSimilarityQuery, var1835=$f1, var1856=$r8, var3210=$f2, var3549=$r9, var92=org.apache.lucene.search.Query, var183=$r10, var991=$r11}
; {org.apache.lucene.search.FloatVectorSimilarityQuery=var1475, r1=var1565, r5=var3252, null_type=var805, java.util.Locale=var3574, $r2=var1885, java.lang.Object=var2029, $r0=var1273, $r3=var1823, $r4=var1995, $r6=var1155, $f0=var1526, $r7=var2226, org.apache.lucene.search.AbstractVectorSimilarityQuery=var1183, $f1=var1835, $r8=var1856, $f2=var3210, $r9=var3549, org.apache.lucene.search.Query=var92, $r10=var183, $r11=var991}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.search.FloatVectorSimilarityQuery;	r5 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[6];	$r3 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r4;	$r0[1] = r5;	$r6 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float[] target>;	$f0 = $r6[0];	$r7 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0);	$r0[2] = $r7;	$f1 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float traversalSimilarity>;	$r8 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f1);	$r0[3] = $r8;	$f2 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: float resultSimilarity>;	$r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f2);	$r0[4] = $r9;	$r10 = r1.<org.apache.lucene.search.FloatVectorSimilarityQuery: org.apache.lucene.search.Query filter>;	$r0[5] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%s[field=%s target=[%f...] traversalSimilarity=%f resultSimilarity=%f filter=%s]", $r0);	return $r11
;block_num 1