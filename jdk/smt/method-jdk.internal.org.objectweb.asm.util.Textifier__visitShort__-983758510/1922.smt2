(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1547 0)
(declare-sort var2251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2251) String)
(declare-fun cast-from-var1547-to-var2251 (var1547) var2251)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var1547 var1547)
(declare-const null-Int Int)
(declare-const var694 var1547) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var694 null-var1547)))
(declare-const var1761 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var1761 null-Int)))
(define-const var208 String (buf/-10557480 (cast-from-var1547-to-var2251 var694))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3409 String (append/1560614132 var208 "(short)")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(short)") 
(declare-const var208!1 String)
(assert (str.prefixof var208 var208!1))
(define-const var2322 Int (cast-from-Int-to-Int var1761)) ; Statement: $i1 = (int) s0 
(assert true)
;(assert (append/1845021834 var3409 var2322)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 

(declare-const var3409!1 String)
(declare-const var2322!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1547-to-var2251=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([short], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var1547=jdk.internal.org.objectweb.asm.util.Textifier, var694=r0, var1761=s0, var2251=jdk.internal.org.objectweb.asm.util.Printer, var208=$r1, var3409=$r2, var2322=$i1}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1547, r0=var694, s0=var1761, jdk.internal.org.objectweb.asm.util.Printer=var2251, $r1=var208, $r2=var3409, $i1=var2322}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	s0 := @parameter0: short;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(short)");	$i1 = (int) s0;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	return
;block_num 1