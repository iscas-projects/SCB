(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3528 0)
(declare-sort var1783 0)
(declare-sort var3362 0)
(declare-sort var512 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1783) String)
(declare-fun cast-from-var3528-to-var1783 (var3528) var1783)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var3528) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var1783) var3362)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3362_add/328494887 (var3362 var512) Bool)
(declare-fun cast-from-String-to-var512 (String) var512)
(declare-const null-var3528 var3528)
(declare-const null-Int Int)
(declare-const var3528-OPCODES (Array Int String))
(declare-const var1570 var3528) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1570 null-var3528)))
(declare-const var897 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var897 null-Int)))
(declare-const var2721 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2721 null-Int)))
(define-const var2804 String (buf/-10557480 (cast-from-var3528-to-var1783 var1570))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2804 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2804!1 String)
(declare-const var1161 Int)
(define-const var1480 String (buf/-10557480 (cast-from-var3528-to-var1783 var1570))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1749 String (name/1045876480 var1570)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1958 String (append/1560614132 var1480 var1749)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1480!1 String)
(assert (str.prefixof var1480 var1480!1))
(assert true)
(define-const var2892 String (append/1560614132 var1958 ".visitVarInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitVarInsn(") 
(declare-const var1958!1 String)
(assert (str.prefixof var1958 var1958!1))
(define-const var3848 (Array Int String) var3528-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var3693 String (select var3848 var897)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var2018 String (append/1560614132 var2892 var3693)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var2892!1 String)
(assert (str.prefixof var2892 var2892!1))
(assert true)
(define-const var2158 String (append/1560614132 var2018 ", ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2018!1 String)
(assert (str.prefixof var2018 var2018!1))
(assert true)
(define-const var2553 String (append/1845021834 var2158 var2721)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1560614132 var2553 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2553!1 String)
(assert (str.prefixof var2553 var2553!1))
(define-const var97 var3362 (text/-10557480 (cast-from-var3528-to-var1783 var1570))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3687 String (buf/-10557480 (cast-from-var3528-to-var1783 var1570))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3601 String (toString/-222306083 var3687)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3362_add/328494887 var97 (cast-from-String-to-var512 var3601))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var97!1 var3362)
(declare-const var3601!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3528-to-var1783=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3362_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var512=([java.lang.String], java.lang.Object)}
; {var3528=jdk.internal.org.objectweb.asm.util.ASMifier, var1570=r0, var897=i0, var2721=i1, var1783=jdk.internal.org.objectweb.asm.util.Printer, var2804=$r1, var1161=0, var1480=$r3, var1749=$r2, var1958=$r4, var2892=$r7, var3848=$r5, var3693=$r6, var2018=$r8, var2158=$r9, var2553=$r10, var3362=java.util.List, var97=$r12, var3687=$r11, var3601=$r13, var512=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3528, r0=var1570, i0=var897, i1=var2721, jdk.internal.org.objectweb.asm.util.Printer=var1783, $r1=var2804, 0=var1161, $r3=var1480, $r2=var1749, $r4=var1958, $r7=var2892, $r5=var3848, $r6=var3693, $r8=var2018, $r9=var2158, $r10=var2553, java.util.List=var3362, $r12=var97, $r11=var3687, $r13=var3601, java.lang.Object=var512}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitVarInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 1