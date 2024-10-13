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
(define-const var1096 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (byte)[220] 
(define-const var3263 String "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ") ; Statement: r1 = "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ" 
(define-const var899 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2212 Int (getLength-Arr-Int-1 var1096)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0 
(assert (not (>= var899 var2212))) ; Negate: Cond: i4 >= $i0  
(assert (and true (and (> (str.len var3263) var899) (<= 0 var899))))
(define-const var3713 Int (charAt/698050440 var3263 var899)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2839 Int (cast-from-Int-to-Int var3713)) ; Statement: $i5 = (int) $c1 
(define-const var3758 Int (- var2839 65)) ; Statement: $i2 = $i5 - 65 
(define-const var3802 Int (cast-from-Int-to-Int var3758)) ; Statement: $b3 = (byte) $i2 
(declare-const var1096!1 (Array Int Int))
(assert (not (= var1096!1 null-__Array__Int__Int__)))
(assert (= (select var1096!1 var899) var3802)) ; Statement: r0[i4] = $b3 
(define-const var899!1 Int (+ var899 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= $i0 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var2212!1 Int (getLength-Arr-Int-1 var1096!1)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0 
(assert (not (>= var899!1 var2212!1))) ; Negate: Cond: i4 >= $i0  
(assert (and true (and (> (str.len var3263) var899!1) (<= 0 var899!1))))
(define-const var3713!1 Int (charAt/698050440 var3263 var899!1)) ; Statement: $c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4) 
(define-const var2839!1 Int (cast-from-Int-to-Int var3713!1)) ; Statement: $i5 = (int) $c1 
(define-const var3758!1 Int (- var2839!1 65)) ; Statement: $i2 = $i5 - 65 
(define-const var3802!1 Int (cast-from-Int-to-Int var3758!1)) ; Statement: $b3 = (byte) $i2 
(declare-const var1096!2 (Array Int Int))
(assert (not (= var1096!2 null-__Array__Int__Int__)))
(assert (= (select var1096!2 var899!1) var3802!1)) ; Statement: r0[i4] = $b3 
(define-const var899!2 Int (+ var899!1 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= $i0 = lengthof r0] 
(assert true) ; Non Conditional
(define-const var2212!2 Int (getLength-Arr-Int-1 var1096!2)) ; Statement: $i0 = lengthof r0 
 ; Statement: if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0 
(assert (not (>= var899!2 var2212!2))) ; Negate: Cond: i4 >= $i0  
(assert (not (and true (and (> (str.len var3263) var899!2) (<= 0 var899!2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1096=r0, var3263=r1, var899=i4, var2212=$i0, var3713=$c1, var2839=$i5, var3758=$i2, var3802=$b3, var2316=<jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE>}
; {r0=var1096, r1=var3263, i4=var899, $i0=var2212, $c1=var3713, $i5=var2839, $i2=var3758, $b3=var3802, <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE>=var2316}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 3}
;stmts r0 = newarray (byte)[220];	r1 = "AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ";	i4 = 0;	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	$i2 = $i5 - 65;	$b3 = (byte) $i2;	r0[i4] = $b3;	i4 = i4 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	$i2 = $i5 - 65;	$b3 = (byte) $i2;	r0[i4] = $b3;	i4 = i4 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	$c1 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c1;	$i2 = $i5 - 65;	$b3 = (byte) $i2;	r0[i4] = $b3;	i4 = i4 + 1;	goto [?= $i0 = lengthof r0];	$i0 = lengthof r0;	if i4 >= $i0 goto <jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	<jdk.internal.org.objectweb.asm.ClassWriter: byte[] TYPE> = r0;	return
;block_num 9