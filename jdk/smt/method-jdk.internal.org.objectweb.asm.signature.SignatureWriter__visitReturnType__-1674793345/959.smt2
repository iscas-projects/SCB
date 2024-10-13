(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endFormals/789013749 (var2156) void)
(declare-fun hasParameters/993692779 (var2156) Bool)
(declare-fun buf/993692779 (var2156) String)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var2156 var2156)
(declare-const var331 var2156) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var331 null-var2156)))
(assert true)
;(assert (endFormals/789013749 var331)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endFormals()>() 

(declare-const var331!1 var2156)
(define-const var83 Bool (hasParameters/993692779 var331!1)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: boolean hasParameters> 
 ; Statement: if $z0 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert (not (= (ite var83 1 0) 0))) ; Cond: $z0 != 0 
(define-const var607 String (buf/993692779 var331!1)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var607 41)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var607!1 String)
(declare-const var3771 Int)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endFormals/789013749=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], void), hasParameters/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], boolean), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var2156=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var331=r0, var83=$z0, var607=$r1, var3771=41}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var2156, r0=var331, $z0=var83, $r1=var607, 41=var3771}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endFormals()>();	$z0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: boolean hasParameters>;	if $z0 != 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	return r0
;block_num 2