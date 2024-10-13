(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3255 0)
(declare-sort var852 0)
(declare-sort var434 0)
(declare-sort var281 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var434) String)
(declare-fun cast-from-var3255-to-var434 (var3255) var434)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun valueNumber/-788090934 (var3255) Int)
(declare-fun appendComa/-337716018 (var3255 Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var434) var281)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var281_add/328494887 (var281 var2775) Bool)
(declare-fun cast-from-String-to-var2775 (String) var2775)
(declare-fun createTextifier/-1341636553 (var3255) var3255)
(declare-fun getText/-142638630 (var434) var281)
(declare-fun cast-from-var281-to-var2775 (var281) var2775)
(declare-const null-var3255 var3255)
(declare-const null-String String)
(declare-const var3954 var3255) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3954 null-var3255)))
(declare-const var523 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var523 null-String)))
(define-const var1345 String (buf/-10557480 (cast-from-var3255-to-var434 var3954))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1345 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1345!1 String)
(declare-const var1735 Int)
(define-const var2846 Int (valueNumber/-788090934 var3954)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> 
(define-const var982 Int (+ var2846 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3954!1 var3255)
(assert (not (= var3954!1 null-var3255)))
(assert (= (valueNumber/-788090934 var3954!1) var982)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1 
(assert true)
;(assert (appendComa/-337716018 var3954!1 var2846)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0) 

(declare-const var3954!2 var3255)
(declare-const var2846!1 Int)
 ; Statement: if r2 == null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var523 null-String)) ; Cond: r2 == null 
(define-const var3659 String (buf/-10557480 (cast-from-var3255-to-var434 var3954!2))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3659 123)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(123) 

(declare-const var3659!1 String)
(declare-const var246 Int)
(define-const var380 var281 (text/-10557480 (cast-from-var3255-to-var434 var3954!2))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2479 String (buf/-10557480 (cast-from-var3255-to-var434 var3954!2))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2465 String (toString/-222306083 var2479)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var281_add/328494887 var380 (cast-from-String-to-var2775 var2465))) ; Statement: interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var380!1 var281)
(declare-const var2465!1 String)
(assert true)
(define-const var586 var3255 (createTextifier/-1341636553 var3954!2)) ; Statement: $r12 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var516 var281 (text/-10557480 (cast-from-var3255-to-var434 var3954!2))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var3094 var281 (getText/-142638630 (cast-from-var3255-to-var434 var586))) ; Statement: $r8 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var281_add/328494887 var516 (cast-from-var281-to-var2775 var3094))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var516!1 var281)
(declare-const var3094!1 var281)
(define-const var870 var281 (text/-10557480 (cast-from-var3255-to-var434 var3954!2))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
;(assert (var281_add/328494887 var870 (cast-from-String-to-var2775 "}"))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("}") 

(declare-const var870!1 var281)
(declare-const var2758 String)
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3255-to-var434=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), valueNumber/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), appendComa/-337716018=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var281_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2775=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var281-to-var2775=([java.util.List], java.lang.Object)}
; {var3255=jdk.internal.org.objectweb.asm.util.Textifier, var3954=r0, var523=r2, var852=null_type, var434=jdk.internal.org.objectweb.asm.util.Printer, var1345=$r1, var1735=0, var2846=$i0, var982=$i1, var3659=$r3, var246=123, var281=java.util.List, var380=$r5, var2479=$r4, var2465=$r6, var2775=java.lang.Object, var586=$r12, var516=$r7, var3094=$r8, var870=$r9, var2758="}"}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3255, r0=var3954, r2=var523, null_type=var852, jdk.internal.org.objectweb.asm.util.Printer=var434, $r1=var1345, 0=var1735, $i0=var2846, $i1=var982, $r3=var3659, 123=var246, java.util.List=var281, $r5=var380, $r4=var2479, $r6=var2465, java.lang.Object=var2775, $r12=var586, $r7=var516, $r8=var3094, $r9=var870, "}"=var2758}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber>;	$i1 = $i0 + 1;	r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0);	if r2 == null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(123);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r5.<java.util.List: boolean add(java.lang.Object)>($r6);	$r12 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = virtualinvoke $r12.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>("}");	return $r12
;block_num 2