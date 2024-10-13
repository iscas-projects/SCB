(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun endFormals/718150603 (var3336) void)
(declare-fun seenParameter/170212153 (var3336) Bool)
(declare-fun declaration/170212153 (var3336) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun returnType/170212153 (var3336) String)
(declare-fun var3336-init () var3336)
(declare-fun <init>/1431176007 (var3336 String) void)
(declare-const null-var3336 var3336)
(declare-const var2454 var3336) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(assert (not (= var2454 null-var3336)))
(assert true)
;(assert (endFormals/718150603 var2454)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>() 

(declare-const var2454!1 var3336)
(define-const var1534 Bool (seenParameter/170212153 var2454!1)) ; Statement: $z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> 
 ; Statement: if $z0 == 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert (not (= (ite var1534 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2454!2 var3336)
(assert (not (= var2454!2 null-var3336)))
(assert (= (seenParameter/170212153 var2454!2) (ite (= 1 0) true false))) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 0 
 ; Statement: goto [?= $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>] 
(assert true) ; Non Conditional
(define-const var3335 String (declaration/170212153 var2454!2)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration> 
(assert true)
;(assert (append/1183289509 var3335 41)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var3335!1 String)
(declare-const var1859 Int)
(define-const var1089 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1089)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1089!1 String)
(declare-const var2454!3 var3336)
(assert (not (= var2454!3 null-var3336)))
(assert (= (returnType/170212153 var2454!3) var1089!1)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> = $r3 
(define-const var3563 var3336 var3336-init) ; Statement: $r4 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor 
(define-const var3011 String (returnType/170212153 var2454!3)) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> 
(assert true)
;(assert (<init>/1431176007 var3563 var3011)) ; Statement: specialinvoke $r4.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r5) 

(declare-const var3563!1 var3336)
(declare-const var3011!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {endFormals/718150603=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], void), seenParameter/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], boolean), declaration/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), returnType/170212153=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor], java.lang.StringBuffer), var3336-init=([], jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor), <init>/1431176007=([jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, java.lang.StringBuffer], void)}
; {var3336=jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor, var2454=r0, var1534=$z0, var3335=$r2, var1859=41, var1089=$r3, var3563=$r4, var3011=$r5}
; {jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor=var3336, r0=var2454, $z0=var1534, $r2=var3335, 41=var1859, $r3=var1089, $r4=var3563, $r5=var3011}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void endFormals()>();	$z0 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter>;	if $z0 == 0 goto $r1 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: boolean seenParameter> = 0;	goto [?= $r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>];	$r2 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer declaration>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType> = $r3;	$r4 = new jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: java.lang.StringBuffer returnType>;	specialinvoke $r4.<jdk.internal.org.objectweb.asm.util.TraceSignatureVisitor: void <init>(java.lang.StringBuffer)>($r5);	return $r4
;block_num 3