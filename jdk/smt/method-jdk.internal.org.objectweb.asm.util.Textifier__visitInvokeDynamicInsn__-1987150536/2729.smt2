(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3385 0)
(declare-sort var2030 0)
(declare-sort var2557 0)
(declare-sort var3229 0)
(declare-sort var2352 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2352) String)
(declare-fun cast-from-var3385-to-var2352 (var3385) var2352)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3385) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var3385 Int String) void)
(declare-fun tab3/-788090934 (var3385) String)
(declare-fun appendHandle/-150524967 (var3385 var2557) void)
(declare-fun getLength-Arr-var3229-1 ((Array Int var3229)) Int)
(declare-fun text/-10557480 (var2352) var1253)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1253_add/328494887 (var1253 var3229) Bool)
(declare-fun cast-from-String-to-var3229 (String) var3229)
(declare-const null-var3385 var3385)
(declare-const null-String String)
(declare-const null-var2557 var2557)
(declare-const null-__Array__Int__var3229__ (Array Int var3229))
(declare-const var3215 var3385) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3215 null-var3385)))
(declare-const var736 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var736 null-String)))
(declare-const var1895 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1895 null-String)))
(declare-const var1040 var2557) ; Statement: r13 := @parameter2: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var1040 null-var2557)))
(declare-const var2031 (Array Int var3229)) ; Statement: r18 := @parameter3: java.lang.Object[] 
(assert (not (= var2031 null-__Array__Int__var3229__)))
(define-const var2984 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2984 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2984!1 String)
(declare-const var1769 Int)
(define-const var3160 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1573 String (tab2/-788090934 var3215)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var1109 String (append/1560614132 var3160 var1573)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3160!1 String)
(assert (str.prefixof var3160 var3160!1))
(assert true)
(define-const var290 String (append/1560614132 var1109 "INVOKEDYNAMIC")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("INVOKEDYNAMIC") 
(declare-const var1109!1 String)
(assert (str.prefixof var1109 var1109!1))
(assert true)
;(assert (append/1183289509 var290 32)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var290!1 String)
(declare-const var3799 Int)
(define-const var1474 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1474 var736)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r6) 
(declare-const var1474!1 String)
(assert (str.prefixof var1474 var1474!1))
(assert true)
;(assert (appendDescriptor/199836990 var3215 3 var1895)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8) 

(declare-const var3215!1 var3385)
(declare-const var52 Int)
(declare-const var1895!1 String)
(define-const var1081 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1081 " [")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" [") 
(declare-const var1081!1 String)
(assert (str.prefixof var1081 var1081!1))
(define-const var3387 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3387 10)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3387!1 String)
(declare-const var2870 Int)
(define-const var3174 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!1))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var400 String (tab3/-788090934 var3215!1)) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3> 
(assert true)
;(assert (append/1560614132 var3174 var400)) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var3174!1 String)
(assert (str.prefixof var3174 var3174!1))
(assert true)
;(assert (appendHandle/-150524967 var3215!1 var1040)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendHandle(jdk.internal.org.objectweb.asm.Handle)>(r13) 

(declare-const var3215!2 var3385)
(declare-const var1040!1 var2557)
(define-const var3346 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3346 10)) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3346!1 String)
(declare-const var2870!1 Int)
(define-const var501 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1661 String (tab3/-788090934 var3215!2)) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3> 
(assert true)
(define-const var3721 String (append/1560614132 var501 var1661)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15) 
(declare-const var501!1 String)
(assert (str.prefixof var501 var501!1))
(assert true)
;(assert (append/1560614132 var3721 "// arguments:")) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// arguments:") 
(declare-const var3721!1 String)
(assert (str.prefixof var3721 var3721!1))
(define-const var3443 Int (getLength-Arr-var3229-1 var2031)) ; Statement: $i0 = lengthof r18 
 ; Statement: if $i0 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (not (not (= var3443 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2683 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2683 " none")) ; Statement: virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" none") 
(declare-const var2683!1 String)
(assert (str.prefixof var2683 var2683!1))
 ; Statement: goto [?= $r22 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var1686 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r22 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var1686 10)) ; Statement: virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var1686!1 String)
(declare-const var2870!2 Int)
(define-const var1012 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r24 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1425 String (tab2/-788090934 var3215!2)) ; Statement: $r23 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var271 String (append/1560614132 var1012 var1425)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r23) 
(declare-const var1012!1 String)
(assert (str.prefixof var1012 var1012!1))
(assert true)
;(assert (append/1560614132 var271 "]\n")) ; Statement: virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]\n") 
(declare-const var271!1 String)
(assert (str.prefixof var271 var271!1))
(define-const var1532 var1253 (text/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r27 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var949 String (buf/-10557480 (cast-from-var3385-to-var2352 var3215!2))) ; Statement: $r26 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2934 String (toString/-222306083 var949)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1253_add/328494887 var1532 (cast-from-String-to-var3229 var2934))) ; Statement: interfaceinvoke $r27.<java.util.List: boolean add(java.lang.Object)>($r28) 

(declare-const var1532!1 var1253)
(declare-const var2934!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3385-to-var2352=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), tab3/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), appendHandle/-150524967=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Handle], void), getLength-Arr-var3229-1=([java.lang.Object[]], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1253_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3229=([java.lang.String], java.lang.Object)}
; {var3385=jdk.internal.org.objectweb.asm.util.Textifier, var3215=r0, var736=r6, var2030=null_type, var1895=r8, var2557=jdk.internal.org.objectweb.asm.Handle, var1040=r13, var3229=java.lang.Object, var2031=r18, var2352=jdk.internal.org.objectweb.asm.util.Printer, var2984=$r1, var1769=0, var3160=$r3, var1573=$r2, var1109=$r4, var290=$r5, var3799=32, var1474=$r7, var52=3, var1081=$r9, var3387=$r10, var2870=10, var3174=$r12, var400=$r11, var3346=$r14, var501=$r16, var1661=$r15, var3721=$r17, var3443=$i0, var2683=$r41, var1686=$r22, var1012=$r24, var1425=$r23, var271=$r25, var1253=java.util.List, var1532=$r27, var949=$r26, var2934=$r28}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3385, r0=var3215, r6=var736, null_type=var2030, r8=var1895, jdk.internal.org.objectweb.asm.Handle=var2557, r13=var1040, java.lang.Object=var3229, r18=var2031, jdk.internal.org.objectweb.asm.util.Printer=var2352, $r1=var2984, 0=var1769, $r3=var3160, $r2=var1573, $r4=var1109, $r5=var290, 32=var3799, $r7=var1474, 3=var52, $r9=var1081, $r10=var3387, 10=var2870, $r12=var3174, $r11=var400, $r14=var3346, $r16=var501, $r15=var1661, $r17=var3721, $i0=var3443, $r41=var2683, $r22=var1686, $r24=var1012, $r23=var1425, $r25=var271, java.util.List=var1253, $r27=var1532, $r26=var949, $r28=var2934}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r6 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r13 := @parameter2: jdk.internal.org.objectweb.asm.Handle;	r18 := @parameter3: java.lang.Object[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("INVOKEDYNAMIC");	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r6);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" [");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendHandle(jdk.internal.org.objectweb.asm.Handle)>(r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3>;	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15);	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// arguments:");	$i0 = lengthof r18;	if $i0 != 0 goto $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" none");	goto [?= $r22 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>];	$r22 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r24 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r23 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r23);	virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]\n");	$r27 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r26 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r28 = virtualinvoke $r26.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r27.<java.util.List: boolean add(java.lang.Object)>($r28);	return
;block_num 3