(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var106 0)
(declare-sort var201 0)
(declare-sort var2443 0)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var201) String)
(declare-fun cast-from-var106-to-var201 (var106) var201)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var106) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var201) var2443)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2443_add/328494887 (var2443 var349) Bool)
(declare-fun cast-from-String-to-var349 (String) var349)
(declare-const null-var106 var106)
(declare-const null-Int Int)
(declare-const var3899 var106) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3899 null-var106)))
(declare-const var1577 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1577 null-Int)))
(declare-const var2899 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2899 null-Int)))
(define-const var3961 String (buf/-10557480 (cast-from-var106-to-var201 var3899))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3961 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3961!1 String)
(declare-const var2132 Int)
(define-const var906 String (buf/-10557480 (cast-from-var106-to-var201 var3899))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var736 String (name/1045876480 var3899)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var2958 String (append/1560614132 var906 var736)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
(assert true)
(define-const var2609 String (append/1560614132 var2958 ".visitIincInsn(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIincInsn(") 
(declare-const var2958!1 String)
(assert (str.prefixof var2958 var2958!1))
(assert true)
(define-const var2820 String (append/1845021834 var2609 var1577)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var3536 String (append/1560614132 var2820 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2820!1 String)
(assert (str.prefixof var2820 var2820!1))
(assert true)
(define-const var3441 String (append/1845021834 var3536 var2899)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1560614132 var3441 ");\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3441!1 String)
(assert (str.prefixof var3441 var3441!1))
(define-const var1226 var2443 (text/-10557480 (cast-from-var106-to-var201 var3899))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2651 String (buf/-10557480 (cast-from-var106-to-var201 var3899))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3922 String (toString/-222306083 var2651)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2443_add/328494887 var1226 (cast-from-String-to-var349 var3922))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var1226!1 var2443)
(declare-const var3922!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var106-to-var201=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2443_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var349=([java.lang.String], java.lang.Object)}
; {var106=jdk.internal.org.objectweb.asm.util.ASMifier, var3899=r0, var1577=i0, var2899=i1, var201=jdk.internal.org.objectweb.asm.util.Printer, var3961=$r1, var2132=0, var906=$r3, var736=$r2, var2958=$r4, var2609=$r5, var2820=$r6, var3536=$r7, var3441=$r8, var2443=java.util.List, var1226=$r10, var2651=$r9, var3922=$r11, var349=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var106, r0=var3899, i0=var1577, i1=var2899, jdk.internal.org.objectweb.asm.util.Printer=var201, $r1=var3961, 0=var2132, $r3=var906, $r2=var736, $r4=var2958, $r5=var2609, $r6=var2820, $r7=var3536, $r8=var3441, java.util.List=var2443, $r10=var1226, $r9=var2651, $r11=var3922, java.lang.Object=var349}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIincInsn(");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1