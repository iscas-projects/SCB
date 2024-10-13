(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1107 0)
(declare-sort var1251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun declaration/170212153 (var1107) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun endType/-2074539567 (var1107) void)
(declare-const null-var1107 var1107)
(declare-const null-String String)
(declare-const var239 var1107) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var239 null-var1107)))
(declare-const var3305 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3305 null-String)))
(define-const var1112 String (declaration/170212153 var239)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1560614132 var1112 var3305)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1112!1 String)
(assert (str.prefixof var1112 var1112!1))
(assert true)
;(assert (endType/-2074539567 var239)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>() 

(declare-const var239!1 var1107)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), endType/-2074539567=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var1107=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var239=r0, var3305=r1, var1251=null_type, var1112=$r2}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1107, r0=var239, r1=var3305, null_type=var1251, $r2=var1112}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	r1 := @parameter0: java.lang.String;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endType()>();	return
;block_num 1