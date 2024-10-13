(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var180 0)
(declare-sort var983 0)
(declare-sort var2103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2103) void)
(declare-fun cast-from-var180-to-var2103 (var180) var2103)
(declare-fun current/165814810 (var180) Int)
(declare-fun content/165814810 (var180) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/165814810 (var180) Int)
(declare-const null-var180 var180)
(declare-const null-String String)
(declare-const var788 var180) ; Statement: r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator 
(assert (not (= var788 null-var180)))
(declare-const var867 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var867 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var180-to-var2103 var788))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var788!1 var180)
(declare-const var788!2 var180)
(assert (not (= var788!2 null-var180)))
(assert (= (current/165814810 var788!2) 0)) ; Statement: r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> = 0 
(declare-const var788!3 var180)
(assert (not (= var788!3 null-var180)))
(assert (= (content/165814810 var788!3) var867)) ; Statement: r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content> = r1 
(assert true)
(define-const var2124 Int (length/-134980193 var867)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var788!4 var180)
(assert (not (= var788!4 null-var180)))
(assert (= (length/165814810 var788!4) var2124)) ; Statement: r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var180-to-var2103=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], java.lang.Object), current/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], int), content/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], java.lang.String), length/-134980193=([java.lang.String], int), length/165814810=([com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator], int)}
; {var180=com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator, var788=r0, var867=r1, var983=null_type, var2103=java.lang.Object, var2124=$i0}
; {com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator=var180, r0=var788, r1=var867, null_type=var983, java.lang.Object=var2103, $i0=var2124}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int current> = 0;	r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: java.lang.String content> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<com.google.debugging.sourcemap.SourceMapConsumerV3$StringCharIterator: int length> = $i0;	return
;block_num 1