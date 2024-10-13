(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var1156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endArguments/-1375861309 (var1183) void)
(declare-fun buf/993692779 (var1183) String)
(declare-fun append/1183289509 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun argumentStack/993692779 (var1183) Int)
(declare-const null-var1183 var1183)
(declare-const null-String String)
(declare-const var816 var1183) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter 
(assert (not (= var816 null-var1183)))
(declare-const var390 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var390 null-String)))
(assert true)
;(assert (endArguments/-1375861309 var816)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endArguments()>() 

(declare-const var816!1 var1183)
(define-const var694 String (buf/993692779 var816!1)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var694 46)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 

(declare-const var694!1 String)
(declare-const var1130 Int)
(define-const var2624 String (buf/993692779 var816!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2624 var390)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var2624!1 String)
(assert (str.prefixof var2624 var2624!1))
(define-const var2674 Int (argumentStack/993692779 var816!1)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> 
(define-const var1672 Int (* var2674 2)) ; Statement: $i1 = $i0 * 2 
(declare-const var816!2 var1183)
(assert (not (= var816!2 null-var1183)))
(assert (= (argumentStack/993692779 var816!2) var1672)) ; Statement: r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> = $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endArguments/-1375861309=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], void), buf/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), argumentStack/993692779=([jdk.internal.org.objectweb.asm.signature.SignatureWriter], int)}
; {var1183=jdk.internal.org.objectweb.asm.signature.SignatureWriter, var816=r0, var390=r2, var1156=null_type, var694=$r1, var1130=46, var2624=$r3, var2674=$i0, var1672=$i1}
; {jdk.internal.org.objectweb.asm.signature.SignatureWriter=var1183, r0=var816, r2=var390, null_type=var1156, $r1=var694, 46=var1130, $r3=var2624, $i0=var2674, $i1=var1672}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.signature.SignatureWriter;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: void endArguments()>();	$r1 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r3 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$i0 = r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack>;	$i1 = $i0 * 2;	r0.<jdk.internal.org.objectweb.asm.signature.SignatureWriter: int argumentStack> = $i1;	return
;block_num 1