(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1677688737 (var1014) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1014 var1014)
(declare-const var950 var1014) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableByte 
(assert (not (= var950 null-var1014)))
(define-const var115 Int (value/1677688737 var950)) ; Statement: $b0 = r0.<org.apache.commons.lang3.mutable.MutableByte: byte value> 
(define-const var204 Int (cast-from-Int-to-Int var115)) ; Statement: $i1 = (int) $b0 
(define-const var77 String (String_valueOf/1240665136 var204)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1677688737=([org.apache.commons.lang3.mutable.MutableByte], byte), cast-from-Int-to-Int=([byte], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1014=org.apache.commons.lang3.mutable.MutableByte, var950=r0, var115=$b0, var204=$i1, var77=$r1}
; {org.apache.commons.lang3.mutable.MutableByte=var1014, r0=var950, $b0=var115, $i1=var204, $r1=var77}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableByte;	$b0 = r0.<org.apache.commons.lang3.mutable.MutableByte: byte value>;	$i1 = (int) $b0;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	return $r1
;block_num 1