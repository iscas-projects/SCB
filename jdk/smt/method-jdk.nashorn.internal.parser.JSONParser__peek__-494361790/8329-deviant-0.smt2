(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/1080335917 (var765) Int)
(declare-fun length/1080335917 (var765) Int)
(declare-fun source/1080335917 (var765) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var765 var765)
(declare-const var1153 var765) ; Statement: r0 := @this: jdk.nashorn.internal.parser.JSONParser 
(assert (not (= var1153 null-var765)))
(define-const var2051 Int (pos/1080335917 var1153)) ; Statement: $i1 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(define-const var3728 Int (length/1080335917 var1153)) ; Statement: $i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int length> 
 ; Statement: if $i1 < $i0 goto $r1 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> 
(assert (< var2051 var3728)) ; Cond: $i1 < $i0 
(define-const var1758 String (source/1080335917 var1153)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source> 
(define-const var777 Int (pos/1080335917 var1153)) ; Statement: $i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos> 
(assert (not (and true (and (> (str.len var1758) var777) (<= 0 var777)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), length/1080335917=([jdk.nashorn.internal.parser.JSONParser], int), source/1080335917=([jdk.nashorn.internal.parser.JSONParser], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var765=jdk.nashorn.internal.parser.JSONParser, var1153=r0, var2051=$i1, var3728=$i0, var1758=$r1, var777=$i2, var3233=$c3, var1761=$i6}
; {jdk.nashorn.internal.parser.JSONParser=var765, r0=var1153, $i1=var2051, $i0=var3728, $r1=var1758, $i2=var777, $c3=var3233, $i6=var1761}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.JSONParser;	$i1 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$i0 = r0.<jdk.nashorn.internal.parser.JSONParser: int length>;	if $i1 < $i0 goto $r1 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source>;	$r1 = r0.<jdk.nashorn.internal.parser.JSONParser: java.lang.String source>;	$i2 = r0.<jdk.nashorn.internal.parser.JSONParser: int pos>;	$c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	$i6 = (int) $c3;	return $i6
;block_num 2