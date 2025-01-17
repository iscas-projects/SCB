(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const var962-TYPE (Array Int Int))
(define-const var2036 String "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA") ; Statement: r0 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA" 
(define-const var1589 String "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA") ; Statement: r5 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA" 
(define-const var3015 String "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA") ; Statement: r4 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA" 
(assert true)
(define-const var1887 Int (length/-134980193 var3015)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var3258 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[$i0] 
(define-const var3482 (Array Int Int) var3258) ; Statement: <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE> = $r1 
(define-const var3444 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var3777 (Array Int Int) var962-TYPE) ; Statement: $r2 = <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE> 
(define-const var3780 Int (getLength-Arr-Int-1 var3777)) ; Statement: $i1 = lengthof $r2 
 ; Statement: if i5 >= $i1 goto return 
(assert (>= var3444 var3780)) ; Cond: i5 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), arr-Int-init=([], int[]), getLength-Arr-Int-1=([int[]], int)}
; {var2036=r0, var1589=r5, var3015=r4, var1887=$i0, var3258=$r1, var3482=<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE>, var3444=i5, var962=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3777=$r2, var3780=$i1}
; {r0=var2036, r5=var1589, r4=var3015, $i0=var1887, $r1=var3258, <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE>=var3482, i5=var3444, jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var962, $r2=var3777, $i1=var3780}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA";	r5 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA";	r4 = "BBBBBBBBBBBBBBBBCCIAADDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBDDDDDAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJBBBBBBBBBBBBBBBBBBBBHHHHHHHHHHHHHHHHDKLBBBBBBFFFFGGGGAECEBBEEBBAMHHAA";	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$r1 = newarray (int)[$i0];	<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE> = $r1;	i5 = 0;	$r2 = <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: int[] TYPE>;	$i1 = lengthof $r2;	if i5 >= $i1 goto return;	return
;block_num 3