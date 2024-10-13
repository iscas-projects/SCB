(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3713 0)
(declare-sort var1754 0)
(declare-sort var2503 0)
(declare-sort var676 0)
(declare-sort var725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2503) String)
(declare-fun cast-from-var3713-to-var2503 (var3713) var2503)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun valueNumber/-788090934 (var3713) Int)
(declare-fun appendComa/-337716018 (var3713 Int) void)
(declare-fun appendDescriptor/199836990 (var3713 Int String) void)
(declare-fun append/1183289509 (String Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var2503) var676)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var676_add/328494887 (var676 var725) Bool)
(declare-fun cast-from-String-to-var725 (String) var725)
(declare-const null-var3713 var3713)
(declare-const null-String String)
(declare-const var1018 var3713) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1018 null-var3713)))
(declare-const var1155 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1155 null-String)))
(declare-const var2809 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2809 null-String)))
(declare-const var3747 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3747 null-String)))
(define-const var3631 String (buf/-10557480 (cast-from-var3713-to-var2503 var1018))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3631 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3631!1 String)
(declare-const var132 Int)
(define-const var1960 Int (valueNumber/-788090934 var1018)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> 
(define-const var2860 Int (+ var1960 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1018!1 var3713)
(assert (not (= var1018!1 null-var3713)))
(assert (= (valueNumber/-788090934 var1018!1) var2860)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1 
(assert true)
;(assert (appendComa/-337716018 var1018!1 var1960)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0) 

(declare-const var1018!2 var3713)
(declare-const var1960!1 Int)
 ; Statement: if r2 == null goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r3) 
(assert (= var1155 null-String)) ; Cond: r2 == null 
(assert true)
;(assert (appendDescriptor/199836990 var1018!2 1 var2809)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r3) 

(declare-const var1018!3 var3713)
(declare-const var939 Int)
(declare-const var2809!1 String)
(define-const var3415 String (buf/-10557480 (cast-from-var3713-to-var2503 var1018!3))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var334 String (append/1183289509 var3415 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 
(assert true)
;(assert (append/1560614132 var334 var3747)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var334!1 String)
(assert (str.prefixof var334 var334!1))
(define-const var3436 var676 (text/-10557480 (cast-from-var3713-to-var2503 var1018!3))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2485 String (buf/-10557480 (cast-from-var3713-to-var2503 var1018!3))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3628 String (toString/-222306083 var2485)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var676_add/328494887 var3436 (cast-from-String-to-var725 var3628))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var3436!1 var676)
(declare-const var3628!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3713-to-var2503=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), valueNumber/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), appendComa/-337716018=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var676_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var725=([java.lang.String], java.lang.Object)}
; {var3713=jdk.internal.org.objectweb.asm.util.Textifier, var1018=r0, var1155=r2, var1754=null_type, var2809=r3, var3747=r5, var2503=jdk.internal.org.objectweb.asm.util.Printer, var3631=$r1, var132=0, var1960=$i0, var2860=$i1, var939=1, var3415=$r4, var334=$r6, var676=java.util.List, var3436=$r8, var2485=$r7, var3628=$r9, var725=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3713, r0=var1018, r2=var1155, null_type=var1754, r3=var2809, r5=var3747, jdk.internal.org.objectweb.asm.util.Printer=var2503, $r1=var3631, 0=var132, $i0=var1960, $i1=var2860, 1=var939, $r4=var3415, $r6=var334, java.util.List=var676, $r8=var3436, $r7=var2485, $r9=var3628, java.lang.Object=var725}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber>;	$i1 = $i0 + 1;	r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0);	if r2 == null goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r3);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r3);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	return
;block_num 2