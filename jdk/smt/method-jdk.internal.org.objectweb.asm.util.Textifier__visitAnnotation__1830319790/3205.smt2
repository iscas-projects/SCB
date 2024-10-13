(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3814 0)
(declare-sort var14 0)
(declare-sort var476 0)
(declare-sort var3583 0)
(declare-sort var64 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var476) String)
(declare-fun cast-from-var3814-to-var476 (var3814) var476)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var3814) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var3814 Int String) void)
(declare-fun text/-10557480 (var476) var3583)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3583_add/328494887 (var3583 var64) Bool)
(declare-fun cast-from-String-to-var64 (String) var64)
(declare-fun createTextifier/-1341636553 (var3814) var3814)
(declare-fun getText/-142638630 (var476) var3583)
(declare-fun cast-from-var3583-to-var64 (var3583) var64)
(declare-const null-var3814 var3814)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var160 var3814) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var160 null-var3814)))
(declare-const var1398 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1398 null-String)))
(declare-const var1005 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1005 null-Bool)))
(define-const var1614 String (buf/-10557480 (cast-from-var3814-to-var476 var160))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1614 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1614!1 String)
(declare-const var2864 Int)
(define-const var2461 String (buf/-10557480 (cast-from-var3814-to-var476 var160))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3966 String (tab/-788090934 var160)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var2941 String (append/1560614132 var2461 var3966)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2461!1 String)
(assert (str.prefixof var2461 var2461!1))
(assert true)
;(assert (append/1183289509 var2941 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var2941!1 String)
(declare-const var2121 Int)
(assert true)
;(assert (appendDescriptor/199836990 var160 1 var1398)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var160!1 var3814)
(declare-const var1361 Int)
(declare-const var1398!1 String)
(define-const var3697 String (buf/-10557480 (cast-from-var3814-to-var476 var160!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3697 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var3697!1 String)
(declare-const var323 Int)
(define-const var1458 var3583 (text/-10557480 (cast-from-var3814-to-var476 var160!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1542 String (buf/-10557480 (cast-from-var3814-to-var476 var160!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2984 String (toString/-222306083 var1542)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3583_add/328494887 var1458 (cast-from-String-to-var64 var2984))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var1458!1 var3583)
(declare-const var2984!1 String)
(assert true)
(define-const var199 var3814 (createTextifier/-1341636553 var160!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var520 var3583 (text/-10557480 (cast-from-var3814-to-var476 var160!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var1403 var3583 (getText/-142638630 (cast-from-var3814-to-var476 var199))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var3583_add/328494887 var520 (cast-from-var3583-to-var64 var1403))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var520!1 var3583)
(declare-const var1403!1 var3583)
(define-const var1347 var3583 (text/-10557480 (cast-from-var3814-to-var476 var160!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
 ; Statement: if z0 == 0 goto $r14 = ") // invisible\n" 
(assert (not (= (ite var1005 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3099 String ")\n") ; Statement: $r14 = ")\n" 
 ; Statement: goto [?= interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14)] 
(assert true) ; Non Conditional
;(assert (var3583_add/328494887 var1347 (cast-from-String-to-var64 var3099))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14) 

(declare-const var1347!1 var3583)
(declare-const var3099!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3814-to-var476=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3583_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var64=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3583-to-var64=([java.util.List], java.lang.Object)}
; {var3814=jdk.internal.org.objectweb.asm.util.Textifier, var160=r0, var1398=r5, var14=null_type, var1005=z0, var476=jdk.internal.org.objectweb.asm.util.Printer, var1614=$r1, var2864=0, var2461=$r3, var3966=$r2, var2941=$r4, var2121=64, var1361=1, var3697=$r6, var323=40, var3583=java.util.List, var1458=$r8, var1542=$r7, var2984=$r9, var64=java.lang.Object, var199=r10, var520=$r11, var1403=$r12, var1347=$r13, var3099=$r14}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3814, r0=var160, r5=var1398, null_type=var14, z0=var1005, jdk.internal.org.objectweb.asm.util.Printer=var476, $r1=var1614, 0=var2864, $r3=var2461, $r2=var3966, $r4=var2941, 64=var2121, 1=var1361, $r6=var3697, 40=var323, java.util.List=var3583, $r8=var1458, $r7=var1542, $r9=var2984, java.lang.Object=var64, r10=var199, $r11=var520, $r12=var1403, $r13=var1347, $r14=var3099}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	if z0 == 0 goto $r14 = ") // invisible\n";	$r14 = ")\n";	goto [?= interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14)];	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14);	return r10
;block_num 3