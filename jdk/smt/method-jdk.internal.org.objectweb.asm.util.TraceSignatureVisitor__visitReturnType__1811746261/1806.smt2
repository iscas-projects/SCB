(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endFormals/718150603 (var628) void)
(declare-fun seenParameter/170212153 (var628) Bool)
(declare-fun declaration/170212153 (var628) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun returnType/170212153 (var628) String)
(declare-fun var628-init () var628)
(declare-fun <init>/1431176007 (var628 String) void)
(declare-const null-var628 var628)
(declare-const var557 var628) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var557 null-var628)))
(assert true)
;(assert (endFormals/718150603 var557)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>() 

(declare-const var557!1 var628)
(define-const var377 Bool (seenParameter/170212153 var557!1)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (= (ite var377 1 0) 0)) ; Cond: $z0 == 0 
(define-const var799 String (declaration/170212153 var557!1)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var799 40)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var799!1 String)
(declare-const var1309 Int)
(assert true) ; Non Conditional
(define-const var1058 String (declaration/170212153 var557!1)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var1058 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var1058!1 String)
(declare-const var1300 Int)
(define-const var1877 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1877)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1877!1 String)
(declare-const var557!2 var628)
(assert (not (= var557!2 null-var628)))
(assert (= (returnType/170212153 var557!2) var1877!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> = $r3 
(define-const var3550 var628 var628-init) ; Statement: $r4 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(define-const var2249 String (returnType/170212153 var557!2)) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> 
(assert true)
;(assert (<init>/1431176007 var3550 var2249)) ; Statement: specialinvoke $r4.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r5) 

(declare-const var3550!1 var628)
(declare-const var2249!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {endFormals/718150603=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void), seenParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), returnType/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), var628-init=([], jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor), <init>/1431176007=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, java.lang.StringBuffer], void)}
; {var628=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var557=r0, var377=$z0, var799=$r1, var1309=40, var1058=$r2, var1300=41, var1877=$r3, var3550=$r4, var2249=$r5}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var628, r0=var557, $z0=var377, $r1=var799, 40=var1309, $r2=var1058, 41=var1300, $r3=var1877, $r4=var3550, $r5=var2249}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>();	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter>;	if $z0 == 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> = $r3;	$r4 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType>;	specialinvoke $r4.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r5);	return $r4
;block_num 3