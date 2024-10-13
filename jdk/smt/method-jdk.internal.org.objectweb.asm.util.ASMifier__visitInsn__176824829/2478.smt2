(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2067 0)
(declare-sort var3524 0)
(declare-sort var841 0)
(declare-sort var75 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3524) String)
(declare-fun cast-from-var2067-to-var3524 (var2067) var3524)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2067) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var3524) var841)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var841_add/328494887 (var841 var75) Bool)
(declare-fun cast-from-String-to-var75 (String) var75)
(declare-const null-var2067 var2067)
(declare-const null-Int Int)
(declare-const var2067-OPCODES (Array Int String))
(declare-const var3463 var2067) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3463 null-var2067)))
(declare-const var3169 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3169 null-Int)))
(define-const var1563 String (buf/-10557480 (cast-from-var2067-to-var3524 var3463))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1563 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1563!1 String)
(declare-const var603 Int)
(define-const var2770 String (buf/-10557480 (cast-from-var2067-to-var3524 var3463))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var123 String (name/1045876480 var3463)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1713 String (append/1560614132 var2770 var123)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2770!1 String)
(assert (str.prefixof var2770 var2770!1))
(assert true)
(define-const var1103 String (append/1560614132 var1713 ".visitInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitInsn(") 
(declare-const var1713!1 String)
(assert (str.prefixof var1713 var1713!1))
(define-const var3014 (Array Int String) var2067-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var2744 String (select var3014 var3169)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var2666 String (append/1560614132 var1103 var2744)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1103!1 String)
(assert (str.prefixof var1103 var1103!1))
(assert true)
;(assert (append/1560614132 var2666 ");\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2666!1 String)
(assert (str.prefixof var2666 var2666!1))
(define-const var2300 var841 (text/-10557480 (cast-from-var2067-to-var3524 var3463))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2080 String (buf/-10557480 (cast-from-var2067-to-var3524 var3463))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var454 String (toString/-222306083 var2080)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var841_add/328494887 var2300 (cast-from-String-to-var75 var454))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var2300!1 var841)
(declare-const var454!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2067-to-var3524=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var841_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var75=([java.lang.String], java.lang.Object)}
; {var2067=jdk.internal.org.objectweb.asm.util.ASMifier, var3463=r0, var3169=i0, var3524=jdk.internal.org.objectweb.asm.util.Printer, var1563=$r1, var603=0, var2770=$r3, var123=$r2, var1713=$r4, var1103=$r7, var3014=$r5, var2744=$r6, var2666=$r8, var841=java.util.List, var2300=$r10, var2080=$r9, var454=$r11, var75=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2067, r0=var3463, i0=var3169, jdk.internal.org.objectweb.asm.util.Printer=var3524, $r1=var1563, 0=var603, $r3=var2770, $r2=var123, $r4=var1713, $r7=var1103, $r5=var3014, $r6=var2744, $r8=var2666, java.util.List=var841, $r10=var2300, $r9=var2080, $r11=var454, java.lang.Object=var75}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1