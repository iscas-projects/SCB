(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var908 0)
(declare-sort var3560 0)
(declare-sort var1093 0)
(declare-sort var127 0)
(declare-sort var3401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1093) String)
(declare-fun cast-from-var908-to-var1093 (var908) var1093)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var908) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var908 Int String) void)
(declare-fun text/-10557480 (var1093) var127)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var127_add/328494887 (var127 var3401) Bool)
(declare-fun cast-from-String-to-var3401 (String) var3401)
(declare-const null-var908 var908)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var908-OPCODES (Array Int String))
(declare-const var2246 var908) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2246 null-var908)))
(declare-const var1219 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1219 null-Int)))
(declare-const var2558 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2558 null-String)))
(declare-const var2376 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var2376 null-String)))
(declare-const var3701 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var3701 null-String)))
(define-const var2322 String (buf/-10557480 (cast-from-var908-to-var1093 var2246))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2322 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2322!1 String)
(declare-const var3069 Int)
(define-const var3640 String (buf/-10557480 (cast-from-var908-to-var1093 var2246))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var932 String (tab2/-788090934 var2246)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3308 String (append/1560614132 var3640 var932)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3640!1 String)
(assert (str.prefixof var3640 var3640!1))
(define-const var1606 (Array Int String) var908-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var3717 String (select var1606 var1219)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var3738 String (append/1560614132 var3308 var3717)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3308!1 String)
(assert (str.prefixof var3308 var3308!1))
(assert true)
;(assert (append/1183289509 var3738 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3738!1 String)
(declare-const var1981 Int)
(assert true)
;(assert (appendDescriptor/199836990 var2246 0 var2558)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8) 

(declare-const var2246!1 var908)
(declare-const var3069!1 Int)
(declare-const var2558!1 String)
(define-const var3663 String (buf/-10557480 (cast-from-var908-to-var1093 var2246!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2924 String (append/1183289509 var3663 46)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 
(assert true)
(define-const var2437 String (append/1560614132 var2924 var2376)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10) 
(declare-const var2924!1 String)
(assert (str.prefixof var2924 var2924!1))
(assert true)
;(assert (append/1560614132 var2437 " : ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : ") 
(declare-const var2437!1 String)
(assert (str.prefixof var2437 var2437!1))
(assert true)
;(assert (appendDescriptor/199836990 var2246!1 1 var3701)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r13) 

(declare-const var2246!2 var908)
(declare-const var3453 Int)
(declare-const var3701!1 String)
(define-const var741 String (buf/-10557480 (cast-from-var908-to-var1093 var2246!2))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var741 10)) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var741!1 String)
(declare-const var2918 Int)
(define-const var590 var127 (text/-10557480 (cast-from-var908-to-var1093 var2246!2))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var289 String (buf/-10557480 (cast-from-var908-to-var1093 var2246!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var531 String (toString/-222306083 var289)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var127_add/328494887 var590 (cast-from-String-to-var3401 var531))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var590!1 var127)
(declare-const var531!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var908-to-var1093=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var127_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3401=([java.lang.String], java.lang.Object)}
; {var908=jdk.internal.org.objectweb.asm.util.Textifier, var2246=r0, var1219=i0, var2558=r8, var3560=null_type, var2376=r10, var3701=r13, var1093=jdk.internal.org.objectweb.asm.util.Printer, var2322=$r1, var3069=0, var3640=$r3, var932=$r2, var3308=$r6, var1606=$r4, var3717=$r5, var3738=$r7, var1981=32, var3663=$r9, var2924=$r11, var2437=$r12, var3453=1, var741=$r14, var2918=10, var127=java.util.List, var590=$r16, var289=$r15, var531=$r17, var3401=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var908, r0=var2246, i0=var1219, r8=var2558, null_type=var3560, r10=var2376, r13=var3701, jdk.internal.org.objectweb.asm.util.Printer=var1093, $r1=var2322, 0=var3069, $r3=var3640, $r2=var932, $r6=var3308, $r4=var1606, $r5=var3717, $r7=var3738, 32=var1981, $r9=var3663, $r11=var2924, $r12=var2437, 1=var3453, $r14=var741, 10=var2918, java.util.List=var127, $r16=var590, $r15=var289, $r17=var531, java.lang.Object=var3401}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r8 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10);	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17);	return
;block_num 1