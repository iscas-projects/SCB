(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2120 0)
(declare-sort var3022 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/1761020461 (var3022) String)
(declare-fun cast-from-var2120-to-var3022 (var2120) var3022)
(declare-fun toLowerCase/1946809429 (String var647) String)
(declare-const null-var2120 var2120)
(declare-const var647-ROOT var647)
(declare-const var2500 var2120) ; Statement: r0 := @this: org.apache.lucene.document.DateTools$Resolution 
(assert (not (= var2500 null-var2120)))
(assert true)
(define-const var252 String (toString/1761020461 (cast-from-var2120-to-var3022 var2500))) ; Statement: $r2 = specialinvoke r0.<java.lang.Enum: java.lang.String toString()>() 
(define-const var2174 var647 var647-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3623 String (toLowerCase/1946809429 var252 var2174)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/1761020461=([java.lang.Enum], java.lang.String), cast-from-var2120-to-var3022=([org.apache.lucene.document.DateTools$Resolution], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2120=org.apache.lucene.document.DateTools$Resolution, var2500=r0, var3022=java.lang.Enum, var252=$r2, var647=java.util.Locale, var2174=$r1, var3623=$r3}
; {org.apache.lucene.document.DateTools$Resolution=var2120, r0=var2500, java.lang.Enum=var3022, $r2=var252, java.util.Locale=var647, $r1=var2174, $r3=var3623}
;seq <java.lang.Enum: java.lang.String toString()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.apache.lucene.document.DateTools$Resolution;	$r2 = specialinvoke r0.<java.lang.Enum: java.lang.String toString()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r3
;block_num 1