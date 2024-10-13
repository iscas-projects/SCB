(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort var973 0)
(declare-sort var461 0)
(declare-sort var1282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var973) String)
(declare-fun cast-from-var2248-to-var973 (var2248) var973)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2248) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var973) var461)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var461_add/328494887 (var461 var1282) Bool)
(declare-fun cast-from-String-to-var1282 (String) var1282)
(declare-const null-var2248 var2248)
(declare-const null-Int Int)
(declare-const var2248-OPCODES (Array Int String))
(declare-const var2248-TYPES (Array Int String))
(declare-const var2509 var2248) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2509 null-var2248)))
(declare-const var728 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var728 null-Int)))
(declare-const var1730 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1730 null-Int)))
(define-const var2077 String (buf/-10557480 (cast-from-var2248-to-var973 var2509))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2077 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2077!1 String)
(declare-const var2220 Int)
(define-const var765 String (buf/-10557480 (cast-from-var2248-to-var973 var2509))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3430 String (name/1045876480 var2509)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1585 String (append/1560614132 var765 var3430)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var765!1 String)
(assert (str.prefixof var765 var765!1))
(assert true)
(define-const var1797 String (append/1560614132 var1585 ".visitIntInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIntInsn(") 
(declare-const var1585!1 String)
(assert (str.prefixof var1585 var1585!1))
(define-const var1148 (Array Int String) var2248-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var2178 String (select var1148 var728)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var1469 String (append/1560614132 var1797 var2178)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1797!1 String)
(assert (str.prefixof var1797 var1797!1))
(assert true)
(define-const var132 String (append/1560614132 var1469 ", ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1469!1 String)
(assert (str.prefixof var1469 var1469!1))
 ; Statement: if i0 != 188 goto $r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (not (= var728 188)))) ; Negate: Cond: i0 != 188  
(define-const var2701 (Array Int String) var2248-TYPES) ; Statement: $r14 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] TYPES> 
(define-const var3712 String (select var2701 var1730)) ; Statement: $r15 = $r14[i1] 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
(define-const var5 String (append/1560614132 var132 var3712)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15) 
(declare-const var132!1 String)
(assert (str.prefixof var132 var132!1))
(assert true)
;(assert (append/1560614132 var5 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var5!1 String)
(assert (str.prefixof var5 var5!1))
(define-const var3797 var461 (text/-10557480 (cast-from-var2248-to-var973 var2509))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1324 String (buf/-10557480 (cast-from-var2248-to-var973 var2509))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3806 String (toString/-222306083 var1324)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var461_add/328494887 var3797 (cast-from-String-to-var1282 var3806))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var3797!1 var461)
(declare-const var3806!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2248-to-var973=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var461_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1282=([java.lang.String], java.lang.Object)}
; {var2248=jdk.internal.org.objectweb.asm.util.ASMifier, var2509=r0, var728=i0, var1730=i1, var973=jdk.internal.org.objectweb.asm.util.Printer, var2077=$r1, var2220=0, var765=$r3, var3430=$r2, var1585=$r4, var1797=$r7, var1148=$r5, var2178=$r6, var1469=$r8, var132=$r9, var2701=$r14, var3712=$r15, var5=$r10, var461=java.util.List, var3797=$r12, var1324=$r11, var3806=$r13, var1282=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2248, r0=var2509, i0=var728, i1=var1730, jdk.internal.org.objectweb.asm.util.Printer=var973, $r1=var2077, 0=var2220, $r3=var765, $r2=var3430, $r4=var1585, $r7=var1797, $r5=var1148, $r6=var2178, $r8=var1469, $r9=var132, $r14=var2701, $r15=var3712, $r10=var5, java.util.List=var461, $r12=var3797, $r11=var1324, $r13=var3806, java.lang.Object=var1282}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIntInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if i0 != 188 goto $r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r14 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] TYPES>;	$r15 = $r14[i1];	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15)];	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15);	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 3