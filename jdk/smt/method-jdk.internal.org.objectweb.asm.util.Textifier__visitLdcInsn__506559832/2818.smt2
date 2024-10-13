(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var855 0)
(declare-sort var2706 0)
(declare-sort var1437 0)
(declare-sort var2208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1437) String)
(declare-fun cast-from-var855-to-var1437 (var855) var1437)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var855) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2706-to-String (var2706) String)
(declare-fun var1437_appendString/1146634190 (String String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var1437) var2208)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2208_add/328494887 (var2208 var2706) Bool)
(declare-fun cast-from-String-to-var2706 (String) var2706)
(declare-const null-var855 var855)
(declare-const null-var2706 var2706)
(declare-const var338 var855) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var338 null-var855)))
(declare-const var2282 var2706) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var2282 null-var2706)))
(define-const var1859 String (buf/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1859 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1859!1 String)
(declare-const var2648 Int)
(define-const var3146 String (buf/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1948 String (tab2/-788090934 var338)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3783 String (append/1560614132 var3146 var1948)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3146!1 String)
(assert (str.prefixof var3146 var3146!1))
(assert true)
;(assert (append/1560614132 var3783 "LDC ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LDC ") 
(declare-const var3783!1 String)
(assert (str.prefixof var3783 var3783!1))
(define-const var70 Bool false) ; Statement: $z0 = r5 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r5 instanceof jdk.internal.org.objectweb.asm.Type 
(assert (not (= (ite var70 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3589 String (buf/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3131 String (cast-from-var2706-to-String var2282)) ; Statement: $r11 = (java.lang.String) r5 
;(assert (var1437_appendString/1146634190 var3589 var3131)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.Printer: void appendString(java.lang.StringBuffer,java.lang.String)>($r12, $r11) 

(declare-const var3589!1 String)
(declare-const var3131!1 String)
 ; Statement: goto [?= $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var2584 String (buf/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2584 10)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2584!1 String)
(declare-const var2516 Int)
(define-const var189 var2208 (text/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1341 String (buf/-10557480 (cast-from-var855-to-var1437 var338))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3242 String (toString/-222306083 var1341)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2208_add/328494887 var189 (cast-from-String-to-var2706 var3242))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r16) 

(declare-const var189!1 var2208)
(declare-const var3242!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var855-to-var1437=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-var2706-to-String=([java.lang.Object], java.lang.String), var1437_appendString/1146634190=([java.lang.StringBuffer, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2208_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2706=([java.lang.String], java.lang.Object)}
; {var855=jdk.internal.org.objectweb.asm.util.Textifier, var338=r0, var2706=java.lang.Object, var2282=r5, var1437=jdk.internal.org.objectweb.asm.util.Printer, var1859=$r1, var2648=0, var3146=$r3, var1948=$r2, var3783=$r4, var70=$z0, var3589=$r12, var3131=$r11, var2584=$r13, var2516=10, var2208=java.util.List, var189=$r14, var1341=$r15, var3242=$r16}
; {jdk.internal.org.objectweb.asm.util.Textifier=var855, r0=var338, java.lang.Object=var2706, r5=var2282, jdk.internal.org.objectweb.asm.util.Printer=var1437, $r1=var1859, 0=var2648, $r3=var3146, $r2=var1948, $r4=var3783, $z0=var70, $r12=var3589, $r11=var3131, $r13=var2584, 10=var2516, java.util.List=var2208, $r14=var189, $r15=var1341, $r16=var3242}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LDC ");	$z0 = r5 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r5 instanceof jdk.internal.org.objectweb.asm.Type;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = (java.lang.String) r5;	staticinvoke <jdk.internal.org.objectweb.asm.util.Printer: void appendString(java.lang.StringBuffer,java.lang.String)>($r12, $r11);	goto [?= $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>];	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r16);	return
;block_num 3