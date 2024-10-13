(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var2417 0)
(declare-sort var1516 0)
(declare-sort var2080 0)
(declare-sort var3005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1516) String)
(declare-fun cast-from-var3185-to-var1516 (var3185) var1516)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var3185) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var3185 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var1516) var2080)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2080_add/328494887 (var2080 var3005) Bool)
(declare-fun cast-from-String-to-var3005 (String) var3005)
(declare-const null-var3185 var3185)
(declare-const null-String String)
(declare-const var3409 var3185) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3409 null-var3185)))
(declare-const var1271 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1271 null-String)))
(declare-const var440 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var440 null-String)))
(declare-const var1823 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var1823 null-String)))
(define-const var3796 String (buf/-10557480 (cast-from-var3185-to-var1516 var3409))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3796 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3796!1 String)
(declare-const var1 Int)
(define-const var3337 String (buf/-10557480 (cast-from-var3185-to-var1516 var3409))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2192 String (tab/-788090934 var3409)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var121 String (append/1560614132 var3337 var2192)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3337!1 String)
(assert (str.prefixof var3337 var3337!1))
(assert true)
;(assert (append/1560614132 var121 "OUTERCLASS ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("OUTERCLASS ") 
(declare-const var121!1 String)
(assert (str.prefixof var121 var121!1))
(assert true)
;(assert (appendDescriptor/199836990 var3409 0 var1271)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r5) 

(declare-const var3409!1 var3185)
(declare-const var1!1 Int)
(declare-const var1271!1 String)
(define-const var269 String (buf/-10557480 (cast-from-var3185-to-var1516 var3409!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var269 32)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var269!1 String)
(declare-const var1513 Int)
 ; Statement: if r7 == null goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8) 
(assert (= var440 null-String)) ; Cond: r7 == null 
(assert true)
;(assert (appendDescriptor/199836990 var3409!1 3 var1823)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8) 

(declare-const var3409!2 var3185)
(declare-const var727 Int)
(declare-const var1823!1 String)
(define-const var3336 String (buf/-10557480 (cast-from-var3185-to-var1516 var3409!2))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3336 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3336!1 String)
(declare-const var3825 Int)
(define-const var3615 var2080 (text/-10557480 (cast-from-var3185-to-var1516 var3409!2))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var967 String (buf/-10557480 (cast-from-var3185-to-var1516 var3409!2))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3848 String (toString/-222306083 var967)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2080_add/328494887 var3615 (cast-from-String-to-var3005 var3848))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3615!1 var2080)
(declare-const var3848!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3185-to-var1516=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2080_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3005=([java.lang.String], java.lang.Object)}
; {var3185=jdk.internal.org.objectweb.asm.util.Textifier, var3409=r0, var1271=r5, var2417=null_type, var440=r7, var1823=r8, var1516=jdk.internal.org.objectweb.asm.util.Printer, var3796=$r1, var1=0, var3337=$r3, var2192=$r2, var121=$r4, var269=$r6, var1513=32, var727=3, var3336=$r9, var3825=10, var2080=java.util.List, var3615=$r11, var967=$r10, var3848=$r12, var3005=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3185, r0=var3409, r5=var1271, null_type=var2417, r7=var440, r8=var1823, jdk.internal.org.objectweb.asm.util.Printer=var1516, $r1=var3796, 0=var1, $r3=var3337, $r2=var2192, $r4=var121, $r6=var269, 32=var1513, 3=var727, $r9=var3336, 10=var3825, java.util.List=var2080, $r11=var3615, $r10=var967, $r12=var3848, java.lang.Object=var3005}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("OUTERCLASS ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	if r7 == null goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 2