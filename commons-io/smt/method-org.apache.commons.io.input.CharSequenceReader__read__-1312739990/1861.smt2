(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun idx/759679242 (var2954) Int)
(declare-fun end/979291359 (var2954) Int)
(declare-fun charSequence/759679242 (var2954) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2954 var2954)
(declare-const var2004 var2954) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var2004 null-var2954)))
(define-const var2143 Int (idx/759679242 var2004)) ; Statement: $i0 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx> 
(assert true)
(define-const var331 Int (end/979291359 var2004)) ; Statement: $i1 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int end()>() 
 ; Statement: if $i0 < $i1 goto $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(assert (< var2143 var331)) ; Cond: $i0 < $i1 
(define-const var408 String (charSequence/759679242 var2004)) ; Statement: $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(define-const var1331 Int (idx/759679242 var2004)) ; Statement: $i2 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx> 
(define-const var3 Int (+ var1331 1)) ; Statement: $i3 = $i2 + 1 
(declare-const var2004!1 var2954)
(assert (not (= var2004!1 null-var2954)))
(assert (= (idx/759679242 var2004!1) var3)) ; Statement: r0.<org.apache.commons.io.input.CharSequenceReader: int idx> = $i3 
(define-const var3409 Int (String_charAt/1466887330 var408 var1331)) ; Statement: $c4 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>($i2) 
(define-const var2495 Int (cast-from-Int-to-Int var3409)) ; Statement: $i7 = (int) $c4 
 ; Statement: return $i7 
(check-sat)
(get-model)
(get-unsat-core)
; {idx/759679242=([org.apache.commons.io.input.CharSequenceReader], int), end/979291359=([org.apache.commons.io.input.CharSequenceReader], int), charSequence/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int)}
; {var2954=org.apache.commons.io.input.CharSequenceReader, var2004=r0, var2143=$i0, var331=$i1, var408=$r1, var1331=$i2, var3=$i3, var3409=$c4, var2495=$i7}
; {org.apache.commons.io.input.CharSequenceReader=var2954, r0=var2004, $i0=var2143, $i1=var331, $r1=var408, $i2=var1331, $i3=var3, $c4=var3409, $i7=var2495}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	$i0 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx>;	$i1 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int end()>();	if $i0 < $i1 goto $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$i2 = r0.<org.apache.commons.io.input.CharSequenceReader: int idx>;	$i3 = $i2 + 1;	r0.<org.apache.commons.io.input.CharSequenceReader: int idx> = $i3;	$c4 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>($i2);	$i7 = (int) $c4;	return $i7
;block_num 2