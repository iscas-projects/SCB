(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3967 0)
(declare-sort var2003 0)
(declare-sort var3360 0)
(declare-sort var601 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3360) String)
(declare-fun cast-from-var3967-to-var3360 (var3967) var3360)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3967) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var2003-1 ((Array Int var2003)) Int)
(declare-fun tab3/-788090934 (var3967) String)
(declare-fun appendLabel/827185861 (var3967 var2003) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var3360) var601)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var601_add/328494887 (var601 var740) Bool)
(declare-fun cast-from-String-to-var740 (String) var740)
(declare-const null-var3967 var3967)
(declare-const null-var2003 var2003)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var2003__ (Array Int var2003))
(declare-const var2936 var3967) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2936 null-var3967)))
(declare-const var551 var2003) ; Statement: r9 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var551 null-var2003)))
(declare-const var398 (Array Int Int)) ; Statement: r16 := @parameter1: int[] 
(assert (not (= var398 null-__Array__Int__Int__)))
(declare-const var3882 (Array Int var2003)) ; Statement: r5 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var3882 null-__Array__Int__var2003__)))
(define-const var590 String (buf/-10557480 (cast-from-var3967-to-var3360 var2936))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var590 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var590!1 String)
(declare-const var2395 Int)
(define-const var2246 String (buf/-10557480 (cast-from-var3967-to-var3360 var2936))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3953 String (tab2/-788090934 var2936)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2998 String (append/1560614132 var2246 var3953)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2246!1 String)
(assert (str.prefixof var2246 var2246!1))
(assert true)
;(assert (append/1560614132 var2998 "LOOKUPSWITCH\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOOKUPSWITCH\n") 
(declare-const var2998!1 String)
(assert (str.prefixof var2998 var2998!1))
(define-const var489 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var6 Int (getLength-Arr-var2003-1 var3882)) ; Statement: $i0 = lengthof r5 
 ; Statement: if i2 >= $i0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (>= var489 var6)) ; Cond: i2 >= $i0 
(define-const var1440 String (buf/-10557480 (cast-from-var3967-to-var3360 var2936))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3606 String (tab3/-788090934 var2936)) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3> 
(assert true)
(define-const var2149 String (append/1560614132 var1440 var3606)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1440!1 String)
(assert (str.prefixof var1440 var1440!1))
(assert true)
;(assert (append/1560614132 var2149 "default: ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("default: ") 
(declare-const var2149!1 String)
(assert (str.prefixof var2149 var2149!1))
(assert true)
;(assert (appendLabel/827185861 var2936 var551)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9) 

(declare-const var2936!1 var3967)
(declare-const var551!1 var2003)
(define-const var783 String (buf/-10557480 (cast-from-var3967-to-var3360 var2936!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var783 10)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var783!1 String)
(declare-const var1705 Int)
(define-const var1626 var601 (text/-10557480 (cast-from-var3967-to-var3360 var2936!1))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1618 String (buf/-10557480 (cast-from-var3967-to-var3360 var2936!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3551 String (toString/-222306083 var1618)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var601_add/328494887 var1626 (cast-from-String-to-var740 var3551))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var1626!1 var601)
(declare-const var3551!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3967-to-var3360=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-var2003-1=([jdk.internal.org.objectweb.asm.Label[]], int), tab3/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var601_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var740=([java.lang.String], java.lang.Object)}
; {var3967=jdk.internal.org.objectweb.asm.util.Textifier, var2936=r0, var2003=jdk.internal.org.objectweb.asm.Label, var551=r9, var398=r16, var3882=r5, var3360=jdk.internal.org.objectweb.asm.util.Printer, var590=$r1, var2395=0, var2246=$r3, var3953=$r2, var2998=$r4, var489=i2, var6=$i0, var1440=$r7, var3606=$r6, var2149=$r8, var783=$r10, var1705=10, var601=java.util.List, var1626=$r12, var1618=$r11, var3551=$r13, var740=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3967, r0=var2936, jdk.internal.org.objectweb.asm.Label=var2003, r9=var551, r16=var398, r5=var3882, jdk.internal.org.objectweb.asm.util.Printer=var3360, $r1=var590, 0=var2395, $r3=var2246, $r2=var3953, $r4=var2998, i2=var489, $i0=var6, $r7=var1440, $r6=var3606, $r8=var2149, $r10=var783, 10=var1705, java.util.List=var601, $r12=var1626, $r11=var1618, $r13=var3551, java.lang.Object=var740}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r9 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r16 := @parameter1: int[];	r5 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOOKUPSWITCH\n");	i2 = 0;	$i0 = lengthof r5;	if i2 >= $i0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3>;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("default: ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 3