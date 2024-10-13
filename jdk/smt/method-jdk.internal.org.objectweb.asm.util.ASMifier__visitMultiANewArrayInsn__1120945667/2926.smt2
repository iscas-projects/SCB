(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3580 0)
(declare-sort var3276 0)
(declare-sort var2401 0)
(declare-sort var1887 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2401) String)
(declare-fun cast-from-var3580-to-var2401 (var3580) var2401)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var3580) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var3580 var1887) void)
(declare-fun cast-from-String-to-var1887 (String) var1887)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var2401) var365)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var365_add/328494887 (var365 var1887) Bool)
(declare-const null-var3580 var3580)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3328 var3580) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3328 null-var3580)))
(declare-const var2013 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2013 null-String)))
(declare-const var1254 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1254 null-Int)))
(define-const var1658 String (buf/-10557480 (cast-from-var3580-to-var2401 var3328))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1658 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1658!1 String)
(declare-const var2965 Int)
(define-const var2128 String (buf/-10557480 (cast-from-var3580-to-var2401 var3328))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2574 String (name/1045876480 var3328)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1535 String (append/1560614132 var2128 var2574)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2128!1 String)
(assert (str.prefixof var2128 var2128!1))
(assert true)
;(assert (append/1560614132 var1535 ".visitMultiANewArrayInsn(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMultiANewArrayInsn(") 
(declare-const var1535!1 String)
(assert (str.prefixof var1535 var1535!1))
(assert true)
;(assert (appendConstant/2119113448 var3328 (cast-from-String-to-var1887 var2013))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var3328!1 var3580)
(declare-const var2013!1 String)
(define-const var3538 String (buf/-10557480 (cast-from-var3580-to-var2401 var3328!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1036 String (append/1560614132 var3538 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3538!1 String)
(assert (str.prefixof var3538 var3538!1))
(assert true)
(define-const var840 String (append/1845021834 var1036 var1254)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1560614132 var840 ");\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var840!1 String)
(assert (str.prefixof var840 var840!1))
(define-const var3981 var365 (text/-10557480 (cast-from-var3580-to-var2401 var3328!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var553 String (buf/-10557480 (cast-from-var3580-to-var2401 var3328!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2932 String (toString/-222306083 var553)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var365_add/328494887 var3981 (cast-from-String-to-var1887 var2932))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var3981!1 var365)
(declare-const var2932!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3580-to-var2401=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var1887=([java.lang.String], java.lang.Object), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var365_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var3580=jdk.internal.org.objectweb.asm.util.ASMifier, var3328=r0, var2013=r5, var3276=null_type, var1254=i0, var2401=jdk.internal.org.objectweb.asm.util.Printer, var1658=$r1, var2965=0, var2128=$r3, var2574=$r2, var1535=$r4, var1887=java.lang.Object, var3538=$r6, var1036=$r7, var840=$r8, var365=java.util.List, var3981=$r10, var553=$r9, var2932=$r11}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3580, r0=var3328, r5=var2013, null_type=var3276, i0=var1254, jdk.internal.org.objectweb.asm.util.Printer=var2401, $r1=var1658, 0=var2965, $r3=var2128, $r2=var2574, $r4=var1535, java.lang.Object=var1887, $r6=var3538, $r7=var1036, $r8=var840, java.util.List=var365, $r10=var3981, $r9=var553, $r11=var2932}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMultiANewArrayInsn(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1