(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exceptions/170212153 (var2774) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun var2774-init () var2774)
(declare-fun <init>/1431176007 (var2774 String) void)
(declare-const null-var2774 var2774)
(declare-const null-String String)
(declare-const var2909 var2774) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2909 null-var2774)))
(define-const var2731 String (exceptions/170212153 var2909)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
 ; Statement: if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert (not (not (= var2731 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1086 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1086)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1086!1 String)
(declare-const var2909!1 var2774)
(assert (not (= var2909!1 null-var2774)))
(assert (= (exceptions/170212153 var2909!1) var1086!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> = $r5 
 ; Statement: goto [?= $r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor] 
(assert true) ; Non Conditional
(define-const var2107 var2774 var2774-init) ; Statement: $r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(define-const var3512 String (exceptions/170212153 var2909!1)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> 
(assert true)
;(assert (<init>/1431176007 var2107 var3512)) ; Statement: specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r4) 

(declare-const var2107!1 var2774)
(declare-const var3512!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {exceptions/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), var2774-init=([], jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor), <init>/1431176007=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, java.lang.StringBuffer], void)}
; {var2774=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2909=r0, var2731=$r1, var1086=$r5, var2107=$r3, var3512=$r4}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var2774, r0=var2909, $r1=var2731, $r5=var1086, $r3=var2107, $r4=var3512}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	if $r1 != null goto $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions> = $r5;	goto [?= $r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor];	$r3 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer exceptions>;	specialinvoke $r3.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r4);	return $r3
;block_num 3