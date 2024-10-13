(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2709 0)
(declare-sort var3736 0)
(declare-sort var3367 0)
(declare-sort var1532 0)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3367) String)
(declare-fun cast-from-var2709-to-var3367 (var2709) var3367)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var2709) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var2709 Int String) void)
(declare-fun text/-10557480 (var3367) var1532)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1532_add/328494887 (var1532 var1736) Bool)
(declare-fun cast-from-String-to-var1736 (String) var1736)
(declare-fun createTextifier/-1341636553 (var2709) var2709)
(declare-fun getText/-142638630 (var3367) var1532)
(declare-fun cast-from-var1532-to-var1736 (var1532) var1736)
(declare-const null-var2709 var2709)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3598 var2709) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3598 null-var2709)))
(declare-const var1041 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1041 null-String)))
(declare-const var2271 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2271 null-Bool)))
(define-const var2965 String (buf/-10557480 (cast-from-var2709-to-var3367 var3598))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2965 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2965!1 String)
(declare-const var79 Int)
(define-const var2282 String (buf/-10557480 (cast-from-var2709-to-var3367 var3598))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3525 String (tab/-788090934 var3598)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var3433 String (append/1560614132 var2282 var3525)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2282!1 String)
(assert (str.prefixof var2282 var2282!1))
(assert true)
;(assert (append/1183289509 var3433 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var3433!1 String)
(declare-const var3263 Int)
(assert true)
;(assert (appendDescriptor/199836990 var3598 1 var1041)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var3598!1 var2709)
(declare-const var1475 Int)
(declare-const var1041!1 String)
(define-const var636 String (buf/-10557480 (cast-from-var2709-to-var3367 var3598!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var636 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var636!1 String)
(declare-const var3735 Int)
(define-const var436 var1532 (text/-10557480 (cast-from-var2709-to-var3367 var3598!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var427 String (buf/-10557480 (cast-from-var2709-to-var3367 var3598!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1175 String (toString/-222306083 var427)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1532_add/328494887 var436 (cast-from-String-to-var1736 var1175))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var436!1 var1532)
(declare-const var1175!1 String)
(assert true)
(define-const var2399 var2709 (createTextifier/-1341636553 var3598!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var2779 var1532 (text/-10557480 (cast-from-var2709-to-var3367 var3598!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var1124 var1532 (getText/-142638630 (cast-from-var2709-to-var3367 var2399))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var1532_add/328494887 var2779 (cast-from-var1532-to-var1736 var1124))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2779!1 var1532)
(declare-const var1124!1 var1532)
(define-const var3590 var1532 (text/-10557480 (cast-from-var2709-to-var3367 var3598!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
 ; Statement: if z0 == 0 goto $r14 = ") // invisible\n" 
(assert (= (ite var2271 1 0) 0)) ; Cond: z0 == 0 
(define-const var3511 String ") // invisible\n") ; Statement: $r14 = ") // invisible\n" 
(assert true) ; Non Conditional
;(assert (var1532_add/328494887 var3590 (cast-from-String-to-var1736 var3511))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14) 

(declare-const var3590!1 var1532)
(declare-const var3511!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2709-to-var3367=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1532_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1736=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1532-to-var1736=([java.util.List], java.lang.Object)}
; {var2709=jdk.internal.org.objectweb.asm.util.Textifier, var3598=r0, var1041=r5, var3736=null_type, var2271=z0, var3367=jdk.internal.org.objectweb.asm.util.Printer, var2965=$r1, var79=0, var2282=$r3, var3525=$r2, var3433=$r4, var3263=64, var1475=1, var636=$r6, var3735=40, var1532=java.util.List, var436=$r8, var427=$r7, var1175=$r9, var1736=java.lang.Object, var2399=r10, var2779=$r11, var1124=$r12, var3590=$r13, var3511=$r14}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2709, r0=var3598, r5=var1041, null_type=var3736, z0=var2271, jdk.internal.org.objectweb.asm.util.Printer=var3367, $r1=var2965, 0=var79, $r3=var2282, $r2=var3525, $r4=var3433, 64=var3263, 1=var1475, $r6=var636, 40=var3735, java.util.List=var1532, $r8=var436, $r7=var427, $r9=var1175, java.lang.Object=var1736, r10=var2399, $r11=var2779, $r12=var1124, $r13=var3590, $r14=var3511}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	if z0 == 0 goto $r14 = ") // invisible\n";	$r14 = ") // invisible\n";	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r14);	return r10
;block_num 3