(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1851 0)
(declare-sort var2884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2884) String)
(declare-fun cast-from-var1851-to-var2884 (var1851) var2884)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var1851 var1851)
(declare-const null-Int Int)
(declare-const var2680 var1851) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2680 null-var1851)))
(declare-const var1479 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1479 null-Int)))
(define-const var3261 String (buf/-10557480 (cast-from-var1851-to-var2884 var2680))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2756 String (append/1560614132 var3261 "(byte)")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(byte)") 
(declare-const var3261!1 String)
(assert (str.prefixof var3261 var3261!1))
(define-const var3831 Int (cast-from-Int-to-Int var1479)) ; Statement: $i1 = (int) b0 
(assert true)
;(assert (append/1845021834 var2756 var3831)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 

(declare-const var2756!1 String)
(declare-const var3831!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1851-to-var2884=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([byte], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var1851=jdk.internal.org.objectweb.asm.util.Textifier, var2680=r0, var1479=b0, var2884=jdk.internal.org.objectweb.asm.util.Printer, var3261=$r1, var2756=$r2, var3831=$i1}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1851, r0=var2680, b0=var1479, jdk.internal.org.objectweb.asm.util.Printer=var2884, $r1=var3261, $r2=var2756, $i1=var3831}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	b0 := @parameter0: byte;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(byte)");	$i1 = (int) b0;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	return
;block_num 1