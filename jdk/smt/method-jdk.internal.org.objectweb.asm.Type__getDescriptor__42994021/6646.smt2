(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getDescriptor/1373825051 (var2784 String) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2784 var2784)
(declare-const var2497 var2784) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var2497 null-var2784)))
(define-const var3269 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3269)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3269!1 String)
(assert true)
;(assert (getDescriptor/1373825051 var2497 var3269!1)) ; Statement: specialinvoke r1.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0) 

(declare-const var2497!1 var2784)
(declare-const var3269!2 String)
(assert true)
(define-const var2623 String (toString/-222306083 var3269!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getDescriptor/1373825051=([jdk.internal.org.objectweb.asm.Type, java.lang.StringBuffer], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2784=jdk.internal.org.objectweb.asm.Type, var2497=r1, var3269=$r0, var2623=$r2}
; {jdk.internal.org.objectweb.asm.Type=var2784, r1=var2497, $r0=var3269, $r2=var2623}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.Type;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	specialinvoke r1.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1