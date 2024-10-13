(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endArguments/-1375861309 (var3409) void)
(declare-fun buf/993692779 (var3409) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var3409 var3409)
(declare-const var408 var3409) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var408 null-var3409)))
(assert true)
;(assert (endArguments/-1375861309 var408)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endArguments()>() 

(declare-const var408!1 var3409)
(define-const var470 String (buf/993692779 var408!1)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var470 59)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59) 

(declare-const var470!1 String)
(declare-const var2120 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endArguments/-1375861309=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], void), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var3409=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var408=r0, var470=$r1, var2120=59}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var3409, r0=var408, $r1=var470, 59=var2120}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endArguments()>();	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59);	return
;block_num 1