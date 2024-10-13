(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3014 0)
(declare-sort var564 0)
(declare-sort var2792 0)
(declare-sort var1745 0)
(declare-sort var974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2792) String)
(declare-fun cast-from-var3014-to-var2792 (var3014) var2792)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun declareLabel/-244488941 (var3014 var564) void)
(declare-fun name/1045876480 (var3014) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/937164375 (var3014 var564) void)
(declare-fun text/-10557480 (var2792) var1745)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1745_add/328494887 (var1745 var974) Bool)
(declare-fun cast-from-String-to-var974 (String) var974)
(declare-const null-var3014 var3014)
(declare-const null-Int Int)
(declare-const null-var564 var564)
(declare-const var3014-OPCODES (Array Int String))
(declare-const var435 var3014) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var435 null-var3014)))
(declare-const var3388 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3388 null-Int)))
(declare-const var1871 var564) ; Statement: r2 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1871 null-var564)))
(define-const var541 String (buf/-10557480 (cast-from-var3014-to-var2792 var435))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var541 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var541!1 String)
(declare-const var3561 Int)
(assert true)
;(assert (declareLabel/-244488941 var435 var1871)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var435!1 var3014)
(declare-const var1871!1 var564)
(define-const var2687 String (buf/-10557480 (cast-from-var3014-to-var2792 var435!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3574 String (name/1045876480 var435!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var3051 String (append/1560614132 var2687 var3574)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2687!1 String)
(assert (str.prefixof var2687 var2687!1))
(assert true)
(define-const var1619 String (append/1560614132 var3051 ".visitJumpInsn(")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitJumpInsn(") 
(declare-const var3051!1 String)
(assert (str.prefixof var3051 var3051!1))
(define-const var3894 (Array Int String) var3014-OPCODES) ; Statement: $r6 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var1275 String (select var3894 var3388)) ; Statement: $r7 = $r6[i0] 
(assert true)
(define-const var1815 String (append/1560614132 var1619 var1275)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var1619!1 String)
(assert (str.prefixof var1619 var1619!1))
(assert true)
;(assert (append/1560614132 var1815 ", ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1815!1 String)
(assert (str.prefixof var1815 var1815!1))
(assert true)
;(assert (appendLabel/937164375 var435!1 var1871!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var435!2 var3014)
(declare-const var1871!2 var564)
(define-const var156 String (buf/-10557480 (cast-from-var3014-to-var2792 var435!2))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var156 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var156!1 String)
(assert (str.prefixof var156 var156!1))
(define-const var3757 var1745 (text/-10557480 (cast-from-var3014-to-var2792 var435!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var421 String (buf/-10557480 (cast-from-var3014-to-var2792 var435!2))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3542 String (toString/-222306083 var421)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1745_add/328494887 var3757 (cast-from-String-to-var974 var3542))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var3757!1 var1745)
(declare-const var3542!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3014-to-var2792=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), declareLabel/-244488941=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1745_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var974=([java.lang.String], java.lang.Object)}
; {var3014=jdk.internal.org.objectweb.asm.util.ASMifier, var435=r0, var3388=i0, var564=jdk.internal.org.objectweb.asm.Label, var1871=r2, var2792=jdk.internal.org.objectweb.asm.util.Printer, var541=$r1, var3561=0, var2687=$r4, var3574=$r3, var3051=$r5, var1619=$r8, var3894=$r6, var1275=$r7, var1815=$r9, var156=$r10, var1745=java.util.List, var3757=$r12, var421=$r11, var3542=$r13, var974=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3014, r0=var435, i0=var3388, jdk.internal.org.objectweb.asm.Label=var564, r2=var1871, jdk.internal.org.objectweb.asm.util.Printer=var2792, $r1=var541, 0=var3561, $r4=var2687, $r3=var3574, $r5=var3051, $r8=var1619, $r6=var3894, $r7=var1275, $r9=var1815, $r10=var156, java.util.List=var1745, $r12=var3757, $r11=var421, $r13=var3542, java.lang.Object=var974}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r2 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitJumpInsn(");	$r6 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r7 = $r6[i0];	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 1