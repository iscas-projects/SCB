(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun var1683_getDescriptor/-920495853 (String ClassObject) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const var2919 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2919 null-ClassObject)))
(define-const var2047 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2047)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2047!1 String)
;(assert (var1683_getDescriptor/-920495853 var2047!1 var2919)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r0, r1) 

(declare-const var2047!2 String)
(declare-const var2919!1 ClassObject)
(assert true)
(define-const var933 String (toString/-222306083 var2047!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), var1683_getDescriptor/-920495853=([java.lang.StringBuffer, java.lang.Class], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2919=r1, var2047=$r0, var1683=jdk.internal.org.objectweb.asm.Type, var933=$r2}
; {r1=var2919, $r0=var2047, jdk.internal.org.objectweb.asm.Type=var1683, $r2=var933}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	staticinvoke <jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer,java.lang.Class)>($r0, r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1