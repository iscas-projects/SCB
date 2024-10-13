(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2481 0)
(declare-sort var3658 0)
(declare-sort var2895 0)
(declare-sort var3326 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2895) String)
(declare-fun cast-from-var2481-to-var2895 (var2481) var2895)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2481) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var2481 var3326) void)
(declare-fun cast-from-String-to-var3326 (String) var3326)
(declare-fun text/-10557480 (var2895) var28)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var28_add/328494887 (var28 var3326) Bool)
(declare-const null-var2481 var2481)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2481-OPCODES (Array Int String))
(declare-const var1546 var2481) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1546 null-var2481)))
(declare-const var3206 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3206 null-Int)))
(declare-const var2122 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2122 null-String)))
(declare-const var3327 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3327 null-String)))
(declare-const var2332 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var2332 null-String)))
(declare-const var1138 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1138 null-Bool)))
(define-const var3872 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3872 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3872!1 String)
(declare-const var1621 Int)
(define-const var373 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var511 String (name/1045876480 var1546)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1881 String (append/1560614132 var373 var511)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var373!1 String)
(assert (str.prefixof var373 var373!1))
(assert true)
(define-const var3101 String (append/1560614132 var1881 ".visitMethodInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMethodInsn(") 
(declare-const var1881!1 String)
(assert (str.prefixof var1881 var1881!1))
(define-const var3163 (Array Int String) var2481-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var1020 String (select var3163 var3206)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var1918 String (append/1560614132 var3101 var1020)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var3101!1 String)
(assert (str.prefixof var3101 var3101!1))
(assert true)
;(assert (append/1560614132 var1918 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1918!1 String)
(assert (str.prefixof var1918 var1918!1))
(assert true)
;(assert (appendConstant/2119113448 var1546 (cast-from-String-to-var3326 var2122))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var1546!1 var2481)
(declare-const var2122!1 String)
(define-const var2548 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2548 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2548!1 String)
(assert (str.prefixof var2548 var2548!1))
(assert true)
;(assert (appendConstant/2119113448 var1546!1 (cast-from-String-to-var3326 var3327))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11) 

(declare-const var1546!2 var2481)
(declare-const var3327!1 String)
(define-const var586 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var586 ", ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var586!1 String)
(assert (str.prefixof var586 var586!1))
(assert true)
;(assert (appendConstant/2119113448 var1546!2 (cast-from-String-to-var3326 var2332))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13) 

(declare-const var1546!3 var2481)
(declare-const var2332!1 String)
(define-const var3965 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!3))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3965 ", ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3965!1 String)
(assert (str.prefixof var3965 var3965!1))
(define-const var3529 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!3))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r20 = "false" 
(assert (= (ite var1138 1 0) 0)) ; Cond: z0 == 0 
(define-const var3700 String "false") ; Statement: $r20 = "false" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var3529 var3700)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3529!1 String)
(assert (str.prefixof var3529 var3529!1))
(define-const var802 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!3))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var802 ");\n")) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var802!1 String)
(assert (str.prefixof var802 var802!1))
(define-const var1132 var28 (text/-10557480 (cast-from-var2481-to-var2895 var1546!3))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1853 String (buf/-10557480 (cast-from-var2481-to-var2895 var1546!3))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var134 String (toString/-222306083 var1853)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var28_add/328494887 var1132 (cast-from-String-to-var3326 var134))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var1132!1 var28)
(declare-const var134!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2481-to-var2895=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var3326=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var28_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var2481=jdk.internal.org.objectweb.asm.util.ASMifier, var1546=r0, var3206=i0, var2122=r9, var3658=null_type, var3327=r11, var2332=r13, var1138=z0, var2895=jdk.internal.org.objectweb.asm.util.Printer, var3872=$r1, var1621=0, var373=$r3, var511=$r2, var1881=$r4, var3101=$r7, var3163=$r5, var1020=$r6, var1918=$r8, var3326=java.lang.Object, var2548=$r10, var586=$r12, var3965=$r14, var3529=$r15, var3700=$r20, var802=$r16, var28=java.util.List, var1132=$r18, var1853=$r17, var134=$r19}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2481, r0=var1546, i0=var3206, r9=var2122, null_type=var3658, r11=var3327, r13=var2332, z0=var1138, jdk.internal.org.objectweb.asm.util.Printer=var2895, $r1=var3872, 0=var1621, $r3=var373, $r2=var511, $r4=var1881, $r7=var3101, $r5=var3163, $r6=var1020, $r8=var1918, java.lang.Object=var3326, $r10=var2548, $r12=var586, $r14=var3965, $r15=var3529, $r20=var3700, $r16=var802, java.util.List=var28, $r18=var1132, $r17=var1853, $r19=var134}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMethodInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r20 = "false";	$r20 = "false";	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 3