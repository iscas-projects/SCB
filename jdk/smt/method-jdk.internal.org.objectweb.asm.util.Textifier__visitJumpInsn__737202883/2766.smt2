(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1818 0)
(declare-sort var665 0)
(declare-sort var738 0)
(declare-sort var1390 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var738) String)
(declare-fun cast-from-var1818-to-var738 (var1818) var738)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var1818) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendLabel/827185861 (var1818 var665) void)
(declare-fun text/-10557480 (var738) var1390)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1390_add/328494887 (var1390 var1171) Bool)
(declare-fun cast-from-String-to-var1171 (String) var1171)
(declare-const null-var1818 var1818)
(declare-const null-Int Int)
(declare-const null-var665 var665)
(declare-const var1818-OPCODES (Array Int String))
(declare-const var2521 var1818) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2521 null-var1818)))
(declare-const var2209 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2209 null-Int)))
(declare-const var535 var665) ; Statement: r8 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var535 null-var665)))
(define-const var3427 String (buf/-10557480 (cast-from-var1818-to-var738 var2521))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3427 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3427!1 String)
(declare-const var1389 Int)
(define-const var2283 String (buf/-10557480 (cast-from-var1818-to-var738 var2521))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var516 String (tab2/-788090934 var2521)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3576 String (append/1560614132 var2283 var516)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2283!1 String)
(assert (str.prefixof var2283 var2283!1))
(define-const var3110 (Array Int String) var1818-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var1336 String (select var3110 var2209)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var2878 String (append/1560614132 var3576 var1336)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3576!1 String)
(assert (str.prefixof var3576 var3576!1))
(assert true)
;(assert (append/1183289509 var2878 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var2878!1 String)
(declare-const var498 Int)
(assert true)
;(assert (appendLabel/827185861 var2521 var535)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r8) 

(declare-const var2521!1 var1818)
(declare-const var535!1 var665)
(define-const var2337 String (buf/-10557480 (cast-from-var1818-to-var738 var2521!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2337 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2337!1 String)
(declare-const var460 Int)
(define-const var2982 var1390 (text/-10557480 (cast-from-var1818-to-var738 var2521!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3636 String (buf/-10557480 (cast-from-var1818-to-var738 var2521!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3697 String (toString/-222306083 var3636)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1390_add/328494887 var2982 (cast-from-String-to-var1171 var3697))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2982!1 var1390)
(declare-const var3697!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1818-to-var738=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1390_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1171=([java.lang.String], java.lang.Object)}
; {var1818=jdk.internal.org.objectweb.asm.util.Textifier, var2521=r0, var2209=i0, var665=jdk.internal.org.objectweb.asm.Label, var535=r8, var738=jdk.internal.org.objectweb.asm.util.Printer, var3427=$r1, var1389=0, var2283=$r3, var516=$r2, var3576=$r6, var3110=$r4, var1336=$r5, var2878=$r7, var498=32, var2337=$r9, var460=10, var1390=java.util.List, var2982=$r11, var3636=$r10, var3697=$r12, var1171=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1818, r0=var2521, i0=var2209, jdk.internal.org.objectweb.asm.Label=var665, r8=var535, jdk.internal.org.objectweb.asm.util.Printer=var738, $r1=var3427, 0=var1389, $r3=var2283, $r2=var516, $r6=var3576, $r4=var3110, $r5=var1336, $r7=var2878, 32=var498, $r9=var2337, 10=var460, java.util.List=var1390, $r11=var2982, $r10=var3636, $r12=var3697, java.lang.Object=var1171}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r8 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1