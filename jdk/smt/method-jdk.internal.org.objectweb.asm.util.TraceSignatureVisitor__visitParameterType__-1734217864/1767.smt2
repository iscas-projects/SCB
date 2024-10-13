(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endFormals/718150603 (var1399) void)
(declare-fun seenParameter/170212153 (var1399) Bool)
(declare-fun declaration/170212153 (var1399) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun startType/-1810372054 (var1399) void)
(declare-const null-var1399 var1399)
(declare-const var3331 var1399) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var3331 null-var1399)))
(assert true)
;(assert (endFormals/718150603 var3331)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>() 

(declare-const var3331!1 var1399)
(define-const var3849 Bool (seenParameter/170212153 var3331!1)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> 
 ; Statement: if $z0 == 0 goto r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1 
(assert (= (ite var3849 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var3331!2 var1399)
(assert (not (= var3331!2 null-var1399)))
(assert (= (seenParameter/170212153 var3331!2) (ite (= 1 1) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1 
(define-const var2197 String (declaration/170212153 var3331!2)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var2197 40)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2197!1 String)
(declare-const var302 Int)
(assert true) ; Non Conditional
(assert true)
;(assert (startType/-1810372054 var3331!2)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>() 

(declare-const var3331!3 var1399)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endFormals/718150603=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void), seenParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), startType/-1810372054=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void)}
; {var1399=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var3331=r0, var3849=$z0, var2197=$r1, var302=40}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var1399, r0=var3331, $z0=var3849, $r1=var2197, 40=var302}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>();	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter>;	if $z0 == 0 goto r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 1;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void startType()>();	return r0
;block_num 3