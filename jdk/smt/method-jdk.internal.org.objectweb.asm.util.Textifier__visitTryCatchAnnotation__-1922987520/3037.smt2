(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var967 0)
(declare-sort var2850 0)
(declare-sort var2351 0)
(declare-sort var2554 0)
(declare-sort var1062 0)
(declare-sort var2639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2554) String)
(declare-fun cast-from-var967-to-var2554 (var967) var2554)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var967) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var967 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2554) var1062)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1062_add/328494887 (var1062 var2639) Bool)
(declare-fun cast-from-String-to-var2639 (String) var2639)
(declare-fun createTextifier/-1341636553 (var967) var967)
(declare-fun getText/-142638630 (var2554) var1062)
(declare-fun cast-from-var1062-to-var2639 (var1062) var2639)
(declare-fun appendTypeReference/309807963 (var967 Int) void)
(declare-fun append/-143899486 (String var2639) String)
(declare-fun cast-from-var2850-to-var2639 (var2850) var2639)
(declare-const null-var967 var967)
(declare-const null-Int Int)
(declare-const null-var2850 var2850)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var905 var967) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var905 null-var967)))
(declare-const var1587 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1587 null-Int)))
(declare-const var3577 var2850) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3577 null-var2850)))
(declare-const var2522 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2522 null-String)))
(declare-const var93 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var93 null-Bool)))
(define-const var1028 String (buf/-10557480 (cast-from-var967-to-var2554 var905))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1028 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1028!1 String)
(declare-const var1926 Int)
(define-const var3092 String (buf/-10557480 (cast-from-var967-to-var2554 var905))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1117 String (tab2/-788090934 var905)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var737 String (append/1560614132 var3092 var1117)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3092!1 String)
(assert (str.prefixof var3092 var3092!1))
(assert true)
;(assert (append/1560614132 var737 "TRYCATCHBLOCK @")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK @") 
(declare-const var737!1 String)
(assert (str.prefixof var737 var737!1))
(assert true)
;(assert (appendDescriptor/199836990 var905 1 var2522)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var905!1 var967)
(declare-const var2267 Int)
(declare-const var2522!1 String)
(define-const var2297 String (buf/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2297 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var2297!1 String)
(declare-const var950 Int)
(define-const var3422 var1062 (text/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1575 String (buf/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var604 String (toString/-222306083 var1575)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1062_add/328494887 var3422 (cast-from-String-to-var2639 var604))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var3422!1 var1062)
(declare-const var604!1 String)
(assert true)
(define-const var2118 var967 (createTextifier/-1341636553 var905!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var3954 var1062 (text/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var776 var1062 (getText/-142638630 (cast-from-var967-to-var2554 var2118))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var1062_add/328494887 var3954 (cast-from-var1062-to-var2639 var776))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3954!1 var1062)
(declare-const var776!1 var1062)
(define-const var480 String (buf/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var480 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var480!1 String)
(declare-const var1926!1 Int)
(define-const var2521 String (buf/-10557480 (cast-from-var967-to-var2554 var905!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2521 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var2521!1 String)
(assert (str.prefixof var2521 var2521!1))
(assert true)
;(assert (appendTypeReference/309807963 var905!1 var1587)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var905!2 var967)
(declare-const var1587!1 Int)
(define-const var1978 String (buf/-10557480 (cast-from-var967-to-var2554 var905!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1857 String (append/1560614132 var1978 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1978!1 String)
(assert (str.prefixof var1978 var1978!1))
(assert true)
;(assert (append/-143899486 var1857 (cast-from-var2850-to-var2639 var3577))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var1857!1 String)
(declare-const var3577!1 var2850)
(define-const var404 String (buf/-10557480 (cast-from-var967-to-var2554 var905!2))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r22 = " // invisible\n" 
(assert (= (ite var93 1 0) 0)) ; Cond: z0 == 0 
(define-const var782 String " // invisible\n") ; Statement: $r22 = " // invisible\n" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var404 var782)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22) 
(declare-const var404!1 String)
(assert (str.prefixof var404 var404!1))
(define-const var380 var1062 (text/-10557480 (cast-from-var967-to-var2554 var905!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3115 String (buf/-10557480 (cast-from-var967-to-var2554 var905!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var721 String (toString/-222306083 var3115)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1062_add/328494887 var380 (cast-from-String-to-var2639 var721))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var380!1 var1062)
(declare-const var721!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var967-to-var2554=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1062_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2639=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1062-to-var2639=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2850-to-var2639=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object)}
; {var967=jdk.internal.org.objectweb.asm.util.Textifier, var905=r0, var1587=i0, var2850=jdk.internal.org.objectweb.asm.TypePath, var3577=r16, var2522=r5, var2351=null_type, var93=z0, var2554=jdk.internal.org.objectweb.asm.util.Printer, var1028=$r1, var1926=0, var3092=$r3, var1117=$r2, var737=$r4, var2267=1, var2297=$r6, var950=40, var1062=java.util.List, var3422=$r8, var1575=$r7, var604=$r9, var2639=java.lang.Object, var2118=r10, var3954=$r11, var776=$r12, var480=$r13, var2521=$r14, var1978=$r15, var1857=$r17, var404=$r18, var782=$r22, var380=$r20, var3115=$r19, var721=$r21}
; {jdk.internal.org.objectweb.asm.util.Textifier=var967, r0=var905, i0=var1587, jdk.internal.org.objectweb.asm.TypePath=var2850, r16=var3577, r5=var2522, null_type=var2351, z0=var93, jdk.internal.org.objectweb.asm.util.Printer=var2554, $r1=var1028, 0=var1926, $r3=var3092, $r2=var1117, $r4=var737, 1=var2267, $r6=var2297, 40=var950, java.util.List=var1062, $r8=var3422, $r7=var1575, $r9=var604, java.lang.Object=var2639, r10=var2118, $r11=var3954, $r12=var776, $r13=var480, $r14=var2521, $r15=var1978, $r17=var1857, $r18=var404, $r22=var782, $r20=var380, $r19=var3115, $r21=var721}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r5 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK @");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r22 = " // invisible\n";	$r22 = " // invisible\n";	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21);	return r10
;block_num 3