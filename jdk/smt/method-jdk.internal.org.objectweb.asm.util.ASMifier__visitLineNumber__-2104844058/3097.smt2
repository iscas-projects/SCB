(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var912 0)
(declare-sort var1883 0)
(declare-sort var77 0)
(declare-sort var3919 0)
(declare-sort var392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var77) String)
(declare-fun cast-from-var912-to-var77 (var912) var77)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var912) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun appendLabel/937164375 (var912 var1883) void)
(declare-fun text/-10557480 (var77) var3919)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3919_add/328494887 (var3919 var392) Bool)
(declare-fun cast-from-String-to-var392 (String) var392)
(declare-const null-var912 var912)
(declare-const null-Int Int)
(declare-const null-var1883 var1883)
(declare-const var2057 var912) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2057 null-var912)))
(declare-const var2516 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2516 null-Int)))
(declare-const var319 var1883) ; Statement: r7 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var319 null-var1883)))
(define-const var3044 String (buf/-10557480 (cast-from-var912-to-var77 var2057))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3044 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3044!1 String)
(declare-const var2365 Int)
(define-const var2045 String (buf/-10557480 (cast-from-var912-to-var77 var2057))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var159 String (name/1045876480 var2057)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1700 String (append/1560614132 var2045 var159)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2045!1 String)
(assert (str.prefixof var2045 var2045!1))
(assert true)
(define-const var2211 String (append/1560614132 var1700 ".visitLineNumber(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLineNumber(") 
(declare-const var1700!1 String)
(assert (str.prefixof var1700 var1700!1))
(assert true)
(define-const var2695 String (append/1845021834 var2211 var2516)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1560614132 var2695 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2695!1 String)
(assert (str.prefixof var2695 var2695!1))
(assert true)
;(assert (appendLabel/937164375 var2057 var319)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7) 

(declare-const var2057!1 var912)
(declare-const var319!1 var1883)
(define-const var2085 String (buf/-10557480 (cast-from-var912-to-var77 var2057!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2085 ");\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2085!1 String)
(assert (str.prefixof var2085 var2085!1))
(define-const var3689 var3919 (text/-10557480 (cast-from-var912-to-var77 var2057!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1356 String (buf/-10557480 (cast-from-var912-to-var77 var2057!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2978 String (toString/-222306083 var1356)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3919_add/328494887 var3689 (cast-from-String-to-var392 var2978))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var3689!1 var3919)
(declare-const var2978!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var912-to-var77=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3919_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var392=([java.lang.String], java.lang.Object)}
; {var912=jdk.internal.org.objectweb.asm.util.ASMifier, var2057=r0, var2516=i0, var1883=jdk.internal.org.objectweb.asm.Label, var319=r7, var77=jdk.internal.org.objectweb.asm.util.Printer, var3044=$r1, var2365=0, var2045=$r3, var159=$r2, var1700=$r4, var2211=$r5, var2695=$r6, var2085=$r8, var3919=java.util.List, var3689=$r10, var1356=$r9, var2978=$r11, var392=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var912, r0=var2057, i0=var2516, jdk.internal.org.objectweb.asm.Label=var1883, r7=var319, jdk.internal.org.objectweb.asm.util.Printer=var77, $r1=var3044, 0=var2365, $r3=var2045, $r2=var159, $r4=var1700, $r5=var2211, $r6=var2695, $r8=var2085, java.util.List=var3919, $r10=var3689, $r9=var1356, $r11=var2978, java.lang.Object=var392}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r7 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLineNumber(");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1