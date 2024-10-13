(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var406 0)
(declare-sort var2278 0)
(declare-sort var2694 0)
(declare-sort var3453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2278) String)
(declare-fun cast-from-var406-to-var2278 (var406) var2278)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var406) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun text/-10557480 (var2278) var2694)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2694_add/328494887 (var2694 var3453) Bool)
(declare-fun cast-from-String-to-var3453 (String) var3453)
(declare-const null-var406 var406)
(declare-const null-Int Int)
(declare-const var406-OPCODES (Array Int String))
(declare-const var428 var406) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var428 null-var406)))
(declare-const var3485 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3485 null-Int)))
(declare-const var1372 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1372 null-Int)))
(define-const var1719 String (buf/-10557480 (cast-from-var406-to-var2278 var428))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1719 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1719!1 String)
(declare-const var3988 Int)
(define-const var3802 String (buf/-10557480 (cast-from-var406-to-var2278 var428))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var603 String (tab2/-788090934 var428)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var349 String (append/1560614132 var3802 var603)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3802!1 String)
(assert (str.prefixof var3802 var3802!1))
(define-const var2594 (Array Int String) var406-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var2891 String (select var2594 var3485)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var226 String (append/1560614132 var349 var2891)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var349!1 String)
(assert (str.prefixof var349 var349!1))
(assert true)
(define-const var2564 String (append/1183289509 var226 32)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
 ; Statement: if i0 != 188 goto $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (= var3485 188))) ; Cond: i0 != 188 
(define-const var413 String (Int_toString/1350422511 var1372)) ; Statement: $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert true) ; Non Conditional
(assert true)
(define-const var50 String (append/1560614132 var2564 var413)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14) 
(declare-const var2564!1 String)
(assert (str.prefixof var2564 var2564!1))
(assert true)
;(assert (append/1183289509 var50 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var50!1 String)
(declare-const var725 Int)
(define-const var713 var2694 (text/-10557480 (cast-from-var406-to-var2278 var428))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2398 String (buf/-10557480 (cast-from-var406-to-var2278 var428))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1072 String (toString/-222306083 var2398)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2694_add/328494887 var713 (cast-from-String-to-var3453 var1072))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var713!1 var2694)
(declare-const var1072!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var406-to-var2278=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), Int_toString/1350422511=([int], java.lang.String), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2694_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3453=([java.lang.String], java.lang.Object)}
; {var406=jdk.internal.org.objectweb.asm.util.Textifier, var428=r0, var3485=i0, var1372=i1, var2278=jdk.internal.org.objectweb.asm.util.Printer, var1719=$r1, var3988=0, var3802=$r3, var603=$r2, var349=$r6, var2594=$r4, var2891=$r5, var226=$r7, var2564=$r8, var413=$r14, var50=$r9, var725=10, var2694=java.util.List, var713=$r11, var2398=$r10, var1072=$r12, var3453=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var406, r0=var428, i0=var3485, i1=var1372, jdk.internal.org.objectweb.asm.util.Printer=var2278, $r1=var1719, 0=var3988, $r3=var3802, $r2=var603, $r6=var349, $r4=var2594, $r5=var2891, $r7=var226, $r8=var2564, $r14=var413, $r9=var50, 10=var725, java.util.List=var2694, $r11=var713, $r10=var2398, $r12=var1072, java.lang.Object=var3453}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	if i0 != 188 goto $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r14);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 3