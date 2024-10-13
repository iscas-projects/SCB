(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var1240 0)
(declare-sort var1667 0)
(declare-sort var2146 0)
(declare-sort var393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1667) String)
(declare-fun cast-from-var3570-to-var1667 (var3570) var1667)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3570) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var3570 Int String) void)
(declare-fun text/-10557480 (var1667) var2146)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2146_add/328494887 (var2146 var393) Bool)
(declare-fun cast-from-String-to-var393 (String) var393)
(declare-const null-var3570 var3570)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3570-OPCODES (Array Int String))
(declare-const var3524 var3570) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3524 null-var3570)))
(declare-const var1106 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1106 null-Int)))
(declare-const var1620 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1620 null-String)))
(declare-const var757 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var757 null-String)))
(declare-const var1950 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var1950 null-String)))
(declare-const var2359 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2359 null-Bool)))
(define-const var2819 String (buf/-10557480 (cast-from-var3570-to-var1667 var3524))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2819 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2819!1 String)
(declare-const var2733 Int)
(define-const var1122 String (buf/-10557480 (cast-from-var3570-to-var1667 var3524))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var841 String (tab2/-788090934 var3524)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2565 String (append/1560614132 var1122 var841)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1122!1 String)
(assert (str.prefixof var1122 var1122!1))
(define-const var2034 (Array Int String) var3570-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var1938 String (select var2034 var1106)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var576 String (append/1560614132 var2565 var1938)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2565!1 String)
(assert (str.prefixof var2565 var2565!1))
(assert true)
;(assert (append/1183289509 var576 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var576!1 String)
(declare-const var2542 Int)
(assert true)
;(assert (appendDescriptor/199836990 var3524 0 var1620)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8) 

(declare-const var3524!1 var3570)
(declare-const var2733!1 Int)
(declare-const var1620!1 String)
(define-const var3551 String (buf/-10557480 (cast-from-var3570-to-var1667 var3524!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3418 String (append/1183289509 var3551 46)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 
(assert true)
(define-const var685 String (append/1560614132 var3418 var757)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10) 
(declare-const var3418!1 String)
(assert (str.prefixof var3418 var3418!1))
(assert true)
;(assert (append/1183289509 var685 32)) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var685!1 String)
(declare-const var2542!1 Int)
(assert true)
;(assert (appendDescriptor/199836990 var3524!1 3 var1950)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r13) 

(declare-const var3524!2 var3570)
(declare-const var2782 Int)
(declare-const var1950!1 String)
(define-const var3718 String (buf/-10557480 (cast-from-var3570-to-var1667 var3524!2))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3718 10)) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3718!1 String)
(declare-const var1242 Int)
(define-const var2194 var2146 (text/-10557480 (cast-from-var3570-to-var1667 var3524!2))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3572 String (buf/-10557480 (cast-from-var3570-to-var1667 var3524!2))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2690 String (toString/-222306083 var3572)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2146_add/328494887 var2194 (cast-from-String-to-var393 var2690))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var2194!1 var2146)
(declare-const var2690!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3570-to-var1667=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2146_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var393=([java.lang.String], java.lang.Object)}
; {var3570=jdk.internal.org.objectweb.asm.util.Textifier, var3524=r0, var1106=i0, var1620=r8, var1240=null_type, var757=r10, var1950=r13, var2359=z0, var1667=jdk.internal.org.objectweb.asm.util.Printer, var2819=$r1, var2733=0, var1122=$r3, var841=$r2, var2565=$r6, var2034=$r4, var1938=$r5, var576=$r7, var2542=32, var3551=$r9, var3418=$r11, var685=$r12, var2782=3, var3718=$r14, var1242=10, var2146=java.util.List, var2194=$r16, var3572=$r15, var2690=$r17, var393=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3570, r0=var3524, i0=var1106, r8=var1620, null_type=var1240, r10=var757, r13=var1950, z0=var2359, jdk.internal.org.objectweb.asm.util.Printer=var1667, $r1=var2819, 0=var2733, $r3=var1122, $r2=var841, $r6=var2565, $r4=var2034, $r5=var1938, $r7=var576, 32=var2542, $r9=var3551, $r11=var3418, $r12=var685, 3=var2782, $r14=var3718, 10=var1242, java.util.List=var2146, $r16=var2194, $r15=var3572, $r17=var2690, java.lang.Object=var393}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r8 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10);	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17);	return
;block_num 1