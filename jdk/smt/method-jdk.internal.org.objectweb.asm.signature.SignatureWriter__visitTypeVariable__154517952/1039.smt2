(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2294 0)
(declare-sort var2511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/993692779 (var2294) String)
(declare-fun append/1183289509 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2294 var2294)
(declare-const null-String String)
(declare-const var3389 var2294) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var3389 null-var2294)))
(declare-const var2354 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2354 null-String)))
(define-const var2983 String (buf/993692779 var3389)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2983 84)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(84) 

(declare-const var2983!1 String)
(declare-const var3504 Int)
(define-const var3468 String (buf/993692779 var3389)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3468 var2354)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var3468!1 String)
(assert (str.prefixof var3468 var3468!1))
(define-const var1389 String (buf/993692779 var3389)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var1389 59)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59) 

(declare-const var1389!1 String)
(declare-const var301 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2294=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var3389=r0, var2354=r2, var2511=null_type, var2983=$r1, var3504=84, var3468=$r3, var1389=$r4, var301=59}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var2294, r0=var3389, r2=var2354, null_type=var2511, $r1=var2983, 84=var3504, $r3=var3468, $r4=var1389, 59=var301}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(84);	$r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r4 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59);	return
;block_num 1