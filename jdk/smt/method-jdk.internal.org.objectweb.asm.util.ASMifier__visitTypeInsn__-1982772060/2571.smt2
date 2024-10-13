(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3239 0)
(declare-sort var1043 0)
(declare-sort var74 0)
(declare-sort var2663 0)
(declare-sort var1772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var74) String)
(declare-fun cast-from-var3239-to-var74 (var3239) var74)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var3239) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var3239 var2663) void)
(declare-fun cast-from-String-to-var2663 (String) var2663)
(declare-fun text/-10557480 (var74) var1772)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1772_add/328494887 (var1772 var2663) Bool)
(declare-const null-var3239 var3239)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3239-OPCODES (Array Int String))
(declare-const var1531 var3239) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1531 null-var3239)))
(declare-const var888 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var888 null-Int)))
(declare-const var1669 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1669 null-String)))
(define-const var734 String (buf/-10557480 (cast-from-var3239-to-var74 var1531))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var734 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var734!1 String)
(declare-const var2944 Int)
(define-const var535 String (buf/-10557480 (cast-from-var3239-to-var74 var1531))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1230 String (name/1045876480 var1531)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var491 String (append/1560614132 var535 var1230)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var535!1 String)
(assert (str.prefixof var535 var535!1))
(assert true)
(define-const var79 String (append/1560614132 var491 ".visitTypeInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTypeInsn(") 
(declare-const var491!1 String)
(assert (str.prefixof var491 var491!1))
(define-const var1002 (Array Int String) var3239-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var2427 String (select var1002 var888)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var2110 String (append/1560614132 var79 var2427)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var79!1 String)
(assert (str.prefixof var79 var79!1))
(assert true)
;(assert (append/1560614132 var2110 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2110!1 String)
(assert (str.prefixof var2110 var2110!1))
(assert true)
;(assert (appendConstant/2119113448 var1531 (cast-from-String-to-var2663 var1669))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var1531!1 var3239)
(declare-const var1669!1 String)
(define-const var260 String (buf/-10557480 (cast-from-var3239-to-var74 var1531!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var260 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var260!1 String)
(assert (str.prefixof var260 var260!1))
(define-const var3260 var1772 (text/-10557480 (cast-from-var3239-to-var74 var1531!1))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var992 String (buf/-10557480 (cast-from-var3239-to-var74 var1531!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1283 String (toString/-222306083 var992)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1772_add/328494887 var3260 (cast-from-String-to-var2663 var1283))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var3260!1 var1772)
(declare-const var1283!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3239-to-var74=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2663=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1772_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var3239=jdk.internal.org.objectweb.asm.util.ASMifier, var1531=r0, var888=i0, var1669=r9, var1043=null_type, var74=jdk.internal.org.objectweb.asm.util.Printer, var734=$r1, var2944=0, var535=$r3, var1230=$r2, var491=$r4, var79=$r7, var1002=$r5, var2427=$r6, var2110=$r8, var2663=java.lang.Object, var260=$r10, var1772=java.util.List, var3260=$r12, var992=$r11, var1283=$r13}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3239, r0=var1531, i0=var888, r9=var1669, null_type=var1043, jdk.internal.org.objectweb.asm.util.Printer=var74, $r1=var734, 0=var2944, $r3=var535, $r2=var1230, $r4=var491, $r7=var79, $r5=var1002, $r6=var2427, $r8=var2110, java.lang.Object=var2663, $r10=var260, java.util.List=var1772, $r12=var3260, $r11=var992, $r13=var1283}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTypeInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 1