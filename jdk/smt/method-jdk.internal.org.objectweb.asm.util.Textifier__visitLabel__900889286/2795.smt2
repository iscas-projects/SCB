(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3623 0)
(declare-sort var1438 0)
(declare-sort var2426 0)
(declare-sort var1484 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2426) String)
(declare-fun cast-from-var3623-to-var2426 (var3623) var2426)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun ltab/-788090934 (var3623) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/827185861 (var3623 var1438) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2426) var1484)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1484_add/328494887 (var1484 var3422) Bool)
(declare-fun cast-from-String-to-var3422 (String) var3422)
(declare-const null-var3623 var3623)
(declare-const null-var1438 var1438)
(declare-const var651 var3623) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var651 null-var3623)))
(declare-const var1884 var1438) ; Statement: r4 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1884 null-var1438)))
(define-const var2177 String (buf/-10557480 (cast-from-var3623-to-var2426 var651))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2177 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2177!1 String)
(declare-const var1862 Int)
(define-const var2553 String (buf/-10557480 (cast-from-var3623-to-var2426 var651))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2510 String (ltab/-788090934 var651)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String ltab> 
(assert true)
;(assert (append/1560614132 var2553 var2510)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2553!1 String)
(assert (str.prefixof var2553 var2553!1))
(assert true)
;(assert (appendLabel/827185861 var651 var1884)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r4) 

(declare-const var651!1 var3623)
(declare-const var1884!1 var1438)
(define-const var971 String (buf/-10557480 (cast-from-var3623-to-var2426 var651!1))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var971 10)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var971!1 String)
(declare-const var2379 Int)
(define-const var3384 var1484 (text/-10557480 (cast-from-var3623-to-var2426 var651!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3901 String (buf/-10557480 (cast-from-var3623-to-var2426 var651!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var950 String (toString/-222306083 var3901)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1484_add/328494887 var3384 (cast-from-String-to-var3422 var950))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var3384!1 var1484)
(declare-const var950!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3623-to-var2426=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), ltab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1484_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3422=([java.lang.String], java.lang.Object)}
; {var3623=jdk.internal.org.objectweb.asm.util.Textifier, var651=r0, var1438=jdk.internal.org.objectweb.asm.Label, var1884=r4, var2426=jdk.internal.org.objectweb.asm.util.Printer, var2177=$r1, var1862=0, var2553=$r3, var2510=$r2, var971=$r5, var2379=10, var1484=java.util.List, var3384=$r7, var3901=$r6, var950=$r8, var3422=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3623, r0=var651, jdk.internal.org.objectweb.asm.Label=var1438, r4=var1884, jdk.internal.org.objectweb.asm.util.Printer=var2426, $r1=var2177, 0=var1862, $r3=var2553, $r2=var2510, $r5=var971, 10=var2379, java.util.List=var1484, $r7=var3384, $r6=var3901, $r8=var950, java.lang.Object=var3422}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r4 := @parameter0: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String ltab>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r4);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8);	return
;block_num 1