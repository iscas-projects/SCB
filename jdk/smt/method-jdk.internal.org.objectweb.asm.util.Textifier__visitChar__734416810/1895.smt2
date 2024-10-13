(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3154 0)
(declare-sort var2051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2051) String)
(declare-fun cast-from-var3154-to-var2051 (var3154) var2051)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var3154 var3154)
(declare-const null-Int Int)
(declare-const var402 var3154) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var402 null-var3154)))
(declare-const var3993 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3993 null-Int)))
(define-const var601 String (buf/-10557480 (cast-from-var3154-to-var2051 var402))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var659 String (append/1560614132 var601 "(char)")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(char)") 
(declare-const var601!1 String)
(assert (str.prefixof var601 var601!1))
(define-const var694 Int (cast-from-Int-to-Int var3993)) ; Statement: $i1 = (int) c0 
(assert true)
;(assert (append/1845021834 var659 var694)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 

(declare-const var659!1 String)
(declare-const var694!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3154-to-var2051=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([char], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var3154=jdk.internal.org.objectweb.asm.util.Textifier, var402=r0, var3993=c0, var2051=jdk.internal.org.objectweb.asm.util.Printer, var601=$r1, var659=$r2, var694=$i1}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3154, r0=var402, c0=var3993, jdk.internal.org.objectweb.asm.util.Printer=var2051, $r1=var601, $r2=var659, $i1=var694}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	c0 := @parameter0: char;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(char)");	$i1 = (int) c0;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	return
;block_num 1