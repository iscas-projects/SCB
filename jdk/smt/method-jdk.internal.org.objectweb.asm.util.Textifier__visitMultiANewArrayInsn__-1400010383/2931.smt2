(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort var1134 0)
(declare-sort var573 0)
(declare-sort var3358 0)
(declare-sort var3134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var573) String)
(declare-fun cast-from-var3012-to-var573 (var3012) var573)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3012) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDescriptor/199836990 (var3012 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var573) var3358)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3358_add/328494887 (var3358 var3134) Bool)
(declare-fun cast-from-String-to-var3134 (String) var3134)
(declare-const null-var3012 var3012)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1413 var3012) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1413 null-var3012)))
(declare-const var1334 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1334 null-String)))
(declare-const var3214 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3214 null-Int)))
(define-const var2372 String (buf/-10557480 (cast-from-var3012-to-var573 var1413))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2372 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2372!1 String)
(declare-const var3666 Int)
(define-const var3444 String (buf/-10557480 (cast-from-var3012-to-var573 var1413))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2576 String (tab2/-788090934 var1413)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var1416 String (append/1560614132 var3444 var2576)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3444!1 String)
(assert (str.prefixof var3444 var3444!1))
(assert true)
;(assert (append/1560614132 var1416 "MULTIANEWARRAY ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MULTIANEWARRAY ") 
(declare-const var1416!1 String)
(assert (str.prefixof var1416 var1416!1))
(assert true)
;(assert (appendDescriptor/199836990 var1413 1 var1334)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5) 

(declare-const var1413!1 var3012)
(declare-const var2884 Int)
(declare-const var1334!1 String)
(define-const var3942 String (buf/-10557480 (cast-from-var3012-to-var573 var1413!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3855 String (append/1183289509 var3942 32)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var2739 String (append/1845021834 var3855 var3214)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1183289509 var2739 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2739!1 String)
(declare-const var360 Int)
(define-const var3545 var3358 (text/-10557480 (cast-from-var3012-to-var573 var1413!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1018 String (buf/-10557480 (cast-from-var3012-to-var573 var1413!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1932 String (toString/-222306083 var1018)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3358_add/328494887 var3545 (cast-from-String-to-var3134 var1932))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var3545!1 var3358)
(declare-const var1932!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3012-to-var573=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3358_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3134=([java.lang.String], java.lang.Object)}
; {var3012=jdk.internal.org.objectweb.asm.util.Textifier, var1413=r0, var1334=r5, var1134=null_type, var3214=i0, var573=jdk.internal.org.objectweb.asm.util.Printer, var2372=$r1, var3666=0, var3444=$r3, var2576=$r2, var1416=$r4, var2884=1, var3942=$r6, var3855=$r7, var2739=$r8, var360=10, var3358=java.util.List, var3545=$r10, var1018=$r9, var1932=$r11, var3134=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3012, r0=var1413, r5=var1334, null_type=var1134, i0=var3214, jdk.internal.org.objectweb.asm.util.Printer=var573, $r1=var2372, 0=var3666, $r3=var3444, $r2=var2576, $r4=var1416, 1=var2884, $r6=var3942, $r7=var3855, $r8=var2739, 10=var360, java.util.List=var3358, $r10=var3545, $r9=var1018, $r11=var1932, java.lang.Object=var3134}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MULTIANEWARRAY ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1