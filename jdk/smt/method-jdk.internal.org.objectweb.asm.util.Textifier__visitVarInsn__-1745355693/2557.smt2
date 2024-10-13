(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var3241 0)
(declare-sort var3763 0)
(declare-sort var1712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3241) String)
(declare-fun cast-from-var315-to-var3241 (var315) var3241)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var315) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var3241) var3763)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3763_add/328494887 (var3763 var1712) Bool)
(declare-fun cast-from-String-to-var1712 (String) var1712)
(declare-const null-var315 var315)
(declare-const null-Int Int)
(declare-const var315-OPCODES (Array Int String))
(declare-const var2031 var315) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2031 null-var315)))
(declare-const var1096 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1096 null-Int)))
(declare-const var1759 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1759 null-Int)))
(define-const var134 String (buf/-10557480 (cast-from-var315-to-var3241 var2031))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var134 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var134!1 String)
(declare-const var3410 Int)
(define-const var48 String (buf/-10557480 (cast-from-var315-to-var3241 var2031))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3459 String (tab2/-788090934 var2031)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2716 String (append/1560614132 var48 var3459)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var48!1 String)
(assert (str.prefixof var48 var48!1))
(define-const var980 (Array Int String) var315-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var2027 String (select var980 var1096)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var1166 String (append/1560614132 var2716 var2027)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2716!1 String)
(assert (str.prefixof var2716 var2716!1))
(assert true)
(define-const var2349 String (append/1183289509 var1166 32)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var865 String (append/1845021834 var2349 var1759)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1183289509 var865 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var865!1 String)
(declare-const var2820 Int)
(define-const var1544 var3763 (text/-10557480 (cast-from-var315-to-var3241 var2031))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3936 String (buf/-10557480 (cast-from-var315-to-var3241 var2031))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1493 String (toString/-222306083 var3936)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3763_add/328494887 var1544 (cast-from-String-to-var1712 var1493))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var1544!1 var3763)
(declare-const var1493!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var315-to-var3241=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3763_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1712=([java.lang.String], java.lang.Object)}
; {var315=jdk.internal.org.objectweb.asm.util.Textifier, var2031=r0, var1096=i0, var1759=i1, var3241=jdk.internal.org.objectweb.asm.util.Printer, var134=$r1, var3410=0, var48=$r3, var3459=$r2, var2716=$r6, var980=$r4, var2027=$r5, var1166=$r7, var2349=$r8, var865=$r9, var2820=10, var3763=java.util.List, var1544=$r11, var3936=$r10, var1493=$r12, var1712=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var315, r0=var2031, i0=var1096, i1=var1759, jdk.internal.org.objectweb.asm.util.Printer=var3241, $r1=var134, 0=var3410, $r3=var48, $r2=var3459, $r6=var2716, $r4=var980, $r5=var2027, $r7=var1166, $r8=var2349, $r9=var865, 10=var2820, java.util.List=var3763, $r11=var1544, $r10=var3936, $r12=var1493, java.lang.Object=var1712}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1