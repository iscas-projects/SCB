(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1940 0)
(declare-sort var670 0)
(declare-sort var716 0)
(declare-sort var3382 0)
(declare-sort var3593 0)
(declare-sort var495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3382) String)
(declare-fun cast-from-var1940-to-var3382 (var1940) var3382)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var1940) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/827185861 (var1940 var670) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var1940 Int String) void)
(declare-fun text/-10557480 (var3382) var3593)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3593_add/328494887 (var3593 var495) Bool)
(declare-fun cast-from-String-to-var495 (String) var495)
(declare-const null-var1940 var1940)
(declare-const null-var670 var670)
(declare-const null-String String)
(declare-const var1420 var1940) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1420 null-var1940)))
(declare-const var1221 var670) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1221 null-var670)))
(declare-const var2515 var670) ; Statement: r7 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var2515 null-var670)))
(declare-const var3631 var670) ; Statement: r9 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3631 null-var670)))
(declare-const var3033 String) ; Statement: r11 := @parameter3: java.lang.String 
(assert (not (= var3033 null-String)))
(define-const var1615 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1615 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1615!1 String)
(declare-const var3700 Int)
(define-const var2052 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var106 String (tab2/-788090934 var1420)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2694 String (append/1560614132 var2052 var106)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2052!1 String)
(assert (str.prefixof var2052 var2052!1))
(assert true)
;(assert (append/1560614132 var2694 "TRYCATCHBLOCK ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK ") 
(declare-const var2694!1 String)
(assert (str.prefixof var2694 var2694!1))
(assert true)
;(assert (appendLabel/827185861 var1420 var1221)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r5) 

(declare-const var1420!1 var1940)
(declare-const var1221!1 var670)
(define-const var1323 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var1323 32)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var1323!1 String)
(declare-const var2867 Int)
(assert true)
;(assert (appendLabel/827185861 var1420!1 var2515)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7) 

(declare-const var1420!2 var1940)
(declare-const var2515!1 var670)
(define-const var295 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420!2))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var295 32)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var295!1 String)
(declare-const var2867!1 Int)
(assert true)
;(assert (appendLabel/827185861 var1420!2 var3631)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9) 

(declare-const var1420!3 var1940)
(declare-const var3631!1 var670)
(define-const var2565 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420!3))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2565 32)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var2565!1 String)
(declare-const var2867!2 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1420!3 0 var3033)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r11) 

(declare-const var1420!4 var1940)
(declare-const var3700!1 Int)
(declare-const var3033!1 String)
(define-const var66 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420!4))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var66 10)) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var66!1 String)
(declare-const var1609 Int)
(define-const var2815 var3593 (text/-10557480 (cast-from-var1940-to-var3382 var1420!4))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3849 String (buf/-10557480 (cast-from-var1940-to-var3382 var1420!4))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1646 String (toString/-222306083 var3849)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3593_add/328494887 var2815 (cast-from-String-to-var495 var1646))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var2815!1 var3593)
(declare-const var1646!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1940-to-var3382=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3593_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var495=([java.lang.String], java.lang.Object)}
; {var1940=jdk.internal.org.objectweb.asm.util.Textifier, var1420=r0, var670=jdk.internal.org.objectweb.asm.Label, var1221=r5, var2515=r7, var3631=r9, var3033=r11, var716=null_type, var3382=jdk.internal.org.objectweb.asm.util.Printer, var1615=$r1, var3700=0, var2052=$r3, var106=$r2, var2694=$r4, var1323=$r6, var2867=32, var295=$r8, var2565=$r10, var66=$r12, var1609=10, var3593=java.util.List, var2815=$r14, var3849=$r13, var1646=$r15, var495=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1940, r0=var1420, jdk.internal.org.objectweb.asm.Label=var670, r5=var1221, r7=var2515, r9=var3631, r11=var3033, null_type=var716, jdk.internal.org.objectweb.asm.util.Printer=var3382, $r1=var1615, 0=var3700, $r3=var2052, $r2=var106, $r4=var2694, $r6=var1323, 32=var2867, $r8=var295, $r10=var2565, $r12=var66, 10=var1609, java.util.List=var3593, $r14=var2815, $r13=var3849, $r15=var1646, java.lang.Object=var495}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r7 := @parameter1: jdk.internal.org.objectweb.asm.Label;	r9 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r11 := @parameter3: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("TRYCATCHBLOCK ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	return
;block_num 1