(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var48 0)
(declare-sort var675 0)
(declare-sort var1137 0)
(declare-sort var2959 0)
(declare-sort var2368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1137) String)
(declare-fun cast-from-var48-to-var1137 (var48) var1137)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var48) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var48 Int String) void)
(declare-fun text/-10557480 (var1137) var2959)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2959_add/328494887 (var2959 var2368) Bool)
(declare-fun cast-from-String-to-var2368 (String) var2368)
(declare-fun createTextifier/-1341636553 (var48) var48)
(declare-fun getText/-142638630 (var1137) var2959)
(declare-fun cast-from-var2959-to-var2368 (var2959) var2368)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2368 (Int) var2368)
(declare-const null-var48 var48)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1511 var48) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1511 null-var48)))
(declare-const var2451 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2451 null-Int)))
(declare-const var3483 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3483 null-String)))
(declare-const var1706 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1706 null-Bool)))
(define-const var2073 String (buf/-10557480 (cast-from-var48-to-var1137 var1511))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2073 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2073!1 String)
(declare-const var3075 Int)
(define-const var2542 String (buf/-10557480 (cast-from-var48-to-var1137 var1511))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1254 String (tab2/-788090934 var1511)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var392 String (append/1560614132 var2542 var1254)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2542!1 String)
(assert (str.prefixof var2542 var2542!1))
(assert true)
;(assert (append/1183289509 var392 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var392!1 String)
(declare-const var1751 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1511 1 var3483)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1511!1 var48)
(declare-const var2908 Int)
(declare-const var3483!1 String)
(define-const var905 String (buf/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var905 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var905!1 String)
(declare-const var334 Int)
(define-const var2696 var2959 (text/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var975 String (buf/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2662 String (toString/-222306083 var975)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2959_add/328494887 var2696 (cast-from-String-to-var2368 var2662))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2696!1 var2959)
(declare-const var2662!1 String)
(assert true)
(define-const var3633 var48 (createTextifier/-1341636553 var1511!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var2974 var2959 (text/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var2876 var2959 (getText/-142638630 (cast-from-var48-to-var1137 var3633))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var2959_add/328494887 var2974 (cast-from-var2959-to-var2368 var2876))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2974!1 var2959)
(declare-const var2876!1 var2959)
(define-const var1916 var2959 (text/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
 ; Statement: if z0 == 0 goto $r17 = ") // invisible, parameter " 
(assert (= (ite var1706 1 0) 0)) ; Cond: z0 == 0 
(define-const var129 String ") // invisible, parameter ") ; Statement: $r17 = ") // invisible, parameter " 
(assert true) ; Non Conditional
;(assert (var2959_add/328494887 var1916 (cast-from-String-to-var2368 var129))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var1916!1 var2959)
(declare-const var129!1 String)
(define-const var3341 var2959 (text/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1660 Int (Int_valueOf/-1371140006 var2451)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
;(assert (var2959_add/328494887 var3341 (cast-from-Int-to-var2368 var1660))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var3341!1 var2959)
(declare-const var1660!1 Int)
(define-const var529 var2959 (text/-10557480 (cast-from-var48-to-var1137 var1511!1))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
;(assert (var2959_add/328494887 var529 (cast-from-String-to-var2368 "\n"))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>("\n") 

(declare-const var529!1 var2959)
(declare-const var1923 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var48-to-var1137=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2959_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2368=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2959-to-var2368=([java.util.List], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2368=([java.lang.Integer], java.lang.Object)}
; {var48=jdk.internal.org.objectweb.asm.util.Textifier, var1511=r0, var2451=i0, var3483=r5, var675=null_type, var1706=z0, var1137=jdk.internal.org.objectweb.asm.util.Printer, var2073=$r1, var3075=0, var2542=$r3, var1254=$r2, var392=$r4, var1751=64, var2908=1, var905=$r6, var334=40, var2959=java.util.List, var2696=$r8, var975=$r7, var2662=$r9, var2368=java.lang.Object, var3633=r10, var2974=$r11, var2876=$r12, var1916=$r13, var129=$r17, var3341=$r14, var1660=$r15, var529=$r16, var1923="\n"}
; {jdk.internal.org.objectweb.asm.util.Textifier=var48, r0=var1511, i0=var2451, r5=var3483, null_type=var675, z0=var1706, jdk.internal.org.objectweb.asm.util.Printer=var1137, $r1=var2073, 0=var3075, $r3=var2542, $r2=var1254, $r4=var392, 64=var1751, 1=var2908, $r6=var905, 40=var334, java.util.List=var2959, $r8=var2696, $r7=var975, $r9=var2662, java.lang.Object=var2368, r10=var3633, $r11=var2974, $r12=var2876, $r13=var1916, $r17=var129, $r14=var3341, $r15=var1660, $r16=var529, "\n"=var1923}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	if z0 == 0 goto $r17 = ") // invisible, parameter ";	$r17 = ") // invisible, parameter ";	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r15 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>("\n");	return r10
;block_num 3