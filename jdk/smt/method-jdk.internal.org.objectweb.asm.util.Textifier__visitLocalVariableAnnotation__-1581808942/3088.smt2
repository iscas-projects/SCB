(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3950 0)
(declare-sort var1066 0)
(declare-sort var297 0)
(declare-sort var3444 0)
(declare-sort var2243 0)
(declare-sort var3542 0)
(declare-sort var3048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2243) String)
(declare-fun cast-from-var3950-to-var2243 (var3950) var2243)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3950) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var3950 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2243) var3542)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3542_add/328494887 (var3542 var3048) Bool)
(declare-fun cast-from-String-to-var3048 (String) var3048)
(declare-fun createTextifier/-1341636553 (var3950) var3950)
(declare-fun getText/-142638630 (var2243) var3542)
(declare-fun cast-from-var3542-to-var3048 (var3542) var3048)
(declare-fun appendTypeReference/309807963 (var3950 Int) void)
(declare-fun append/-143899486 (String var3048) String)
(declare-fun cast-from-var1066-to-var3048 (var1066) var3048)
(declare-fun getLength-Arr-var297-1 ((Array Int var297)) Int)
(declare-const null-var3950 var3950)
(declare-const null-Int Int)
(declare-const null-var1066 var1066)
(declare-const null-__Array__Int__var297__ (Array Int var297))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1841 var3950) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1841 null-var3950)))
(declare-const var1894 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1894 null-Int)))
(declare-const var2537 var1066) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var2537 null-var1066)))
(declare-const var2521 (Array Int var297)) ; Statement: r18 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2521 null-__Array__Int__var297__)))
(declare-const var2184 (Array Int var297)) ; Statement: r26 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2184 null-__Array__Int__var297__)))
(declare-const var1006 (Array Int Int)) ; Statement: r29 := @parameter4: int[] 
(assert (not (= var1006 null-__Array__Int__Int__)))
(declare-const var1795 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var1795 null-String)))
(declare-const var1698 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var1698 null-Bool)))
(define-const var3597 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3597 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3597!1 String)
(declare-const var2963 Int)
(define-const var3726 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var199 String (tab2/-788090934 var1841)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var1306 String (append/1560614132 var3726 var199)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3726!1 String)
(assert (str.prefixof var3726 var3726!1))
(assert true)
;(assert (append/1560614132 var1306 "LOCALVARIABLE @")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE @") 
(declare-const var1306!1 String)
(assert (str.prefixof var1306 var1306!1))
(assert true)
;(assert (appendDescriptor/199836990 var1841 1 var1795)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1841!1 var3950)
(declare-const var3585 Int)
(declare-const var1795!1 String)
(define-const var654 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var654 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var654!1 String)
(declare-const var3613 Int)
(define-const var2386 var3542 (text/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var243 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3203 String (toString/-222306083 var243)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3542_add/328494887 var2386 (cast-from-String-to-var3048 var3203))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2386!1 var3542)
(declare-const var3203!1 String)
(assert true)
(define-const var1410 var3950 (createTextifier/-1341636553 var1841!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var2052 var3542 (text/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var1549 var3542 (getText/-142638630 (cast-from-var3950-to-var2243 var1410))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var3542_add/328494887 var2052 (cast-from-var3542-to-var3048 var1549))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2052!1 var3542)
(declare-const var1549!1 var3542)
(define-const var3550 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3550 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3550!1 String)
(declare-const var2963!1 Int)
(define-const var1993 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1993 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var1993!1 String)
(assert (str.prefixof var1993 var1993!1))
(assert true)
;(assert (appendTypeReference/309807963 var1841!1 var1894)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var1841!2 var3950)
(declare-const var1894!1 Int)
(define-const var3754 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3438 String (append/1560614132 var3754 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3754!1 String)
(assert (str.prefixof var3754 var3754!1))
(assert true)
;(assert (append/-143899486 var3438 (cast-from-var1066-to-var3048 var2537))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var3438!1 String)
(declare-const var2537!1 var1066)
(define-const var2672 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var413 Int (getLength-Arr-var297-1 var2521)) ; Statement: $i1 = lengthof r18 
 ; Statement: if i3 >= $i1 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (>= var2672 var413)) ; Cond: i3 >= $i1 
(define-const var338 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r32 = " // invisible\n" 
(assert (not (= (ite var1698 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2015 String "\n") ; Statement: $r32 = "\n" 
 ; Statement: goto [?= virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var338 var2015)) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32) 
(declare-const var338!1 String)
(assert (str.prefixof var338 var338!1))
(define-const var184 var3542 (text/-10557480 (cast-from-var3950-to-var2243 var1841!2))) ; Statement: $r21 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var982 String (buf/-10557480 (cast-from-var3950-to-var2243 var1841!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3833 String (toString/-222306083 var982)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3542_add/328494887 var184 (cast-from-String-to-var3048 var3833))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>($r22) 

(declare-const var184!1 var3542)
(declare-const var3833!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3950-to-var2243=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3542_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3048=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3542-to-var3048=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1066-to-var3048=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object), getLength-Arr-var297-1=([jdk.internal.org.objectweb.asm.Label[]], int)}
; {var3950=jdk.internal.org.objectweb.asm.util.Textifier, var1841=r0, var1894=i0, var1066=jdk.internal.org.objectweb.asm.TypePath, var2537=r16, var297=jdk.internal.org.objectweb.asm.Label, var2521=r18, var2184=r26, var1006=r29, var1795=r5, var3444=null_type, var1698=z0, var2243=jdk.internal.org.objectweb.asm.util.Printer, var3597=$r1, var2963=0, var3726=$r3, var199=$r2, var1306=$r4, var3585=1, var654=$r6, var3613=40, var3542=java.util.List, var2386=$r8, var243=$r7, var3203=$r9, var3048=java.lang.Object, var1410=r10, var2052=$r11, var1549=$r12, var3550=$r13, var1993=$r14, var3754=$r15, var3438=$r17, var2672=i3, var413=$i1, var338=$r19, var2015=$r32, var184=$r21, var982=$r20, var3833=$r22}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3950, r0=var1841, i0=var1894, jdk.internal.org.objectweb.asm.TypePath=var1066, r16=var2537, jdk.internal.org.objectweb.asm.Label=var297, r18=var2521, r26=var2184, r29=var1006, r5=var1795, null_type=var3444, z0=var1698, jdk.internal.org.objectweb.asm.util.Printer=var2243, $r1=var3597, 0=var2963, $r3=var3726, $r2=var199, $r4=var1306, 1=var3585, $r6=var654, 40=var3613, java.util.List=var3542, $r8=var2386, $r7=var243, $r9=var3203, java.lang.Object=var3048, r10=var1410, $r11=var2052, $r12=var1549, $r13=var3550, $r14=var1993, $r15=var3754, $r17=var3438, i3=var2672, $i1=var413, $r19=var338, $r32=var2015, $r21=var184, $r20=var982, $r22=var3833}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r18 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	r26 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	r29 := @parameter4: int[];	r5 := @parameter5: java.lang.String;	z0 := @parameter6: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE @");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	i3 = 0;	$i1 = lengthof r18;	if i3 >= $i1 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r32 = " // invisible\n";	$r32 = "\n";	goto [?= virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32)];	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32);	$r21 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>($r22);	return r10
;block_num 5