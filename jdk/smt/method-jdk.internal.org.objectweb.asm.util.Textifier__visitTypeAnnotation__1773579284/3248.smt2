(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort var889 0)
(declare-sort var797 0)
(declare-sort var3423 0)
(declare-sort var94 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3423) String)
(declare-fun cast-from-var2178-to-var3423 (var2178) var3423)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var2178) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var2178 Int String) void)
(declare-fun text/-10557480 (var3423) var94)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var94_add/328494887 (var94 var2003) Bool)
(declare-fun cast-from-String-to-var2003 (String) var2003)
(declare-fun createTextifier/-1341636553 (var2178) var2178)
(declare-fun getText/-142638630 (var3423) var94)
(declare-fun cast-from-var94-to-var2003 (var94) var2003)
(declare-fun appendTypeReference/309807963 (var2178 Int) void)
(declare-fun append/-143899486 (String var2003) String)
(declare-fun cast-from-var889-to-var2003 (var889) var2003)
(declare-const null-var2178 var2178)
(declare-const null-Int Int)
(declare-const null-var889 var889)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1870 var2178) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1870 null-var2178)))
(declare-const var2661 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2661 null-Int)))
(declare-const var3797 var889) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var3797 null-var889)))
(declare-const var460 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var460 null-String)))
(declare-const var2705 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2705 null-Bool)))
(define-const var3392 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3392 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3392!1 String)
(declare-const var1731 Int)
(define-const var2815 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var201 String (tab/-788090934 var1870)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var1883 String (append/1560614132 var2815 var201)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2815!1 String)
(assert (str.prefixof var2815 var2815!1))
(assert true)
;(assert (append/1183289509 var1883 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var1883!1 String)
(declare-const var1221 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1870 1 var460)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1870!1 var2178)
(declare-const var1938 Int)
(declare-const var460!1 String)
(define-const var108 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var108 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var108!1 String)
(declare-const var3759 Int)
(define-const var1743 var94 (text/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1855 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var448 String (toString/-222306083 var1855)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var94_add/328494887 var1743 (cast-from-String-to-var2003 var448))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var1743!1 var94)
(declare-const var448!1 String)
(assert true)
(define-const var3356 var2178 (createTextifier/-1341636553 var1870!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var2336 var94 (text/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var1038 var94 (getText/-142638630 (cast-from-var2178-to-var3423 var3356))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var94_add/328494887 var2336 (cast-from-var94-to-var2003 var1038))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2336!1 var94)
(declare-const var1038!1 var94)
(define-const var1546 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1546 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1546!1 String)
(declare-const var1731!1 Int)
(define-const var849 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var849 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var849!1 String)
(assert (str.prefixof var849 var849!1))
(assert true)
;(assert (appendTypeReference/309807963 var1870!1 var2661)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var1870!2 var2178)
(declare-const var2661!1 Int)
(define-const var2480 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var155 String (append/1560614132 var2480 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2480!1 String)
(assert (str.prefixof var2480 var2480!1))
(assert true)
;(assert (append/-143899486 var155 (cast-from-var889-to-var2003 var3797))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var155!1 String)
(declare-const var3797!1 var889)
(define-const var1043 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!2))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r22 = " // invisible\n" 
(assert (not (= (ite var2705 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2944 String "\n") ; Statement: $r22 = "\n" 
 ; Statement: goto [?= virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var1043 var2944)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22) 
(declare-const var1043!1 String)
(assert (str.prefixof var1043 var1043!1))
(define-const var3484 var94 (text/-10557480 (cast-from-var2178-to-var3423 var1870!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2941 String (buf/-10557480 (cast-from-var2178-to-var3423 var1870!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var428 String (toString/-222306083 var2941)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var94_add/328494887 var3484 (cast-from-String-to-var2003 var428))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var3484!1 var94)
(declare-const var428!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2178-to-var3423=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var94_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2003=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var94-to-var2003=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var889-to-var2003=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object)}
; {var2178=jdk.internal.org.objectweb.asm.util.Textifier, var1870=r0, var2661=i0, var889=jdk.internal.org.objectweb.asm.TypePath, var3797=r16, var460=r5, var797=null_type, var2705=z0, var3423=jdk.internal.org.objectweb.asm.util.Printer, var3392=$r1, var1731=0, var2815=$r3, var201=$r2, var1883=$r4, var1221=64, var1938=1, var108=$r6, var3759=40, var94=java.util.List, var1743=$r8, var1855=$r7, var448=$r9, var2003=java.lang.Object, var3356=r10, var2336=$r11, var1038=$r12, var1546=$r13, var849=$r14, var2480=$r15, var155=$r17, var1043=$r18, var2944=$r22, var3484=$r20, var2941=$r19, var428=$r21}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2178, r0=var1870, i0=var2661, jdk.internal.org.objectweb.asm.TypePath=var889, r16=var3797, r5=var460, null_type=var797, z0=var2705, jdk.internal.org.objectweb.asm.util.Printer=var3423, $r1=var3392, 0=var1731, $r3=var2815, $r2=var201, $r4=var1883, 64=var1221, 1=var1938, $r6=var108, 40=var3759, java.util.List=var94, $r8=var1743, $r7=var1855, $r9=var448, java.lang.Object=var2003, r10=var3356, $r11=var2336, $r12=var1038, $r13=var1546, $r14=var849, $r15=var2480, $r17=var155, $r18=var1043, $r22=var2944, $r20=var3484, $r19=var2941, $r21=var428}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r5 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r22 = " // invisible\n";	$r22 = "\n";	goto [?= virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22)];	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21);	return r10
;block_num 3