(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var263 0)
(declare-sort var1366 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1514-init () (Array Int var1514))
(declare-fun getLambda/1702319429 (var263) Float32)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun cast-from-Float32-to-var1514 (Float32) var1514)
(declare-fun String_format/-647569892 (var1366 String (Array Int var1514)) String)
(declare-const null-var263 var263)
(declare-const var1366-ROOT var1366)
(declare-const null-__Array__Int__var1514__ (Array Int var1514))
(declare-const var3759 var263) ; Statement: r1 := @this: org.apache.lucene.search.similarities.LMJelinekMercerSimilarity 
(assert (not (= var3759 null-var263)))
(define-const var1666 var1366 var1366-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3181 (Array Int var1514) arr-var1514-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3975 Float32 (getLambda/1702319429 var3759)) ; Statement: $f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.LMJelinekMercerSimilarity: float getLambda()>() 
(define-const var2313 Float32 (Float32_valueOf/-1292433465 var3975)) ; Statement: $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0) 
(declare-const var3181!1 (Array Int var1514))
(assert (not (= var3181!1 null-__Array__Int__var1514__)))
(assert (= (select var3181!1 0) (cast-from-Float32-to-var1514 var2313))) ; Statement: $r0[0] = $r3 
(define-const var2859 String (String_format/-647569892 var1666 "Jelinek-Mercer(%f)" var3181!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "Jelinek-Mercer(%f)", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1514-init=([], java.lang.Object[]), getLambda/1702319429=([org.apache.lucene.search.similarities.LMJelinekMercerSimilarity], float), Float32_valueOf/-1292433465=([float], java.lang.Float), cast-from-Float32-to-var1514=([java.lang.Float], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var263=org.apache.lucene.search.similarities.LMJelinekMercerSimilarity, var3759=r1, var1366=java.util.Locale, var1666=$r2, var1514=java.lang.Object, var3181=$r0, var3975=$f0, var2313=$r3, var2859=$r4}
; {org.apache.lucene.search.similarities.LMJelinekMercerSimilarity=var263, r1=var3759, java.util.Locale=var1366, $r2=var1666, java.lang.Object=var1514, $r0=var3181, $f0=var3975, $r3=var2313, $r4=var2859}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.search.similarities.LMJelinekMercerSimilarity;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$f0 = virtualinvoke r1.<org.apache.lucene.search.similarities.LMJelinekMercerSimilarity: float getLambda()>();	$r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>($f0);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "Jelinek-Mercer(%f)", $r0);	return $r4
;block_num 1