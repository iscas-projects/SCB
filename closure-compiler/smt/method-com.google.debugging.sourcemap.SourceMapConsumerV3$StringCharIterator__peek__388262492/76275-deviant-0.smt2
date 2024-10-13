(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/165814810 (var1207) String)
(declare-fun current/165814810 (var1207) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1207 var1207)
(declare-const var17 var1207) ; Statement: r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator 
(assert (not (= var17 null-var1207)))
(define-const var1296 String (content/165814810 var17)) ; Statement: $r1 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content> 
(define-const var2666 Int (current/165814810 var17)) ; Statement: $i0 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> 
(assert (not (and true (and (> (str.len var1296) var2666) (<= 0 var2666)))))
(check-sat)
(get-model)
(get-unsat-core)
; {content/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], java.lang.String), current/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], int), charAt/698050440=([java.lang.String, int], char)}
; {var1207=com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator, var17=r0, var1296=$r1, var2666=$i0, var3765=$c1}
; {com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator=var1207, r0=var17, $r1=var1296, $i0=var2666, $c1=var3765}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator;	$r1 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content>;	$i0 = r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c1
;block_num 1