(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1824 0)
(declare-sort var678 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var1824) String)
(declare-fun append/1183289509 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun argumentStack/993692779 (var1824) Int)
(declare-const null-var1824 var1824)
(declare-const null-String String)
(declare-const var1318 var1824) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var1318 null-var1824)))
(declare-const var169 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var169 null-String)))
(define-const var3355 String (buf/993692779 var1318)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3355 76)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76) 

(declare-const var3355!1 String)
(declare-const var1512 Int)
(define-const var2754 String (buf/993692779 var1318)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2754 var169)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var2754!1 String)
(assert (str.prefixof var2754 var2754!1))
(define-const var1815 Int (argumentStack/993692779 var1318)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> 
(define-const var2261 Int (* var1815 2)) ; Statement: $i1 = $i0 * 2 
(declare-const var1318!1 var1824)
(assert (not (= var1318!1 null-var1824)))
(assert (= (argumentStack/993692779 var1318!1) var2261)) ; Statement: r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), argumentStack/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], int)}
; {var1824=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var1318=r0, var169=r2, var678=null_type, var3355=$r1, var1512=76, var2754=$r3, var1815=$i0, var2261=$i1}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1824, r0=var1318, r2=var169, null_type=var678, $r1=var3355, 76=var1512, $r3=var2754, $i0=var1815, $i1=var2261}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76);	$r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack>;	$i1 = $i0 * 2;	r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> = $i1;	return
;block_num 1