(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2433 0)
(declare-sort var1228 0)
(declare-sort var2175 0)
(declare-sort var2405 0)
(declare-sort var1356 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2405) String)
(declare-fun cast-from-var2433-to-var2405 (var2433) var2405)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var2433) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var2433 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2405) var1356)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1356_add/328494887 (var1356 var1126) Bool)
(declare-fun cast-from-String-to-var1126 (String) var1126)
(declare-fun createTextifier/-1341636553 (var2433) var2433)
(declare-fun getText/-142638630 (var2405) var1356)
(declare-fun cast-from-var1356-to-var1126 (var1356) var1126)
(declare-fun appendTypeReference/309807963 (var2433 Int) void)
(declare-fun append/-143899486 (String var1126) String)
(declare-fun cast-from-var1228-to-var1126 (var1228) var1126)
(declare-const null-var2433 var2433)
(declare-const null-Int Int)
(declare-const null-var1228 var1228)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var883 var2433) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var883 null-var2433)))
(declare-const var3884 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3884 null-Int)))
(declare-const var81 var1228) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var81 null-var1228)))
(declare-const var662 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var662 null-String)))
(declare-const var1111 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1111 null-Bool)))
(define-const var2256 String (buf/-10557480 (cast-from-var2433-to-var2405 var883))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2256 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2256!1 String)
(declare-const var336 Int)
(define-const var342 String (buf/-10557480 (cast-from-var2433-to-var2405 var883))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1678 String (tab2/-788090934 var883)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3969 String (append/1560614132 var342 var1678)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var342!1 String)
(assert (str.prefixof var342 var342!1))
(assert true)
;(assert (append/1560614132 var3969 "TRYCATCHBLOCK @")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK @") 
(declare-const var3969!1 String)
(assert (str.prefixof var3969 var3969!1))
(assert true)
;(assert (appendDescriptor/199836990 var883 1 var662)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var883!1 var2433)
(declare-const var3788 Int)
(declare-const var662!1 String)
(define-const var201 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var201 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var201!1 String)
(declare-const var2672 Int)
(define-const var3418 var1356 (text/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var716 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1846 String (toString/-222306083 var716)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1356_add/328494887 var3418 (cast-from-String-to-var1126 var1846))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var3418!1 var1356)
(declare-const var1846!1 String)
(assert true)
(define-const var3799 var2433 (createTextifier/-1341636553 var883!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var3229 var1356 (text/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var445 var1356 (getText/-142638630 (cast-from-var2433-to-var2405 var3799))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var1356_add/328494887 var3229 (cast-from-var1356-to-var1126 var445))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3229!1 var1356)
(declare-const var445!1 var1356)
(define-const var45 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var45 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var45!1 String)
(declare-const var336!1 Int)
(define-const var3238 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3238 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var3238!1 String)
(assert (str.prefixof var3238 var3238!1))
(assert true)
;(assert (appendTypeReference/309807963 var883!1 var3884)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var883!2 var2433)
(declare-const var3884!1 Int)
(define-const var3608 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3965 String (append/1560614132 var3608 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3608!1 String)
(assert (str.prefixof var3608 var3608!1))
(assert true)
;(assert (append/-143899486 var3965 (cast-from-var1228-to-var1126 var81))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var3965!1 String)
(declare-const var81!1 var1228)
(define-const var1201 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!2))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r22 = " // invisible\n" 
(assert (not (= (ite var1111 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3941 String "\n") ; Statement: $r22 = "\n" 
 ; Statement: goto [?= virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var1201 var3941)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22) 
(declare-const var1201!1 String)
(assert (str.prefixof var1201 var1201!1))
(define-const var3111 var1356 (text/-10557480 (cast-from-var2433-to-var2405 var883!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var323 String (buf/-10557480 (cast-from-var2433-to-var2405 var883!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var507 String (toString/-222306083 var323)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1356_add/328494887 var3111 (cast-from-String-to-var1126 var507))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var3111!1 var1356)
(declare-const var507!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2433-to-var2405=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1356_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1126=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1356-to-var1126=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1228-to-var1126=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object)}
; {var2433=jdk.internal.org.objectweb.asm.util.Textifier, var883=r0, var3884=i0, var1228=jdk.internal.org.objectweb.asm.TypePath, var81=r16, var662=r5, var2175=null_type, var1111=z0, var2405=jdk.internal.org.objectweb.asm.util.Printer, var2256=$r1, var336=0, var342=$r3, var1678=$r2, var3969=$r4, var3788=1, var201=$r6, var2672=40, var1356=java.util.List, var3418=$r8, var716=$r7, var1846=$r9, var1126=java.lang.Object, var3799=r10, var3229=$r11, var445=$r12, var45=$r13, var3238=$r14, var3608=$r15, var3965=$r17, var1201=$r18, var3941=$r22, var3111=$r20, var323=$r19, var507=$r21}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2433, r0=var883, i0=var3884, jdk.internal.org.objectweb.asm.TypePath=var1228, r16=var81, r5=var662, null_type=var2175, z0=var1111, jdk.internal.org.objectweb.asm.util.Printer=var2405, $r1=var2256, 0=var336, $r3=var342, $r2=var1678, $r4=var3969, 1=var3788, $r6=var201, 40=var2672, java.util.List=var1356, $r8=var3418, $r7=var716, $r9=var1846, java.lang.Object=var1126, r10=var3799, $r11=var3229, $r12=var445, $r13=var45, $r14=var3238, $r15=var3608, $r17=var3965, $r18=var1201, $r22=var3941, $r20=var3111, $r19=var323, $r21=var507}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r5 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK @");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r22 = " // invisible\n";	$r22 = "\n";	goto [?= virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22)];	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21);	return r10
;block_num 3