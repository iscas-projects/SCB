(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var2857 0)
(declare-sort var3981 0)
(declare-sort var577 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3981) String)
(declare-fun cast-from-var727-to-var3981 (var727) var3981)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var727) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var2857-1 ((Array Int var2857)) Int)
(declare-fun tab3/-788090934 (var727) String)
(declare-fun appendLabel/827185861 (var727 var2857) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var3981) var577)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var577_add/328494887 (var577 var3267) Bool)
(declare-fun cast-from-String-to-var3267 (String) var3267)
(declare-const null-var727 var727)
(declare-const null-Int Int)
(declare-const null-var2857 var2857)
(declare-const null-__Array__Int__var2857__ (Array Int var2857))
(declare-const var1383 var727) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1383 null-var727)))
(declare-const var490 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var490 null-Int)))
(declare-const var481 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var481 null-Int)))
(declare-const var1990 var2857) ; Statement: r9 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1990 null-var2857)))
(declare-const var1839 (Array Int var2857)) ; Statement: r5 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var1839 null-__Array__Int__var2857__)))
(define-const var2851 String (buf/-10557480 (cast-from-var727-to-var3981 var1383))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2851 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2851!1 String)
(declare-const var2035 Int)
(define-const var2068 String (buf/-10557480 (cast-from-var727-to-var3981 var1383))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var775 String (tab2/-788090934 var1383)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var196 String (append/1560614132 var2068 var775)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2068!1 String)
(assert (str.prefixof var2068 var2068!1))
(assert true)
;(assert (append/1560614132 var196 "TABLESWITCH\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TABLESWITCH\n") 
(declare-const var196!1 String)
(assert (str.prefixof var196 var196!1))
(define-const var290 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2196 Int (getLength-Arr-var2857-1 var1839)) ; Statement: $i0 = lengthof r5 
 ; Statement: if i4 >= $i0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (>= var290 var2196)) ; Cond: i4 >= $i0 
(define-const var1907 String (buf/-10557480 (cast-from-var727-to-var3981 var1383))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3026 String (tab3/-788090934 var1383)) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3> 
(assert true)
(define-const var1165 String (append/1560614132 var1907 var3026)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1907!1 String)
(assert (str.prefixof var1907 var1907!1))
(assert true)
;(assert (append/1560614132 var1165 "default: ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("default: ") 
(declare-const var1165!1 String)
(assert (str.prefixof var1165 var1165!1))
(assert true)
;(assert (appendLabel/827185861 var1383 var1990)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9) 

(declare-const var1383!1 var727)
(declare-const var1990!1 var2857)
(define-const var1469 String (buf/-10557480 (cast-from-var727-to-var3981 var1383!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var1469 10)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var1469!1 String)
(declare-const var3381 Int)
(define-const var1667 var577 (text/-10557480 (cast-from-var727-to-var3981 var1383!1))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2456 String (buf/-10557480 (cast-from-var727-to-var3981 var1383!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2473 String (toString/-222306083 var2456)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var577_add/328494887 var1667 (cast-from-String-to-var3267 var2473))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var1667!1 var577)
(declare-const var2473!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var727-to-var3981=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-var2857-1=([jdk.internal.org.objectweb.asm.Label[]], int), tab3/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var577_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3267=([java.lang.String], java.lang.Object)}
; {var727=jdk.internal.org.objectweb.asm.util.Textifier, var1383=r0, var490=i1, var481=i3, var2857=jdk.internal.org.objectweb.asm.Label, var1990=r9, var1839=r5, var3981=jdk.internal.org.objectweb.asm.util.Printer, var2851=$r1, var2035=0, var2068=$r3, var775=$r2, var196=$r4, var290=i4, var2196=$i0, var1907=$r7, var3026=$r6, var1165=$r8, var1469=$r10, var3381=10, var577=java.util.List, var1667=$r12, var2456=$r11, var2473=$r13, var3267=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var727, r0=var1383, i1=var490, i3=var481, jdk.internal.org.objectweb.asm.Label=var2857, r9=var1990, r5=var1839, jdk.internal.org.objectweb.asm.util.Printer=var3981, $r1=var2851, 0=var2035, $r3=var2068, $r2=var775, $r4=var196, i4=var290, $i0=var2196, $r7=var1907, $r6=var3026, $r8=var1165, $r10=var1469, 10=var3381, java.util.List=var577, $r12=var1667, $r11=var2456, $r13=var2473, java.lang.Object=var3267}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i1 := @parameter0: int;	i3 := @parameter1: int;	r9 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r5 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TABLESWITCH\n");	i4 = 0;	$i0 = lengthof r5;	if i4 >= $i0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab3>;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("default: ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 3