(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2281 0)
(declare-sort var3498 0)
(declare-sort var983 0)
(declare-sort var1390 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3498) String)
(declare-fun cast-from-var2281-to-var3498 (var2281) var3498)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2281) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun text/-10557480 (var3498) var983)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var983_add/328494887 (var983 var1390) Bool)
(declare-fun cast-from-String-to-var1390 (String) var1390)
(declare-const null-var2281 var2281)
(declare-const null-Int Int)
(declare-const var2281-OPCODES (Array Int String))
(declare-const var3665 var2281) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3665 null-var2281)))
(declare-const var1042 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1042 null-Int)))
(declare-const var650 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var650 null-Int)))
(define-const var2252 String (buf/-10557480 (cast-from-var2281-to-var3498 var3665))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2252 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2252!1 String)
(declare-const var2359 Int)
(define-const var1347 String (buf/-10557480 (cast-from-var2281-to-var3498 var3665))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1956 String (name/1045876480 var3665)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var3775 String (append/1560614132 var1347 var1956)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1347!1 String)
(assert (str.prefixof var1347 var1347!1))
(assert true)
(define-const var185 String (append/1560614132 var3775 ".visitIntInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIntInsn(") 
(declare-const var3775!1 String)
(assert (str.prefixof var3775 var3775!1))
(define-const var22 (Array Int String) var2281-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var1616 String (select var22 var1042)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var3290 String (append/1560614132 var185 var1616)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var185!1 String)
(assert (str.prefixof var185 var185!1))
(assert true)
(define-const var2941 String (append/1560614132 var3290 ", ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3290!1 String)
(assert (str.prefixof var3290 var3290!1))
 ; Statement: if i0 != 188 goto $r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (= var1042 188))) ; Cond: i0 != 188 
(define-const var3510 String (Int_toString/1350422511 var650)) ; Statement: $r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert true) ; Non Conditional
(assert true)
(define-const var348 String (append/1560614132 var2941 var3510)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15) 
(declare-const var2941!1 String)
(assert (str.prefixof var2941 var2941!1))
(assert true)
;(assert (append/1560614132 var348 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var348!1 String)
(assert (str.prefixof var348 var348!1))
(define-const var950 var983 (text/-10557480 (cast-from-var2281-to-var3498 var3665))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var8 String (buf/-10557480 (cast-from-var2281-to-var3498 var3665))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1083 String (toString/-222306083 var8)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var983_add/328494887 var950 (cast-from-String-to-var1390 var1083))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var950!1 var983)
(declare-const var1083!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2281-to-var3498=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), Int_toString/1350422511=([int], java.lang.String), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var983_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1390=([java.lang.String], java.lang.Object)}
; {var2281=jdk.internal.org.objectweb.asm.util.ASMifier, var3665=r0, var1042=i0, var650=i1, var3498=jdk.internal.org.objectweb.asm.util.Printer, var2252=$r1, var2359=0, var1347=$r3, var1956=$r2, var3775=$r4, var185=$r7, var22=$r5, var1616=$r6, var3290=$r8, var2941=$r9, var3510=$r15, var348=$r10, var983=java.util.List, var950=$r12, var8=$r11, var1083=$r13, var1390=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2281, r0=var3665, i0=var1042, i1=var650, jdk.internal.org.objectweb.asm.util.Printer=var3498, $r1=var2252, 0=var2359, $r3=var1347, $r2=var1956, $r4=var3775, $r7=var185, $r5=var22, $r6=var1616, $r8=var3290, $r9=var2941, $r15=var3510, $r10=var348, java.util.List=var983, $r12=var950, $r11=var8, $r13=var1083, java.lang.Object=var1390}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitIntInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if i0 != 188 goto $r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r15 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15);	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 3