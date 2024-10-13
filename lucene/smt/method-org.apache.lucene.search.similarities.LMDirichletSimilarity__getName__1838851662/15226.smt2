(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var3661 0)
(declare-sort var439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var439-init () (Array Int var439))
(declare-fun getMu/1177885164 (var701) Float32)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var439 (Float32) var439)
(declare-fun String_format/-647569892 (var3661 String (Array Int var439)) String)
(declare-const null-var701 var701)
(declare-const var3661-ROOT var3661)
(declare-const null-__Array__Int__var439__ (Array Int var439))
(declare-const var1965 var701) ; Statement: r1 := @this: org.apache.lucene.search.similarities.LMDirichletSimilarity 
(assert (not (= var1965 null-var701)))
(define-const var1391 var3661 var3661-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var130 (Array Int var439) arr-var439-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1567 Float32 (getMu/1177885164 var1965)) ; Statement: $f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.LMDirichletSimilarity: float getMu()>() 
(define-const var168 Float32 (Float32_valueOf/-1292433465 var1567)) ; Statement: $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0) 
(declare-const var130!1 (Array Int var439))
(assert (not (= var130!1 null-__Array__Int__var439__)))
(assert (= (select var130!1 0) (cast-from-Float32-to-var439 var168))) ; Statement: $r0[0] = $r3 
(define-const var1708 String (String_format/-647569892 var1391 "Dirichlet(%f)" var130!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "Dirichlet(%f)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var439-init=([], java.lang.Object[]), getMu/1177885164=([org.apache.lucene.search.similarities.LMDirichletSimilarity], float), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var439=([java.lang.Float], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var701=org.apache.lucene.search.similarities.LMDirichletSimilarity, var1965=r1, var3661=java.util.Locale, var1391=$r2, var439=java.lang.Object, var130=$r0, var1567=$f0, var168=$r3, var1708=$r4}
; {org.apache.lucene.search.similarities.LMDirichletSimilarity=var701, r1=var1965, java.util.Locale=var3661, $r2=var1391, java.lang.Object=var439, $r0=var130, $f0=var1567, $r3=var168, $r4=var1708}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.search.similarities.LMDirichletSimilarity;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.LMDirichletSimilarity: float getMu()>();	$r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "Dirichlet(%f)", $r0);	return $r4
;block_num 1