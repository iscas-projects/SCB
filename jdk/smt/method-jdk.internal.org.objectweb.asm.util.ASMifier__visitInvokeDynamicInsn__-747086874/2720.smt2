(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1657 0)
(declare-sort var2702 0)
(declare-sort var3098 0)
(declare-sort var2586 0)
(declare-sort var42 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var42) String)
(declare-fun cast-from-var1657-to-var42 (var1657) var42)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var1657) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var1657 var2586) void)
(declare-fun cast-from-String-to-var2586 (String) var2586)
(declare-fun cast-from-var3098-to-var2586 (var3098) var2586)
(declare-fun getLength-Arr-var2586-1 ((Array Int var2586)) Int)
(declare-fun text/-10557480 (var42) var2719)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2719_add/328494887 (var2719 var2586) Bool)
(declare-const null-var1657 var1657)
(declare-const null-String String)
(declare-const null-var3098 var3098)
(declare-const null-__Array__Int__var2586__ (Array Int var2586))
(declare-const var3626 var1657) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3626 null-var1657)))
(declare-const var3999 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3999 null-String)))
(declare-const var2615 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2615 null-String)))
(declare-const var2315 var3098) ; Statement: r9 := @parameter2: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var2315 null-var3098)))
(declare-const var1256 (Array Int var2586)) ; Statement: r11 := @parameter3: java.lang.Object[] 
(assert (not (= var1256 null-__Array__Int__var2586__)))
(define-const var3842 String (buf/-10557480 (cast-from-var1657-to-var42 var3626))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3842 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3842!1 String)
(declare-const var2838 Int)
(define-const var2293 String (buf/-10557480 (cast-from-var1657-to-var42 var3626))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1790 String (name/1045876480 var3626)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1691 String (append/1560614132 var2293 var1790)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2293!1 String)
(assert (str.prefixof var2293 var2293!1))
(assert true)
;(assert (append/1560614132 var1691 ".visitInvokeDynamicInsn(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitInvokeDynamicInsn(") 
(declare-const var1691!1 String)
(assert (str.prefixof var1691 var1691!1))
(assert true)
;(assert (appendConstant/2119113448 var3626 (cast-from-String-to-var2586 var3999))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var3626!1 var1657)
(declare-const var3999!1 String)
(define-const var71 String (buf/-10557480 (cast-from-var1657-to-var42 var3626!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var71 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var71!1 String)
(assert (str.prefixof var71 var71!1))
(assert true)
;(assert (appendConstant/2119113448 var3626!1 (cast-from-String-to-var2586 var2615))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var3626!2 var1657)
(declare-const var2615!1 String)
(define-const var1115 String (buf/-10557480 (cast-from-var1657-to-var42 var3626!2))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1115 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1115!1 String)
(assert (str.prefixof var1115 var1115!1))
(assert true)
;(assert (appendConstant/2119113448 var3626!2 (cast-from-var3098-to-var2586 var2315))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var3626!3 var1657)
(declare-const var2315!1 var3098)
(define-const var2522 String (buf/-10557480 (cast-from-var1657-to-var42 var3626!3))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2522 ", new Object[]{")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new Object[]{") 
(declare-const var2522!1 String)
(assert (str.prefixof var2522 var2522!1))
(define-const var3194 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var242 Int (getLength-Arr-var2586-1 var1256)) ; Statement: $i0 = lengthof r11 
 ; Statement: if i3 >= $i0 goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var3194 var242)) ; Cond: i3 >= $i0 
(define-const var3726 String (buf/-10557480 (cast-from-var1657-to-var42 var3626!3))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3726 "});\n")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("});\n") 
(declare-const var3726!1 String)
(assert (str.prefixof var3726 var3726!1))
(define-const var3213 var2719 (text/-10557480 (cast-from-var1657-to-var42 var3626!3))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var291 String (buf/-10557480 (cast-from-var1657-to-var42 var3626!3))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var919 String (toString/-222306083 var291)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2719_add/328494887 var3213 (cast-from-String-to-var2586 var919))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var3213!1 var2719)
(declare-const var919!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1657-to-var42=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2586=([java.lang.String], java.lang.Object), cast-from-var3098-to-var2586=([jdk.internal.org.objectweb.asm.Handle], java.lang.Object), getLength-Arr-var2586-1=([java.lang.Object[]], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2719_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var1657=jdk.internal.org.objectweb.asm.util.ASMifier, var3626=r0, var3999=r5, var2702=null_type, var2615=r7, var3098=jdk.internal.org.objectweb.asm.Handle, var2315=r9, var2586=java.lang.Object, var1256=r11, var42=jdk.internal.org.objectweb.asm.util.Printer, var3842=$r1, var2838=0, var2293=$r3, var1790=$r2, var1691=$r4, var71=$r6, var1115=$r8, var2522=$r10, var3194=i3, var242=$i0, var3726=$r12, var2719=java.util.List, var3213=$r14, var291=$r13, var919=$r15}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1657, r0=var3626, r5=var3999, null_type=var2702, r7=var2615, jdk.internal.org.objectweb.asm.Handle=var3098, r9=var2315, java.lang.Object=var2586, r11=var1256, jdk.internal.org.objectweb.asm.util.Printer=var42, $r1=var3842, 0=var2838, $r3=var2293, $r2=var1790, $r4=var1691, $r6=var71, $r8=var1115, $r10=var2522, i3=var3194, $i0=var242, $r12=var3726, java.util.List=var2719, $r14=var3213, $r13=var291, $r15=var919}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r9 := @parameter2: jdk.internal.org.objectweb.asm.Handle;	r11 := @parameter3: java.lang.Object[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitInvokeDynamicInsn(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new Object[]{");	i3 = 0;	$i0 = lengthof r11;	if i3 >= $i0 goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("});\n");	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	return
;block_num 3