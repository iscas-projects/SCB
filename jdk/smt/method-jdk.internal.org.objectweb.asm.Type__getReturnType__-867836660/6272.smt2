(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var3432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3432_getType/720030322 ((Array Int Int) Int) var3432)
(declare-const null-String String)
(declare-const var3707 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3707 null-String)))
(assert true)
(define-const var453 (Array Int Int) (toCharArray/415275702 var3707)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var3355 Int (indexOf/-1037706067 var3707 41)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
(define-const var1682 Int (+ var3355 1)) ; Statement: $i1 = $i0 + 1 
(define-const var1197 var3432 (var3432_getType/720030322 var453 var1682)) ; Statement: $r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>(r1, $i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), indexOf/-1037706067=([java.lang.String, int], int), var3432_getType/720030322=([char[], int], jdk.internal.org.objectweb.asm.Type)}
; {var3707=r0, var1234=null_type, var453=r1, var3355=$i0, var1682=$i1, var3432=jdk.internal.org.objectweb.asm.Type, var1197=$r2}
; {r0=var3707, null_type=var1234, r1=var453, $i0=var3355, $i1=var1682, jdk.internal.org.objectweb.asm.Type=var3432, $r2=var1197}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	$i1 = $i0 + 1;	$r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>(r1, $i1);	return $r2
;block_num 1