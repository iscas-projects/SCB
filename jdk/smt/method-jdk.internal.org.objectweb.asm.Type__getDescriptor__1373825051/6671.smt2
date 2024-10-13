(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-41019612 (var3884) (Array Int Int))
(declare-fun off/-41019612 (var3884) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var3884 var3884)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2788 var3884) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var2788 null-var3884)))
(declare-const var1870 String) ; Statement: r2 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1870 null-String)))
(define-const var1567 (Array Int Int) (buf/-41019612 var2788)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
 ; Statement: if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
(assert (not (not (= var1567 null-__Array__Int__Int__)))) ; Negate: Cond: $r1 != null  
(define-const var3777 Int (off/-41019612 var2788)) ; Statement: $i5 = r0.<jdk.internal.org.objectweb.asm.Type: int off> 
(define-const var3463 Int (bv2nat (bvand ((_ int2bv 64) var3777) ((_ int2bv 64) (- 16777216))))) ; Statement: $i6 = $i5 & -16777216 
(define-const var1746 Int (div var3463 (to_int (^ 2 24)))) ; Statement: $i7 = $i6 >>> 24 
(define-const var3781 Int (cast-from-Int-to-Int var1746)) ; Statement: $c8 = (char) $i7 
(assert true)
;(assert (append/1183289509 var1870 var3781)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>($c8) 

(declare-const var1870!1 String)
(declare-const var3781!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-41019612=([jdk.internal.org.objectweb.asm.Type], char[]), off/-41019612=([jdk.internal.org.objectweb.asm.Type], int), cast-from-Int-to-Int=([int], char), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var3884=jdk.internal.org.objectweb.asm.Type, var2788=r0, var1870=r2, var1567=$r1, var3777=$i5, var3463=$i6, var1746=$i7, var3781=$c8}
; {jdk.internal.org.objectweb.asm.Type=var3884, r0=var2788, r2=var1870, $r1=var1567, $i5=var3777, $i6=var3463, $i7=var1746, $c8=var3781}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Type;	r2 := @parameter0: java.lang.StringBuffer;	$r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	$i5 = r0.<jdk.internal.org.objectweb.asm.Type: int off>;	$i6 = $i5 & -16777216;	$i7 = $i6 >>> 24;	$c8 = (char) $i7;	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>($c8);	goto [?= return];	return
;block_num 3