(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort var298 0)
(declare-sort var1278 0)
(declare-sort var1951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var298) String)
(declare-fun cast-from-var1902-to-var298 (var1902) var298)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var1902) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var298) var1278)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1278_add/328494887 (var1278 var1951) Bool)
(declare-fun cast-from-String-to-var1951 (String) var1951)
(declare-const null-var1902 var1902)
(declare-const null-Int Int)
(declare-const var1902-OPCODES (Array Int String))
(declare-const var1902-TYPES (Array Int String))
(declare-const var1612 var1902) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1612 null-var1902)))
(declare-const var1534 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1534 null-Int)))
(declare-const var2759 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2759 null-Int)))
(define-const var3291 String (buf/-10557480 (cast-from-var1902-to-var298 var1612))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3291 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3291!1 String)
(declare-const var3848 Int)
(define-const var2281 String (buf/-10557480 (cast-from-var1902-to-var298 var1612))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1605 String (tab2/-788090934 var1612)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var274 String (append/1560614132 var2281 var1605)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2281!1 String)
(assert (str.prefixof var2281 var2281!1))
(define-const var858 (Array Int String) var1902-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var3976 String (select var858 var1534)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var3538 String (append/1560614132 var274 var3976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var274!1 String)
(assert (str.prefixof var274 var274!1))
(assert true)
(define-const var3457 String (append/1183289509 var3538 32)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
 ; Statement: if i0 != 188 goto $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (not (= var1534 188)))) ; Negate: Cond: i0 != 188  
(define-const var2695 (Array Int String) var1902-TYPES) ; Statement: $r13 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] TYPES> 
(define-const var3487 String (select var2695 var2759)) ; Statement: $r14 = $r13[i1] 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3214 String (append/1560614132 var3457 var3487)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var3457!1 String)
(assert (str.prefixof var3457 var3457!1))
(assert true)
;(assert (append/1183289509 var3214 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3214!1 String)
(declare-const var3170 Int)
(define-const var944 var1278 (text/-10557480 (cast-from-var1902-to-var298 var1612))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3382 String (buf/-10557480 (cast-from-var1902-to-var298 var1612))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2990 String (toString/-222306083 var3382)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1278_add/328494887 var944 (cast-from-String-to-var1951 var2990))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var944!1 var1278)
(declare-const var2990!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1902-to-var298=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1278_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1951=([java.lang.String], java.lang.Object)}
; {var1902=jdk.internal.org.objectweb.asm.util.Textifier, var1612=r0, var1534=i0, var2759=i1, var298=jdk.internal.org.objectweb.asm.util.Printer, var3291=$r1, var3848=0, var2281=$r3, var1605=$r2, var274=$r6, var858=$r4, var3976=$r5, var3538=$r7, var3457=$r8, var2695=$r13, var3487=$r14, var3214=$r9, var3170=10, var1278=java.util.List, var944=$r11, var3382=$r10, var2990=$r12, var1951=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1902, r0=var1612, i0=var1534, i1=var2759, jdk.internal.org.objectweb.asm.util.Printer=var298, $r1=var3291, 0=var3848, $r3=var2281, $r2=var1605, $r6=var274, $r4=var858, $r5=var3976, $r7=var3538, $r8=var3457, $r13=var2695, $r14=var3487, $r9=var3214, 10=var3170, java.util.List=var1278, $r11=var944, $r10=var3382, $r12=var2990, java.lang.Object=var1951}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	if i0 != 188 goto $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r13 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] TYPES>;	$r14 = $r13[i1];	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14)];	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 3