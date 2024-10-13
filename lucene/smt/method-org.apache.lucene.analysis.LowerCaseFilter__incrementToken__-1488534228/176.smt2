(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1868 0)
(declare-sort var1209 0)
(declare-sort var3943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/2108483861 (var3943) var1209)
(declare-fun cast-from-var1868-to-var3943 (var1868) var3943)
(declare-fun incrementToken/-1581328132 (var1209) Bool)
(declare-const null-var1868 var1868)
(declare-const var2481 var1868) ; Statement: r0 := @this: org.apache.lucene.analysis.LowerCaseFilter 
(assert (not (= var2481 null-var1868)))
(define-const var212 var1209 (input/2108483861 (cast-from-var1868-to-var3943 var2481))) ; Statement: $r1 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.TokenStream input> 
(assert true)
(define-const var706 Bool (incrementToken/-1581328132 var212)) ; Statement: $z0 = virtualinvoke $r1.<org.apache.lucene.analysis.TokenStream: boolean incrementToken()>() 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var706 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {input/2108483861=([org.apache.lucene.analysis.TokenFilter], org.apache.lucene.analysis.TokenStream), cast-from-var1868-to-var3943=([org.apache.lucene.analysis.LowerCaseFilter], org.apache.lucene.analysis.TokenFilter), incrementToken/-1581328132=([org.apache.lucene.analysis.TokenStream], boolean)}
; {var1868=org.apache.lucene.analysis.LowerCaseFilter, var2481=r0, var1209=org.apache.lucene.analysis.TokenStream, var3943=org.apache.lucene.analysis.TokenFilter, var212=$r1, var706=$z0}
; {org.apache.lucene.analysis.LowerCaseFilter=var1868, r0=var2481, org.apache.lucene.analysis.TokenStream=var1209, org.apache.lucene.analysis.TokenFilter=var3943, $r1=var212, $z0=var706}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.lucene.analysis.LowerCaseFilter;	$r1 = r0.<org.apache.lucene.analysis.LowerCaseFilter: org.apache.lucene.analysis.TokenStream input>;	$z0 = virtualinvoke $r1.<org.apache.lucene.analysis.TokenStream: boolean incrementToken()>();	if $z0 == 0 goto return 0;	return 0
;block_num 2