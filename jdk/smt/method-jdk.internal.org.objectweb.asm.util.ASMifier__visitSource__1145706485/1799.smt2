(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2704 0)
(declare-sort var220 0)
(declare-sort var1044 0)
(declare-sort var2341 0)
(declare-sort var1665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1044) String)
(declare-fun cast-from-var2704-to-var1044 (var2704) var1044)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var2704 var2341) void)
(declare-fun cast-from-String-to-var2341 (String) var2341)
(declare-fun text/-10557480 (var1044) var1665)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1665_add/328494887 (var1665 var2341) Bool)
(declare-const null-var2704 var2704)
(declare-const null-String String)
(declare-const var26 var2704) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var26 null-var2704)))
(declare-const var2994 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2994 null-String)))
(declare-const var2281 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2281 null-String)))
(define-const var1622 String (buf/-10557480 (cast-from-var2704-to-var1044 var26))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1622 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1622!1 String)
(declare-const var805 Int)
(define-const var2045 String (buf/-10557480 (cast-from-var2704-to-var1044 var26))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2045 "cw.visitSource(")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitSource(") 
(declare-const var2045!1 String)
(assert (str.prefixof var2045 var2045!1))
(assert true)
;(assert (appendConstant/2119113448 var26 (cast-from-String-to-var2341 var2994))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3) 

(declare-const var26!1 var2704)
(declare-const var2994!1 String)
(define-const var2990 String (buf/-10557480 (cast-from-var2704-to-var1044 var26!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2990 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2990!1 String)
(assert (str.prefixof var2990 var2990!1))
(assert true)
;(assert (appendConstant/2119113448 var26!1 (cast-from-String-to-var2341 var2281))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var26!2 var2704)
(declare-const var2281!1 String)
(define-const var234 String (buf/-10557480 (cast-from-var2704-to-var1044 var26!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var234 ");\n\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var234!1 String)
(assert (str.prefixof var234 var234!1))
(define-const var824 var1665 (text/-10557480 (cast-from-var2704-to-var1044 var26!2))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3165 String (buf/-10557480 (cast-from-var2704-to-var1044 var26!2))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2035 String (toString/-222306083 var3165)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1665_add/328494887 var824 (cast-from-String-to-var2341 var2035))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var824!1 var1665)
(declare-const var2035!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2704-to-var1044=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2341=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1665_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var2704=jdk.internal.org.objectweb.asm.util.ASMifier, var26=r0, var2994=r3, var220=null_type, var2281=r5, var1044=jdk.internal.org.objectweb.asm.util.Printer, var1622=$r1, var805=0, var2045=$r2, var2341=java.lang.Object, var2990=$r4, var234=$r6, var1665=java.util.List, var824=$r8, var3165=$r7, var2035=$r9}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2704, r0=var26, r3=var2994, null_type=var220, r5=var2281, jdk.internal.org.objectweb.asm.util.Printer=var1044, $r1=var1622, 0=var805, $r2=var2045, java.lang.Object=var2341, $r4=var2990, $r6=var234, java.util.List=var1665, $r8=var824, $r7=var3165, $r9=var2035}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitSource(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	return
;block_num 1