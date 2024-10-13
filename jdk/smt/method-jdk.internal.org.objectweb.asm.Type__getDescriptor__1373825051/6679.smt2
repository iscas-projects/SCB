(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-41019612 (var3522) (Array Int Int))
(declare-fun sort/-41019612 (var3522) Int)
(declare-fun off/-41019612 (var3522) Int)
(declare-fun len/-41019612 (var3522) Int)
(declare-fun append/-420189427 (String (Array Int Int) Int Int) String)
(declare-const null-var3522 var3522)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var705 var3522) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var705 null-var3522)))
(declare-const var2964 String) ; Statement: r2 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2964 null-String)))
(define-const var991 (Array Int Int) (buf/-41019612 var705)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
 ; Statement: if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
(assert (not (= var991 null-__Array__Int__Int__))) ; Cond: $r1 != null 
(define-const var1643 Int (sort/-41019612 var705)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
 ; Statement: if $i0 != 10 goto $r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(assert (not (= var1643 10))) ; Cond: $i0 != 10 
(define-const var764 (Array Int Int) (buf/-41019612 var705)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(define-const var1202 Int (off/-41019612 var705)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.Type: int off> 
(define-const var885 Int (len/-41019612 var705)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.Type: int len> 
(assert true)
;(assert (append/-420189427 var2964 var764 var1202 var885)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r3, $i2, $i1) 

(declare-const var2964!1 String)
(declare-const var764!1 (Array Int Int))
(declare-const var1202!1 Int)
(declare-const var885!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-41019612=([jdk.internal.org.objectweb.asm.Type], char[]), sort/-41019612=([jdk.internal.org.objectweb.asm.Type], int), off/-41019612=([jdk.internal.org.objectweb.asm.Type], int), len/-41019612=([jdk.internal.org.objectweb.asm.Type], int), append/-420189427=([java.lang.StringBuffer, char[], int, int], java.lang.StringBuffer)}
; {var3522=jdk.internal.org.objectweb.asm.Type, var705=r0, var2964=r2, var991=$r1, var1643=$i0, var764=$r3, var1202=$i2, var885=$i1}
; {jdk.internal.org.objectweb.asm.Type=var3522, r0=var705, r2=var2964, $r1=var991, $i0=var1643, $r3=var764, $i2=var1202, $i1=var885}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Type;	r2 := @parameter0: java.lang.StringBuffer;	$r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	$i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	if $i0 != 10 goto $r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	$i2 = r0.<jdk.internal.org.objectweb.asm.Type: int off>;	$i1 = r0.<jdk.internal.org.objectweb.asm.Type: int len>;	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r3, $i2, $i1);	return
;block_num 4