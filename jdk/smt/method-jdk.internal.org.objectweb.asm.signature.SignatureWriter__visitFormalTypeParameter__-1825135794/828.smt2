(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var480 0)
(declare-sort var401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasFormals/993692779 (var480) Bool)
(declare-fun buf/993692779 (var480) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-const null-var480 var480)
(declare-const null-String String)
(declare-const var39 var480) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var39 null-var480)))
(declare-const var2200 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2200 null-String)))
(define-const var3402 Bool (hasFormals/993692779 var39)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: boolean hasFormals> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert (not (= (ite var3402 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3852 String (buf/993692779 var39)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3852 var2200)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3852!1 String)
(assert (str.prefixof var3852 var3852!1))
(define-const var308 String (buf/993692779 var39)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var308 58)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(58) 

(declare-const var308!1 String)
(declare-const var3030 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hasFormals/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], boolean), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var480=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var39=r0, var2200=r1, var401=null_type, var3402=$z0, var3852=$r2, var308=$r3, var3030=58}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var480, r0=var39, r1=var2200, null_type=var401, $z0=var3402, $r2=var3852, $r3=var308, 58=var3030}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	r1 := @parameter0: java.lang.String;	$z0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: boolean hasFormals>;	if $z0 != 0 goto $r2 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(58);	return
;block_num 2