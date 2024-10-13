(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var954 0)
(declare-sort var632 0)
(declare-sort var3023 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var632) String)
(declare-fun cast-from-var522-to-var632 (var522) var632)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var522 var3023) void)
(declare-fun cast-from-String-to-var3023 (String) var3023)
(declare-fun text/-10557480 (var632) var132)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var132_add/328494887 (var132 var3023) Bool)
(declare-const null-var522 var522)
(declare-const null-String String)
(declare-const var2295 var522) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2295 null-var522)))
(declare-const var1823 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1823 null-String)))
(declare-const var3216 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3216 null-String)))
(declare-const var848 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var848 null-String)))
(define-const var1757 String (buf/-10557480 (cast-from-var522-to-var632 var2295))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1757 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1757!1 String)
(declare-const var1999 Int)
(define-const var3242 String (buf/-10557480 (cast-from-var522-to-var632 var2295))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3242 "cw.visitOuterClass(")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitOuterClass(") 
(declare-const var3242!1 String)
(assert (str.prefixof var3242 var3242!1))
(assert true)
;(assert (appendConstant/2119113448 var2295 (cast-from-String-to-var3023 var1823))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3) 

(declare-const var2295!1 var522)
(declare-const var1823!1 String)
(define-const var3148 String (buf/-10557480 (cast-from-var522-to-var632 var2295!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3148 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3148!1 String)
(assert (str.prefixof var3148 var3148!1))
(assert true)
;(assert (appendConstant/2119113448 var2295!1 (cast-from-String-to-var3023 var3216))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var2295!2 var522)
(declare-const var3216!1 String)
(define-const var291 String (buf/-10557480 (cast-from-var522-to-var632 var2295!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var291 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var291!1 String)
(assert (str.prefixof var291 var291!1))
(assert true)
;(assert (appendConstant/2119113448 var2295!2 (cast-from-String-to-var3023 var848))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var2295!3 var522)
(declare-const var848!1 String)
(define-const var321 String (buf/-10557480 (cast-from-var522-to-var632 var2295!3))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var321 ");\n\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var321!1 String)
(assert (str.prefixof var321 var321!1))
(define-const var3230 var132 (text/-10557480 (cast-from-var522-to-var632 var2295!3))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3422 String (buf/-10557480 (cast-from-var522-to-var632 var2295!3))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3552 String (toString/-222306083 var3422)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var132_add/328494887 var3230 (cast-from-String-to-var3023 var3552))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var3230!1 var132)
(declare-const var3552!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var522-to-var632=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var3023=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var132_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var522=jdk.internal.org.objectweb.asm.util.ASMifier, var2295=r0, var1823=r3, var954=null_type, var3216=r5, var848=r7, var632=jdk.internal.org.objectweb.asm.util.Printer, var1757=$r1, var1999=0, var3242=$r2, var3023=java.lang.Object, var3148=$r4, var291=$r6, var321=$r8, var132=java.util.List, var3230=$r10, var3422=$r9, var3552=$r11}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var522, r0=var2295, r3=var1823, null_type=var954, r5=var3216, r7=var848, jdk.internal.org.objectweb.asm.util.Printer=var632, $r1=var1757, 0=var1999, $r2=var3242, java.lang.Object=var3023, $r4=var3148, $r6=var291, $r8=var321, java.util.List=var132, $r10=var3230, $r9=var3422, $r11=var3552}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitOuterClass(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1