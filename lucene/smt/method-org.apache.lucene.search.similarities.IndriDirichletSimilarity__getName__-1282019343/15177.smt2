(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1074 0)
(declare-sort var917 0)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2554-init () (Array Int var2554))
(declare-fun getMu/-711728279 (var1074) Float32)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var2554 (Float32) var2554)
(declare-fun String_format/-647569892 (var917 String (Array Int var2554)) String)
(declare-const null-var1074 var1074)
(declare-const var917-ROOT var917)
(declare-const null-__Array__Int__var2554__ (Array Int var2554))
(declare-const var3650 var1074) ; Statement: r1 := @this: org.apache.lucene.search.similarities.IndriDirichletSimilarity 
(assert (not (= var3650 null-var1074)))
(define-const var1594 var917 var917-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2163 (Array Int var2554) arr-var2554-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2023 Float32 (getMu/-711728279 var3650)) ; Statement: $f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.IndriDirichletSimilarity: float getMu()>() 
(define-const var3270 Float32 (Float32_valueOf/-1292433465 var2023)) ; Statement: $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0) 
(declare-const var2163!1 (Array Int var2554))
(assert (not (= var2163!1 null-__Array__Int__var2554__)))
(assert (= (select var2163!1 0) (cast-from-Float32-to-var2554 var3270))) ; Statement: $r0[0] = $r3 
(define-const var1002 String (String_format/-647569892 var1594 "IndriDirichlet(%f)" var2163!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "IndriDirichlet(%f)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2554-init=([], java.lang.Object[]), getMu/-711728279=([org.apache.lucene.search.similarities.IndriDirichletSimilarity], float), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var2554=([java.lang.Float], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1074=org.apache.lucene.search.similarities.IndriDirichletSimilarity, var3650=r1, var917=java.util.Locale, var1594=$r2, var2554=java.lang.Object, var2163=$r0, var2023=$f0, var3270=$r3, var1002=$r4}
; {org.apache.lucene.search.similarities.IndriDirichletSimilarity=var1074, r1=var3650, java.util.Locale=var917, $r2=var1594, java.lang.Object=var2554, $r0=var2163, $f0=var2023, $r3=var3270, $r4=var1002}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.search.similarities.IndriDirichletSimilarity;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.IndriDirichletSimilarity: float getMu()>();	$r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "IndriDirichlet(%f)", $r0);	return $r4
;block_num 1