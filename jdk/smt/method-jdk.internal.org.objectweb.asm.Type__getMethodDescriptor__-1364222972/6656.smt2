(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var186 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-var186-1 ((Array Int var186)) Int)
(declare-fun getDescriptor/1373825051 (var186 String) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var186 var186)
(declare-const null-__Array__Int__var186__ (Array Int var186))
(declare-const var209 var186) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var209 null-var186)))
(declare-const var1384 (Array Int var186)) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.Type[] 
(assert (not (= var1384 null-__Array__Int__var186__)))
(define-const var1978 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1978)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1978!1 String)
(assert true)
;(assert (append/1183289509 var1978!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var1978!2 String)
(declare-const var1260 Int)
(define-const var2899 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2124 Int (getLength-Arr-var186-1 var1384)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (>= var2899 var2124)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/1183289509 var1978!2 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var1978!3 String)
(declare-const var3367 Int)
(assert true)
;(assert (getDescriptor/1373825051 var209 var1978!3)) ; Statement: specialinvoke r2.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0) 

(declare-const var209!1 var186)
(declare-const var1978!4 String)
(assert true)
(define-const var3101 String (toString/-222306083 var1978!4)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-var186-1=([jdk.internal.org.objectweb.asm.Type[]], int), getDescriptor/1373825051=([jdk.internal.org.objectweb.asm.Type, java.lang.StringBuffer], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var186=jdk.internal.org.objectweb.asm.Type, var209=r2, var1384=r1, var1978=$r0, var1260=40, var2899=i1, var2124=$i0, var3367=41, var3101=$r3}
; {jdk.internal.org.objectweb.asm.Type=var186, r2=var209, r1=var1384, $r0=var1978, 40=var1260, i1=var2899, $i0=var2124, 41=var3367, $r3=var3101}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: jdk.internal.org.objectweb.asm.Type;	r1 := @parameter1: jdk.internal.org.objectweb.asm.Type[];	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	specialinvoke r2.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0);	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3