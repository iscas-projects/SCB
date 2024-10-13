(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2121 0)
(declare-sort var519 0)
(declare-sort var2953 0)
(declare-sort var2966 0)
(declare-sort var3762 0)
(declare-sort var1611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2966) String)
(declare-fun cast-from-var2121-to-var2966 (var2121) var2966)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var2121) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var2121 Int String) void)
(declare-fun text/-10557480 (var2966) var3762)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3762_add/328494887 (var3762 var1611) Bool)
(declare-fun cast-from-String-to-var1611 (String) var1611)
(declare-fun createTextifier/-1341636553 (var2121) var2121)
(declare-fun getText/-142638630 (var2966) var3762)
(declare-fun cast-from-var3762-to-var1611 (var3762) var1611)
(declare-fun appendTypeReference/309807963 (var2121 Int) void)
(declare-fun append/-143899486 (String var1611) String)
(declare-fun cast-from-var519-to-var1611 (var519) var1611)
(declare-const null-var2121 var2121)
(declare-const null-Int Int)
(declare-const null-var519 var519)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2461 var2121) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2461 null-var2121)))
(declare-const var2787 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2787 null-Int)))
(declare-const var653 var519) ; Statement: r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var653 null-var519)))
(declare-const var2005 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2005 null-String)))
(declare-const var247 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var247 null-Bool)))
(define-const var2885 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2885 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2885!1 String)
(declare-const var1416 Int)
(define-const var2862 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1135 String (tab/-788090934 var2461)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var2870 String (append/1560614132 var2862 var1135)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2862!1 String)
(assert (str.prefixof var2862 var2862!1))
(assert true)
;(assert (append/1183289509 var2870 64)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var2870!1 String)
(declare-const var2569 Int)
(assert true)
;(assert (appendDescriptor/199836990 var2461 1 var2005)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var2461!1 var2121)
(declare-const var553 Int)
(declare-const var2005!1 String)
(define-const var398 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var398 40)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var398!1 String)
(declare-const var3436 Int)
(define-const var3643 var3762 (text/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3072 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3335 String (toString/-222306083 var3072)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3762_add/328494887 var3643 (cast-from-String-to-var1611 var3335))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var3643!1 var3762)
(declare-const var3335!1 String)
(assert true)
(define-const var1121 var2121 (createTextifier/-1341636553 var2461!1)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var815 var3762 (text/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var852 var3762 (getText/-142638630 (cast-from-var2121-to-var2966 var1121))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var3762_add/328494887 var815 (cast-from-var3762-to-var1611 var852))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var815!1 var3762)
(declare-const var852!1 var3762)
(define-const var942 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var942 0)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var942!1 String)
(declare-const var1416!1 Int)
(define-const var929 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var929 ") : ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ") 
(declare-const var929!1 String)
(assert (str.prefixof var929 var929!1))
(assert true)
;(assert (appendTypeReference/309807963 var2461!1 var2787)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0) 

(declare-const var2461!2 var2121)
(declare-const var2787!1 Int)
(define-const var2668 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3281 String (append/1560614132 var2668 ", ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2668!1 String)
(assert (str.prefixof var2668 var2668!1))
(assert true)
;(assert (append/-143899486 var3281 (cast-from-var519-to-var1611 var653))) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16) 

(declare-const var3281!1 String)
(declare-const var653!1 var519)
(define-const var2656 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!2))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r22 = " // invisible\n" 
(assert (= (ite var247 1 0) 0)) ; Cond: z0 == 0 
(define-const var3061 String " // invisible\n") ; Statement: $r22 = " // invisible\n" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var2656 var3061)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22) 
(declare-const var2656!1 String)
(assert (str.prefixof var2656 var2656!1))
(define-const var523 var3762 (text/-10557480 (cast-from-var2121-to-var2966 var2461!2))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2951 String (buf/-10557480 (cast-from-var2121-to-var2966 var2461!2))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2508 String (toString/-222306083 var2951)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3762_add/328494887 var523 (cast-from-String-to-var1611 var2508))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var523!1 var3762)
(declare-const var2508!1 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2121-to-var2966=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3762_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1611=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3762-to-var1611=([java.util.List], java.lang.Object), appendTypeReference/309807963=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var519-to-var1611=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object)}
; {var2121=jdk.internal.org.objectweb.asm.util.Textifier, var2461=r0, var2787=i0, var519=jdk.internal.org.objectweb.asm.TypePath, var653=r16, var2005=r5, var2953=null_type, var247=z0, var2966=jdk.internal.org.objectweb.asm.util.Printer, var2885=$r1, var1416=0, var2862=$r3, var1135=$r2, var2870=$r4, var2569=64, var553=1, var398=$r6, var3436=40, var3762=java.util.List, var3643=$r8, var3072=$r7, var3335=$r9, var1611=java.lang.Object, var1121=r10, var815=$r11, var852=$r12, var942=$r13, var929=$r14, var2668=$r15, var3281=$r17, var2656=$r18, var3061=$r22, var523=$r20, var2951=$r19, var2508=$r21}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2121, r0=var2461, i0=var2787, jdk.internal.org.objectweb.asm.TypePath=var519, r16=var653, r5=var2005, null_type=var2953, z0=var247, jdk.internal.org.objectweb.asm.util.Printer=var2966, $r1=var2885, 0=var1416, $r3=var2862, $r2=var1135, $r4=var2870, 64=var2569, 1=var553, $r6=var398, 40=var3436, java.util.List=var3762, $r8=var3643, $r7=var3072, $r9=var3335, java.lang.Object=var1611, r10=var1121, $r11=var815, $r12=var852, $r13=var942, $r14=var929, $r15=var2668, $r17=var3281, $r18=var2656, $r22=var3061, $r20=var523, $r19=var2951, $r21=var2508}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r16 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r5 := @parameter2: java.lang.String;	z0 := @parameter3: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: void setLength(int)>(0);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") : ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendTypeReference(int)>(i0);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r16);	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r22 = " // invisible\n";	$r22 = " // invisible\n";	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r22);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21);	return r10
;block_num 3