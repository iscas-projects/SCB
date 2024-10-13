(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-853829893 (var2447) Int)
(declare-fun size/-853829893 (var2447) Int)
(declare-fun s/-853829893 (var2447) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2447 var2447)
(declare-const var312 var2447) ; Statement: r0 := @this: org.apache.lucene.analysis.ReusableStringReader 
(assert (not (= var312 null-var2447)))
(define-const var3885 Int (pos/-853829893 var312)) ; Statement: $i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var452 Int (size/-853829893 var312)) ; Statement: $i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size> 
 ; Statement: if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(assert (not (>= var3885 var452))) ; Negate: Cond: $i1 >= $i0  
(define-const var3129 String (s/-853829893 var312)) ; Statement: $r1 = r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> 
(define-const var1060 Int (pos/-853829893 var312)) ; Statement: $i2 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var207 Int (+ var1060 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var312!1 var2447)
(assert (not (= var312!1 null-var2447)))
(assert (= (pos/-853829893 var312!1) var207)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = $i3 
(assert (not (and true (and (> (str.len var3129) var1060) (<= 0 var1060)))))
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), size/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), s/-853829893=([org.apache.lucene.analysis.ReusableStringReader], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2447=org.apache.lucene.analysis.ReusableStringReader, var312=r0, var3885=$i1, var452=$i0, var3129=$r1, var1060=$i2, var207=$i3, var3001=$c4, var2141=$i5}
; {org.apache.lucene.analysis.ReusableStringReader=var2447, r0=var312, $i1=var3885, $i0=var452, $r1=var3129, $i2=var1060, $i3=var207, $c4=var3001, $i5=var2141}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.ReusableStringReader;	$i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size>;	if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	$r1 = r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s>;	$i2 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i3 = $i2 + 1;	r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = $i3;	$c4 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	$i5 = (int) $c4;	return $i5
;block_num 2