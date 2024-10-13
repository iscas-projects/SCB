(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var2343 0)
(declare-sort var2103 0)
(declare-sort var3406 0)
(declare-sort var983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2103) String)
(declare-fun cast-from-var3797-to-var2103 (var3797) var2103)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var3797) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var3797 var3406) void)
(declare-fun cast-from-String-to-var3406 (String) var3406)
(declare-fun text/-10557480 (var2103) var983)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var983_add/328494887 (var983 var3406) Bool)
(declare-const null-var3797 var3797)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3797-OPCODES (Array Int String))
(declare-const var2515 var3797) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2515 null-var3797)))
(declare-const var1647 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1647 null-Int)))
(declare-const var3495 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3495 null-String)))
(declare-const var1723 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1723 null-String)))
(declare-const var2935 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var2935 null-String)))
(define-const var494 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var494 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var494!1 String)
(declare-const var264 Int)
(define-const var2519 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var98 String (name/1045876480 var2515)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var2487 String (append/1560614132 var2519 var98)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2519!1 String)
(assert (str.prefixof var2519 var2519!1))
(assert true)
(define-const var3774 String (append/1560614132 var2487 ".visitFieldInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitFieldInsn(") 
(declare-const var2487!1 String)
(assert (str.prefixof var2487 var2487!1))
(define-const var1635 (Array Int String) var3797-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var3423 String (select var1635 var1647)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var873 String (append/1560614132 var3774 var3423)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var3774!1 String)
(assert (str.prefixof var3774 var3774!1))
(assert true)
;(assert (append/1560614132 var873 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var873!1 String)
(assert (str.prefixof var873 var873!1))
(assert true)
;(assert (appendConstant/2119113448 var2515 (cast-from-String-to-var3406 var3495))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var2515!1 var3797)
(declare-const var3495!1 String)
(define-const var2266 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2266 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2266!1 String)
(assert (str.prefixof var2266 var2266!1))
(assert true)
;(assert (appendConstant/2119113448 var2515!1 (cast-from-String-to-var3406 var1723))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11) 

(declare-const var2515!2 var3797)
(declare-const var1723!1 String)
(define-const var715 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var715 ", ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var715!1 String)
(assert (str.prefixof var715 var715!1))
(assert true)
;(assert (appendConstant/2119113448 var2515!2 (cast-from-String-to-var3406 var2935))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13) 

(declare-const var2515!3 var3797)
(declare-const var2935!1 String)
(define-const var1674 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515!3))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1674 ");\n")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var1674!1 String)
(assert (str.prefixof var1674 var1674!1))
(define-const var3836 var983 (text/-10557480 (cast-from-var3797-to-var2103 var2515!3))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1401 String (buf/-10557480 (cast-from-var3797-to-var2103 var2515!3))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1640 String (toString/-222306083 var1401)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var983_add/328494887 var3836 (cast-from-String-to-var3406 var1640))) ; Statement: interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var3836!1 var983)
(declare-const var1640!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3797-to-var2103=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var3406=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var983_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var3797=jdk.internal.org.objectweb.asm.util.ASMifier, var2515=r0, var1647=i0, var3495=r9, var2343=null_type, var1723=r11, var2935=r13, var2103=jdk.internal.org.objectweb.asm.util.Printer, var494=$r1, var264=0, var2519=$r3, var98=$r2, var2487=$r4, var3774=$r7, var1635=$r5, var3423=$r6, var873=$r8, var3406=java.lang.Object, var2266=$r10, var715=$r12, var1674=$r14, var983=java.util.List, var3836=$r16, var1401=$r15, var1640=$r17}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3797, r0=var2515, i0=var1647, r9=var3495, null_type=var2343, r11=var1723, r13=var2935, jdk.internal.org.objectweb.asm.util.Printer=var2103, $r1=var494, 0=var264, $r3=var2519, $r2=var98, $r4=var2487, $r7=var3774, $r5=var1635, $r6=var3423, $r8=var873, java.lang.Object=var3406, $r10=var2266, $r12=var715, $r14=var1674, java.util.List=var983, $r16=var3836, $r15=var1401, $r17=var1640}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitFieldInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r16.<java.util.List: boolean add(java.lang.Object)>($r17);	return
;block_num 1