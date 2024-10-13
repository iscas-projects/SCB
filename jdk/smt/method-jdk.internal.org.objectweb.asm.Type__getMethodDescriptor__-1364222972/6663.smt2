(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getLength-Arr-var793-1 ((Array Int var793)) Int)
(declare-fun getDescriptor/1373825051 (var793 String) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var793 var793)
(declare-const null-__Array__Int__var793__ (Array Int var793))
(declare-const var3201 var793) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var3201 null-var793)))
(declare-const var1811 (Array Int var793)) ; Statement: r1 := @parameter1: jdk.internal.org.objectweb.asm.Type[] 
(assert (not (= var1811 null-__Array__Int__var793__)))
(define-const var579 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var579)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var579!1 String)
(assert true)
;(assert (append/1183289509 var579!1 40)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var579!2 String)
(declare-const var1363 Int)
(define-const var1929 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3111 Int (getLength-Arr-var793-1 var1811)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (not (>= var1929 var3111))) ; Negate: Cond: i1 >= $i0  
(define-const var1471 var793 (select var1811 var1929)) ; Statement: $r4 = r1[i1] 
(assert true)
;(assert (getDescriptor/1373825051 var1471 var579!2)) ; Statement: specialinvoke $r4.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0) 

(declare-const var1471!1 var793)
(declare-const var579!3 String)
(define-const var1929!1 Int (+ var1929 1)) ; Statement: i1 = i1 + 1 
 ; Statement: goto [?= $i0 = lengthof r1] 
(assert true) ; Non Conditional
(define-const var3111!1 Int (getLength-Arr-var793-1 var1811)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 
(assert (>= var1929!1 var3111!1)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/1183289509 var579!3 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41) 

(declare-const var579!4 String)
(declare-const var2462 Int)
(assert true)
;(assert (getDescriptor/1373825051 var3201 var579!4)) ; Statement: specialinvoke r2.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0) 

(declare-const var3201!1 var793)
(declare-const var579!5 String)
(assert true)
(define-const var665 String (toString/-222306083 var579!5)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getLength-Arr-var793-1=([jdk.internal.org.objectweb.asm.Type[]], int), getDescriptor/1373825051=([jdk.internal.org.objectweb.asm.Type, java.lang.StringBuffer], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var793=jdk.internal.org.objectweb.asm.Type, var3201=r2, var1811=r1, var579=$r0, var1363=40, var1929=i1, var3111=$i0, var1471=$r4, var2462=41, var665=$r3}
; {jdk.internal.org.objectweb.asm.Type=var793, r2=var3201, r1=var1811, $r0=var579, 40=var1363, i1=var1929, $i0=var3111, $r4=var1471, 41=var2462, $r3=var665}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: jdk.internal.org.objectweb.asm.Type;	r1 := @parameter1: jdk.internal.org.objectweb.asm.Type[];	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	$r4 = r1[i1];	specialinvoke $r4.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0);	i1 = i1 + 1;	goto [?= $i0 = lengthof r1];	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(41);	specialinvoke r2.<jdk.internal.org.objectweb.asm.Type: void getDescriptor(java.lang.StringBuffer)>($r0);	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 5