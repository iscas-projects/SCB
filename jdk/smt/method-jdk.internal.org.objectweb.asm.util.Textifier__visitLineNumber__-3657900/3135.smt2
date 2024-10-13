(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var763 0)
(declare-sort var3285 0)
(declare-sort var1692 0)
(declare-sort var1488 0)
(declare-sort var749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1692) String)
(declare-fun cast-from-var763-to-var1692 (var763) var1692)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var763) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendLabel/827185861 (var763 var3285) void)
(declare-fun text/-10557480 (var1692) var1488)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1488_add/328494887 (var1488 var749) Bool)
(declare-fun cast-from-String-to-var749 (String) var749)
(declare-const null-var763 var763)
(declare-const null-Int Int)
(declare-const null-var3285 var3285)
(declare-const var1327 var763) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1327 null-var763)))
(declare-const var1715 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1715 null-Int)))
(declare-const var1197 var3285) ; Statement: r7 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1197 null-var3285)))
(define-const var3958 String (buf/-10557480 (cast-from-var763-to-var1692 var1327))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3958 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3958!1 String)
(declare-const var926 Int)
(define-const var2897 String (buf/-10557480 (cast-from-var763-to-var1692 var1327))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1737 String (tab2/-788090934 var1327)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var3182 String (append/1560614132 var2897 var1737)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2897!1 String)
(assert (str.prefixof var2897 var2897!1))
(assert true)
(define-const var2916 String (append/1560614132 var3182 "LINENUMBER ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LINENUMBER ") 
(declare-const var3182!1 String)
(assert (str.prefixof var3182 var3182!1))
(assert true)
(define-const var3585 String (append/1845021834 var2916 var1715)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1183289509 var3585 32)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3585!1 String)
(declare-const var2950 Int)
(assert true)
;(assert (appendLabel/827185861 var1327 var1197)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7) 

(declare-const var1327!1 var763)
(declare-const var1197!1 var3285)
(define-const var3401 String (buf/-10557480 (cast-from-var763-to-var1692 var1327!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3401 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3401!1 String)
(declare-const var101 Int)
(define-const var551 var1488 (text/-10557480 (cast-from-var763-to-var1692 var1327!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var127 String (buf/-10557480 (cast-from-var763-to-var1692 var1327!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1641 String (toString/-222306083 var127)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1488_add/328494887 var551 (cast-from-String-to-var749 var1641))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var551!1 var1488)
(declare-const var1641!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var763-to-var1692=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1488_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var749=([java.lang.String], java.lang.Object)}
; {var763=jdk.internal.org.objectweb.asm.util.Textifier, var1327=r0, var1715=i0, var3285=jdk.internal.org.objectweb.asm.Label, var1197=r7, var1692=jdk.internal.org.objectweb.asm.util.Printer, var3958=$r1, var926=0, var2897=$r3, var1737=$r2, var3182=$r4, var2916=$r5, var3585=$r6, var2950=32, var3401=$r8, var101=10, var1488=java.util.List, var551=$r10, var127=$r9, var1641=$r11, var749=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var763, r0=var1327, i0=var1715, jdk.internal.org.objectweb.asm.Label=var3285, r7=var1197, jdk.internal.org.objectweb.asm.util.Printer=var1692, $r1=var3958, 0=var926, $r3=var2897, $r2=var1737, $r4=var3182, $r5=var2916, $r6=var3585, 32=var2950, $r8=var3401, 10=var101, java.util.List=var1488, $r10=var551, $r9=var127, $r11=var1641, java.lang.Object=var749}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r7 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LINENUMBER ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1