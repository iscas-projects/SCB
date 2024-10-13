(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1722079379 (var1909) Int)
(declare-fun length/1722079379 (var1909) Int)
(declare-fun string/1722079379 (var1909) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1909 var1909)
(declare-const var3820 var1909) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser 
(assert (not (= var3820 null-var1909)))
(define-const var3658 Int (pos/1722079379 var3820)) ; Statement: $i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(define-const var2531 Int (length/1722079379 var3820)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.DateParser: int length> 
 ; Statement: if $i1 >= $i0 goto $s3 = -1 
(assert (not (>= var3658 var2531))) ; Negate: Cond: $i1 >= $i0  
(define-const var1715 String (string/1722079379 var3820)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string> 
(define-const var687 Int (pos/1722079379 var3820)) ; Statement: $i2 = r0.<jdk.nashorn.internal.parser.DateParser: int pos> 
(assert (not (and true (and (> (str.len var1715) var687) (<= 0 var687)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1722079379=([jdk.nashorn.internal.parser.DateParser], int), length/1722079379=([jdk.nashorn.internal.parser.DateParser], int), string/1722079379=([jdk.nashorn.internal.parser.DateParser], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var1909=jdk.nashorn.internal.parser.DateParser, var3820=r0, var3658=$i1, var2531=$i0, var1715=$r1, var687=$i2, var872=$s3}
; {jdk.nashorn.internal.parser.DateParser=var1909, r0=var3820, $i1=var3658, $i0=var2531, $r1=var1715, $i2=var687, $s3=var872}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser;	$i1 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$i0 = r0.<jdk.nashorn.internal.parser.DateParser: int length>;	if $i1 >= $i0 goto $s3 = -1;	$r1 = r0.<jdk.nashorn.internal.parser.DateParser: java.lang.String string>;	$i2 = r0.<jdk.nashorn.internal.parser.DateParser: int pos>;	$s3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	goto [?= return $s3];	return $s3
;block_num 3