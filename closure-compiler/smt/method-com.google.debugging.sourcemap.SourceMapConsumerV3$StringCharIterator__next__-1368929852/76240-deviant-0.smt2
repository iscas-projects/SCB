(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/165814810 (var2170) String)
(declare-fun current/165814810 (var2170) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2170 var2170)
(declare-const var3596 var2170) ; Statement: r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator 
(assert (not (= var3596 null-var2170)))
(define-const var3251 String (content/165814810 var3596)) ; Statement: $r1 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content> 
(define-const var1519 Int (current/165814810 var3596)) ; Statement: $i0 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> 
(define-const var482 Int (+ var1519 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3596!1 var2170)
(assert (not (= var3596!1 null-var2170)))
(assert (= (current/165814810 var3596!1) var482)) ; Statement: r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> = $i1 
(assert (not (and true (and (> (str.len var3251) var1519) (<= 0 var1519)))))
(check-sat)
(get-model)
(get-unsat-core)
; {content/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], java.lang.String), current/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], int), charAt/698050440=([java.lang.String, int], char)}
; {var2170=com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator, var3596=r0, var3251=$r1, var1519=$i0, var482=$i1, var3009=$c2}
; {com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator=var2170, r0=var3596, $r1=var3251, $i0=var1519, $i1=var482, $c2=var3009}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator;	$r1 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content>;	$i0 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current>;	$i1 = $i0 + 1;	r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> = $i1;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c2
;block_num 1