(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3659 0)
(declare-sort var3505 0)
(declare-sort var3803 0)
(declare-sort var3301 0)
(declare-sort var786 0)
(declare-sort var766 0)
(declare-sort var356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var786) String)
(declare-fun cast-from-var3659-to-var786 (var3659) var786)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3659) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var3659 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var786) var766)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var766_add/328494887 (var766 var356) Bool)
(declare-fun cast-from-String-to-var356 (String) var356)
(declare-fun createTextifier/-1341636553 (var3659) var3659)
(declare-fun getText/-142638630 (var786) var766)
(declare-fun cast-from-var766-to-var356 (var766) var356)
(declare-fun appendTypeReference/309807963 (var3659 Int) void)
(declare-fun append/-143899486 (String var356) String)
(declare-fun cast-from-var3505-to-var356 (var3505) var356)
(declare-fun getLength-Arr-var3803-1 ((Array Int var3803)) Int)
(declare-const null-var3659 var3659)
(declare-const null-Int Int)
(declare-const null-var3505 var3505)
(declare-const null-__Array__Int__var3803__ (Array Int var3803))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1274 var3659) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1274 null-var3659)))
(declare-const var1850 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1850 null-Int)))
(declare-const var1686 var3505) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var1686 null-var3505)))
(declare-const var2168 (Array Int var3803)) ; Statement: r18 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2168 null-__Array__Int__var3803__)))
(declare-const var2676 (Array Int var3803)) ; Statement: r26 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2676 null-__Array__Int__var3803__)))
(declare-const var903 (Array Int Int)) ; Statement: r29 := @parameter4: int[] 
(assert (not (= var903 null-__Array__Int__Int__)))
(declare-const var3618 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var3618 null-String)))
(declare-const var407 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var407 null-Bool)))
(define-const var3741 String (buf/-10557480 (cast-from-var3659-to-var786 var1274))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3741 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3741!1 String)
(declare-const var1001 Int)
(define-const var114 String (buf/-10557480 (cast-from-var3659-to-var786 var1274))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var210 String (tab2/-788090934 var1274)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3927 String (append/1560614132 var114 var210)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var114!1 String)
(assert (str.prefixof var114 var114!1))
(assert true)
;(assert (append/1560614132 var3927 "LOCALVARIABLE @")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE @") 
(declare-const var3927!1 String)
(assert (str.prefixof var3927 var3927!1))
(assert true)
;(assert (appendDescriptor/199836990 var1274 1 var3618)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1274!1 var3659)
(declare-const var698 Int)
(declare-const var3618!1 String)
(define-const var3330 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3330 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var3330!1 String)
(declare-const var1628 Int)
(define-const var260 var766 (text/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var807 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var508 String (toString/-222306083 var807)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var766_add/328494887 var260 (cast-from-String-to-var356 var508))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var260!1 var766)
(declare-const var508!1 String)
(assert true)
(define-const var2398 var3659 (createTextifier/-1341636553 var1274!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var3921 var766 (text/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var985 var766 (getText/-142638630 (cast-from-var3659-to-var786 var2398))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var766_add/328494887 var3921 (cast-from-var766-to-var356 var985))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3921!1 var766)
(declare-const var985!1 var766)
(define-const var1307 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1307 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1307!1 String)
(declare-const var1001!1 Int)
(define-const var781 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var781 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var781!1 String)
(assert (str.prefixof var781 var781!1))
(assert true)
;(assert (appendTypeReference/309807963 var1274!1 var1850)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var1274!2 var3659)
(declare-const var1850!1 Int)
(define-const var1104 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2688 String (append/1560614132 var1104 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1104!1 String)
(assert (str.prefixof var1104 var1104!1))
(assert true)
;(assert (append/-143899486 var2688 (cast-from-var3505-to-var356 var1686))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var2688!1 String)
(declare-const var1686!1 var3505)
(define-const var2787 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var61 Int (getLength-Arr-var3803-1 var2168)) ; Statement: $i1 = lengthof r18 
 ; Statement: if i3 >= $i1 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (>= var2787 var61)) ; Cond: i3 >= $i1 
(define-const var3558 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r32 = " // invisible\n" 
(assert (= (ite var407 1 0) 0)) ; Cond: z0 == 0 
(define-const var974 String " // invisible\n") ; Statement: $r32 = " // invisible\n" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var3558 var974)) ; Statement: virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32) 
(declare-const var3558!1 String)
(assert (str.prefixof var3558 var3558!1))
(define-const var3443 var766 (text/-10557480 (cast-from-var3659-to-var786 var1274!2))) ; Statement: $r21 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1286 String (buf/-10557480 (cast-from-var3659-to-var786 var1274!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var165 String (toString/-222306083 var1286)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var766_add/328494887 var3443 (cast-from-String-to-var356 var165))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>($r22) 

(declare-const var3443!1 var766)
(declare-const var165!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3659-to-var786=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var766_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var356=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var766-to-var356=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3505-to-var356=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object), getLength-Arr-var3803-1=([jdk.internal.org.objectweb.asm.Label[]], int)}
; {var3659=jdk.internal.org.objectweb.asm.util.Textifier, var1274=r0, var1850=i0, var3505=jdk.internal.org.objectweb.asm.TypePath, var1686=r16, var3803=jdk.internal.org.objectweb.asm.Label, var2168=r18, var2676=r26, var903=r29, var3618=r5, var3301=null_type, var407=z0, var786=jdk.internal.org.objectweb.asm.util.Printer, var3741=$r1, var1001=0, var114=$r3, var210=$r2, var3927=$r4, var698=1, var3330=$r6, var1628=40, var766=java.util.List, var260=$r8, var807=$r7, var508=$r9, var356=java.lang.Object, var2398=r10, var3921=$r11, var985=$r12, var1307=$r13, var781=$r14, var1104=$r15, var2688=$r17, var2787=i3, var61=$i1, var3558=$r19, var974=$r32, var3443=$r21, var1286=$r20, var165=$r22}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3659, r0=var1274, i0=var1850, jdk.internal.org.objectweb.asm.TypePath=var3505, r16=var1686, jdk.internal.org.objectweb.asm.Label=var3803, r18=var2168, r26=var2676, r29=var903, r5=var3618, null_type=var3301, z0=var407, jdk.internal.org.objectweb.asm.util.Printer=var786, $r1=var3741, 0=var1001, $r3=var114, $r2=var210, $r4=var3927, 1=var698, $r6=var3330, 40=var1628, java.util.List=var766, $r8=var260, $r7=var807, $r9=var508, java.lang.Object=var356, r10=var2398, $r11=var3921, $r12=var985, $r13=var1307, $r14=var781, $r15=var1104, $r17=var2688, i3=var2787, $i1=var61, $r19=var3558, $r32=var974, $r21=var3443, $r20=var1286, $r22=var165}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r18 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	r26 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	r29 := @parameter4: int[];	r5 := @parameter5: java.lang.String;	z0 := @parameter6: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE @");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	i3 = 0;	$i1 = lengthof r18;	if i3 >= $i1 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r32 = " // invisible\n";	$r32 = " // invisible\n";	virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r32);	$r21 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>($r22);	return r10
;block_num 5