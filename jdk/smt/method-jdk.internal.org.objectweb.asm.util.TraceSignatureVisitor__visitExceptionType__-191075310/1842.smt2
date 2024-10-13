(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exceptions/170212153 (var1512) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1512-init () var1512)
(declare-fun <init>/1431176007 (var1512 String) void)
(declare-const null-var1512 var1512)
(declare-const null-String String)
(declare-const var2231 var1512) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2231 null-var1512)))
(define-const var2778 String (exceptions/170212153 var2231)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
 ; Statement: if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert (not (= var2778 null-String))) ; Cond: $r1 != null 
(define-const var2624 String (exceptions/170212153 var2231)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert true)
;(assert (append/1560614132 var2624 ", ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2624!1 String)
(assert (str.prefixof var2624 var2624!1))
(assert true) ; Non Conditional
(define-const var1664 var1512 var1512-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(define-const var3769 String (exceptions/170212153 var2231)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert true)
;(assert (<init>/1431176007 var1664 var3769)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r4) 

(declare-const var1664!1 var1512)
(declare-const var3769!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {exceptions/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var1512-init=([], jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor), <init>/1431176007=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, java.lang.StringBuffer], void)}
; {var1512=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2231=r0, var2778=$r1, var2624=$r2, var1664=$r3, var3769=$r4}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1512, r0=var2231, $r1=var2778, $r2=var2624, $r3=var1664, $r4=var3769}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r4);	return $r3
;block_num 3