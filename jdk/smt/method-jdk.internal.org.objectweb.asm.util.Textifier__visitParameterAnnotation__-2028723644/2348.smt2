(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3248 0)
(declare-sort var2253 0)
(declare-sort var503 0)
(declare-sort var474 0)
(declare-sort var2159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var503) String)
(declare-fun cast-from-var3248-to-var503 (var3248) var503)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3248) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var3248 Int String) void)
(declare-fun text/-10557480 (var503) var474)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var474_add/328494887 (var474 var2159) Bool)
(declare-fun cast-from-String-to-var2159 (String) var2159)
(declare-fun createTextifier/-1341636553 (var3248) var3248)
(declare-fun getText/-142638630 (var503) var474)
(declare-fun cast-from-var474-to-var2159 (var474) var2159)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2159 (Int) var2159)
(declare-const null-var3248 var3248)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1242 var3248) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1242 null-var3248)))
(declare-const var2889 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2889 null-Int)))
(declare-const var1060 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1060 null-String)))
(declare-const var1054 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1054 null-Bool)))
(define-const var769 String (buf/-10557480 (cast-from-var3248-to-var503 var1242))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var769 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var769!1 String)
(declare-const var1204 Int)
(define-const var3876 String (buf/-10557480 (cast-from-var3248-to-var503 var1242))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var894 String (tab2/-788090934 var1242)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3147 String (append/1560614132 var3876 var894)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3876!1 String)
(assert (str.prefixof var3876 var3876!1))
(assert true)
;(assert (append/1183289509 var3147 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var3147!1 String)
(declare-const var1180 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1242 1 var1060)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1242!1 var3248)
(declare-const var2212 Int)
(declare-const var1060!1 String)
(define-const var2860 String (buf/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2860 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2860!1 String)
(declare-const var3026 Int)
(define-const var3559 var474 (text/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var626 String (buf/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var795 String (toString/-222306083 var626)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var474_add/328494887 var3559 (cast-from-String-to-var2159 var795))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var3559!1 var474)
(declare-const var795!1 String)
(assert true)
(define-const var3994 var3248 (createTextifier/-1341636553 var1242!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var1153 var474 (text/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var2913 var474 (getText/-142638630 (cast-from-var3248-to-var503 var3994))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var474_add/328494887 var1153 (cast-from-var474-to-var2159 var2913))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var1153!1 var474)
(declare-const var2913!1 var474)
(define-const var3668 var474 (text/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
 ; Statement: if z0 == 0 goto $r17 = ") // invisible, parameter " 
(assert (not (= (ite var1054 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2831 String ") // parameter ") ; Statement: $r17 = ") // parameter " 
 ; Statement: goto [?= interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17)] 
(assert true) ; Non Conditional
;(assert (var474_add/328494887 var3668 (cast-from-String-to-var2159 var2831))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var3668!1 var474)
(declare-const var2831!1 String)
(define-const var2666 var474 (text/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2440 Int (Int_valueOf/-1371140006 var2889)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
;(assert (var474_add/328494887 var2666 (cast-from-Int-to-var2159 var2440))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var2666!1 var474)
(declare-const var2440!1 Int)
(define-const var3597 var474 (text/-10557480 (cast-from-var3248-to-var503 var1242!1))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
;(assert (var474_add/328494887 var3597 (cast-from-String-to-var2159 "\n"))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>("\n") 

(declare-const var3597!1 var474)
(declare-const var2597 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3248-to-var503=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var474_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2159=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var474-to-var2159=([java.util.List], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2159=([java.lang.Integer], java.lang.Object)}
; {var3248=jdk.internal.org.objectweb.asm.util.Textifier, var1242=r0, var2889=i0, var1060=r5, var2253=null_type, var1054=z0, var503=jdk.internal.org.objectweb.asm.util.Printer, var769=$r1, var1204=0, var3876=$r3, var894=$r2, var3147=$r4, var1180=64, var2212=1, var2860=$r6, var3026=40, var474=java.util.List, var3559=$r8, var626=$r7, var795=$r9, var2159=java.lang.Object, var3994=r10, var1153=$r11, var2913=$r12, var3668=$r13, var2831=$r17, var2666=$r14, var2440=$r15, var3597=$r16, var2597="\n"}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3248, r0=var1242, i0=var2889, r5=var1060, null_type=var2253, z0=var1054, jdk.internal.org.objectweb.asm.util.Printer=var503, $r1=var769, 0=var1204, $r3=var3876, $r2=var894, $r4=var3147, 64=var1180, 1=var2212, $r6=var2860, 40=var3026, java.util.List=var474, $r8=var3559, $r7=var626, $r9=var795, java.lang.Object=var2159, r10=var3994, $r11=var1153, $r12=var2913, $r13=var3668, $r17=var2831, $r14=var2666, $r15=var2440, $r16=var3597, "\n"=var2597}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	if z0 == 0 goto $r17 = ") // invisible, parameter ";	$r17 = ") // parameter ";	goto [?= interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17)];	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>("\n");	return r10
;block_num 3