(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var552 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2339) String)
(declare-fun cast-from-var552-to-var2339 (var552) var2339)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var552 var552)
(declare-const null-Int Int)
(declare-const var404 var552) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var404 null-var552)))
(declare-const var1371 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1371 null-Int)))
(define-const var3362 String (buf/-10557480 (cast-from-var552-to-var2339 var404))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1845021834 var3362 var1371)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var3362!1 String)
(declare-const var1371!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var552-to-var2339=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var552=jdk.internal.org.objectweb.asm.util.Textifier, var404=r0, var1371=i0, var2339=jdk.internal.org.objectweb.asm.util.Printer, var3362=$r1}
; {jdk.internal.org.objectweb.asm.util.Textifier=var552, r0=var404, i0=var1371, jdk.internal.org.objectweb.asm.util.Printer=var2339, $r1=var3362}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	return
;block_num 1