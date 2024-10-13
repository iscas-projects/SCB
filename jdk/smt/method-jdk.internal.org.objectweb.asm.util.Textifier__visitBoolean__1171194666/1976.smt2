(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3413 0)
(declare-sort var1023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1023) String)
(declare-fun cast-from-var3413-to-var1023 (var3413) var1023)
(declare-fun append/-1166642301 (String Bool) String)
(declare-const null-var3413 var3413)
(declare-const null-Bool Bool)
(declare-const var3296 var3413) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3296 null-var3413)))
(declare-const var1679 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1679 null-Bool)))
(define-const var3368 String (buf/-10557480 (cast-from-var3413-to-var1023 var3296))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/-1166642301 var3368 var1679)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 

(declare-const var3368!1 String)
(declare-const var1679!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3413-to-var1023=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer)}
; {var3413=jdk.internal.org.objectweb.asm.util.Textifier, var3296=r0, var1679=z0, var1023=jdk.internal.org.objectweb.asm.util.Printer, var3368=$r1}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3413, r0=var3296, z0=var1679, jdk.internal.org.objectweb.asm.util.Printer=var1023, $r1=var3368}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	z0 := @parameter0: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	return
;block_num 1