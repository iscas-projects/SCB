(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(define-const var2973 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (byte)[220] 
(define-const var187 String "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ") ; Statement: r1 = "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ" 
(define-const var1112 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var91 Int (getLength-Arr-Int-1 var2973)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0 
(assert (not (>= var1112 var91))) ; Negate: Cond: i4 >= $i0  
(assert (not (and true (and (> (str.len var187) var1112) (<= 0 var1112)))))
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2973=r0, var187=r1, var1112=i4, var91=$i0, var228=$c1, var1919=$i5, var3239=$i2, var2055=$b3, var2716=<jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE>}
; {r0=var2973, r1=var187, i4=var1112, $i0=var91, $c1=var228, $i5=var1919, $i2=var3239, $b3=var2055, <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE>=var2716}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r0 = newarray (byte)[220];	r1 = "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ";	i4 = 0;	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	$i2 = $i5 - 65;	$b3 = (byte) $i2;	r0[i4] = $b3;	i4 = i4 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	$i2 = $i5 - 65;	$b3 = (byte) $i2;	r0[i4] = $b3;	i4 = i4 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	<jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	return
;block_num 7