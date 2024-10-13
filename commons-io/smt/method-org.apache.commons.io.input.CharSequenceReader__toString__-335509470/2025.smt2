(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun charSequence/759679242 (var3524) String)
(declare-fun start/145421496 (var3524) Int)
(declare-fun end/979291359 (var3524) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var3524 var3524)
(declare-const var976 var3524) ; Statement: r0 := @this: org.apache.commons.io.input.CharSequenceReader 
(assert (not (= var976 null-var3524)))
(define-const var2954 String (charSequence/759679242 var976)) ; Statement: $r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence> 
(assert true)
(define-const var3985 Int (start/145421496 var976)) ; Statement: $i1 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int start()>() 
(assert true)
(define-const var696 Int (end/979291359 var976)) ; Statement: $i0 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int end()>() 
(define-const var1272 String (String_subSequence/-1087362312 var2954 var3985 var696)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i1, $i0) 
(define-const var241 String (String_toString/-1426662429 var1272)) ; Statement: $r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {charSequence/759679242=([org.apache.commons.io.input.CharSequenceReader], java.lang.CharSequence), start/145421496=([org.apache.commons.io.input.CharSequenceReader], int), end/979291359=([org.apache.commons.io.input.CharSequenceReader], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3524=org.apache.commons.io.input.CharSequenceReader, var976=r0, var2954=$r1, var3985=$i1, var696=$i0, var1272=$r2, var241=$r3}
; {org.apache.commons.io.input.CharSequenceReader=var3524, r0=var976, $r1=var2954, $i1=var3985, $i0=var696, $r2=var1272, $r3=var241}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.io.input.CharSequenceReader;	$r1 = r0.<org.apache.commons.io.input.CharSequenceReader: java.lang.CharSequence charSequence>;	$i1 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int start()>();	$i0 = specialinvoke r0.<org.apache.commons.io.input.CharSequenceReader: int end()>();	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>($i1, $i0);	$r3 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r3
;block_num 1