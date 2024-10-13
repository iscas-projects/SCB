(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var1421 0)
(declare-sort var3773 0)
(declare-sort var2376 0)
(declare-sort var3697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3773) String)
(declare-fun cast-from-var3671-to-var3773 (var3671) var3773)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3671) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var3671 Int String) void)
(declare-fun text/-10557480 (var3773) var2376)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2376_add/328494887 (var2376 var3697) Bool)
(declare-fun cast-from-String-to-var3697 (String) var3697)
(declare-const null-var3671 var3671)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3671-OPCODES (Array Int String))
(declare-const var2078 var3671) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2078 null-var3671)))
(declare-const var2924 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2924 null-Int)))
(declare-const var3317 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var3317 null-String)))
(define-const var1474 String (buf/-10557480 (cast-from-var3671-to-var3773 var2078))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1474 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1474!1 String)
(declare-const var2049 Int)
(define-const var3562 String (buf/-10557480 (cast-from-var3671-to-var3773 var2078))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3315 String (tab2/-788090934 var2078)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3055 String (append/1560614132 var3562 var3315)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3562!1 String)
(assert (str.prefixof var3562 var3562!1))
(define-const var125 (Array Int String) var3671-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var3982 String (select var125 var2924)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var664 String (append/1560614132 var3055 var3982)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3055!1 String)
(assert (str.prefixof var3055 var3055!1))
(assert true)
;(assert (append/1183289509 var664 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var664!1 String)
(declare-const var2981 Int)
(assert true)
;(assert (appendDescriptor/199836990 var2078 0 var3317)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8) 

(declare-const var2078!1 var3671)
(declare-const var2049!1 Int)
(declare-const var3317!1 String)
(define-const var2877 String (buf/-10557480 (cast-from-var3671-to-var3773 var2078!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2877 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2877!1 String)
(declare-const var1940 Int)
(define-const var1812 var2376 (text/-10557480 (cast-from-var3671-to-var3773 var2078!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var31 String (buf/-10557480 (cast-from-var3671-to-var3773 var2078!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var215 String (toString/-222306083 var31)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2376_add/328494887 var1812 (cast-from-String-to-var3697 var215))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var1812!1 var2376)
(declare-const var215!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3671-to-var3773=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2376_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3697=([java.lang.String], java.lang.Object)}
; {var3671=jdk.internal.org.objectweb.asm.util.Textifier, var2078=r0, var2924=i0, var3317=r8, var1421=null_type, var3773=jdk.internal.org.objectweb.asm.util.Printer, var1474=$r1, var2049=0, var3562=$r3, var3315=$r2, var3055=$r6, var125=$r4, var3982=$r5, var664=$r7, var2981=32, var2877=$r9, var1940=10, var2376=java.util.List, var1812=$r11, var31=$r10, var215=$r12, var3697=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3671, r0=var2078, i0=var2924, r8=var3317, null_type=var1421, jdk.internal.org.objectweb.asm.util.Printer=var3773, $r1=var1474, 0=var2049, $r3=var3562, $r2=var3315, $r6=var3055, $r4=var125, $r5=var3982, $r7=var664, 32=var2981, $r9=var2877, 10=var1940, java.util.List=var2376, $r11=var1812, $r10=var31, $r12=var215, java.lang.Object=var3697}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r8 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1