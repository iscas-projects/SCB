(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var665 0)
(declare-sort var392 0)
(declare-sort var1267 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var392) String)
(declare-fun cast-from-var665-to-var392 (var665) var392)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var665) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var392) var1267)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1267_add/328494887 (var1267 var1815) Bool)
(declare-fun cast-from-String-to-var1815 (String) var1815)
(declare-const null-var665 var665)
(declare-const var3320 var665) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3320 null-var665)))
(define-const var1437 String (buf/-10557480 (cast-from-var665-to-var392 var3320))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1437 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1437!1 String)
(declare-const var1397 Int)
(define-const var2718 String (buf/-10557480 (cast-from-var665-to-var392 var3320))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var106 String (name/1045876480 var3320)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1791 String (append/1560614132 var2718 var106)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2718!1 String)
(assert (str.prefixof var2718 var2718!1))
(assert true)
;(assert (append/1560614132 var1791 ".visitEnd();\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n") 
(declare-const var1791!1 String)
(assert (str.prefixof var1791 var1791!1))
(define-const var1270 var1267 (text/-10557480 (cast-from-var665-to-var392 var3320))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3178 String (buf/-10557480 (cast-from-var665-to-var392 var3320))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var668 String (toString/-222306083 var3178)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1267_add/328494887 var1270 (cast-from-String-to-var1815 var668))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var1270!1 var1267)
(declare-const var668!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var665-to-var392=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1267_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1815=([java.lang.String], java.lang.Object)}
; {var665=jdk.internal.org.objectweb.asm.util.ASMifier, var3320=r0, var392=jdk.internal.org.objectweb.asm.util.Printer, var1437=$r1, var1397=0, var2718=$r3, var106=$r2, var1791=$r4, var1267=java.util.List, var1270=$r6, var3178=$r5, var668=$r7, var1815=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var665, r0=var3320, jdk.internal.org.objectweb.asm.util.Printer=var392, $r1=var1437, 0=var1397, $r3=var2718, $r2=var106, $r4=var1791, java.util.List=var1267, $r6=var1270, $r5=var3178, $r7=var668, java.lang.Object=var1815}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7);	return
;block_num 1