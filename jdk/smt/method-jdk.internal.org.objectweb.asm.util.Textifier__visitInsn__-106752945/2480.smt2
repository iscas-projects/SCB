(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3358 0)
(declare-sort var3400 0)
(declare-sort var252 0)
(declare-sort var2027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3400) String)
(declare-fun cast-from-var3358-to-var3400 (var3358) var3400)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3358) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var3400) var252)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var252_add/328494887 (var252 var2027) Bool)
(declare-fun cast-from-String-to-var2027 (String) var2027)
(declare-const null-var3358 var3358)
(declare-const null-Int Int)
(declare-const var3358-OPCODES (Array Int String))
(declare-const var2729 var3358) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2729 null-var3358)))
(declare-const var1512 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1512 null-Int)))
(define-const var3943 String (buf/-10557480 (cast-from-var3358-to-var3400 var2729))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3943 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3943!1 String)
(declare-const var1435 Int)
(define-const var1628 String (buf/-10557480 (cast-from-var3358-to-var3400 var2729))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var490 String (tab2/-788090934 var2729)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2262 String (append/1560614132 var1628 var490)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1628!1 String)
(assert (str.prefixof var1628 var1628!1))
(define-const var672 (Array Int String) var3358-OPCODES) ; Statement: $r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES> 
(define-const var3674 String (select var672 var1512)) ; Statement: $r5 = $r4[i0] 
(assert true)
(define-const var719 String (append/1560614132 var2262 var3674)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2262!1 String)
(assert (str.prefixof var2262 var2262!1))
(assert true)
;(assert (append/1183289509 var719 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var719!1 String)
(declare-const var3028 Int)
(define-const var3864 var252 (text/-10557480 (cast-from-var3358-to-var3400 var2729))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3495 String (buf/-10557480 (cast-from-var3358-to-var3400 var2729))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2499 String (toString/-222306083 var3495)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var252_add/328494887 var3864 (cast-from-String-to-var2027 var2499))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var3864!1 var252)
(declare-const var2499!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3358-to-var3400=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var252_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2027=([java.lang.String], java.lang.Object)}
; {var3358=jdk.internal.org.objectweb.asm.util.Textifier, var2729=r0, var1512=i0, var3400=jdk.internal.org.objectweb.asm.util.Printer, var3943=$r1, var1435=0, var1628=$r3, var490=$r2, var2262=$r6, var672=$r4, var3674=$r5, var719=$r7, var3028=10, var252=java.util.List, var3864=$r9, var3495=$r8, var2499=$r10, var2027=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3358, r0=var2729, i0=var1512, jdk.internal.org.objectweb.asm.util.Printer=var3400, $r1=var3943, 0=var1435, $r3=var1628, $r2=var490, $r6=var2262, $r4=var672, $r5=var3674, $r7=var719, 10=var3028, java.util.List=var252, $r9=var3864, $r8=var3495, $r10=var2499, java.lang.Object=var2027}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = <jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String[] OPCODES>;	$r5 = $r4[i0];	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	return
;block_num 1