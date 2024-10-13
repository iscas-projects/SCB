(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1722079379 (var3855) Int)
(declare-fun length/1722079379 (var3855) Int)
(declare-const null-var3855 var3855)
(declare-const var1092 var3855) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var1092 null-var3855)))
(define-const var175 Int (pos/1722079379 var1092)) ; Statement: $i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var971 Int (length/1722079379 var1092)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.DateParser: int length> 
 ; Statement: if $i1 >= $i0 goto $s3 = -1 
(assert (>= var175 var971)) ; Cond: $i1 >= $i0 
(define-const var1804 Int (- 1)) ; Statement: $s3 = -1 
(assert true) ; Non Conditional
 ; Statement: return $s3 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), length/1722079379=([jdk.nashorn.internal.parser.DateParser], int)}
; {var3855=jdk.nashorn.internal.parser.DateParser, var1092=r0, var175=$i1, var971=$i0, var1804=$s3}
; {jdk.nashorn.internal.parser.DateParser=var3855, r0=var1092, $i1=var175, $i0=var971, $s3=var1804}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	$i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i0 = r0.<jdk.nashorn.internal.parser.DateParser: int length>;	if $i1 >= $i0 goto $s3 = -1;	$s3 = -1;	return $s3
;block_num 3