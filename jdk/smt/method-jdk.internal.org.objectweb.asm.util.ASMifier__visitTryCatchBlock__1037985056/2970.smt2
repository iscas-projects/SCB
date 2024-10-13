(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var875 0)
(declare-sort var1245 0)
(declare-sort var1205 0)
(declare-sort var1756 0)
(declare-sort var365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1205) String)
(declare-fun cast-from-var1717-to-var1205 (var1717) var1205)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun declareLabel/-244488941 (var1717 var875) void)
(declare-fun name/1045876480 (var1717) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/937164375 (var1717 var875) void)
(declare-fun appendConstant/2119113448 (var1717 var1756) void)
(declare-fun cast-from-String-to-var1756 (String) var1756)
(declare-fun text/-10557480 (var1205) var365)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var365_add/328494887 (var365 var1756) Bool)
(declare-const null-var1717 var1717)
(declare-const null-var875 var875)
(declare-const null-String String)
(declare-const var3855 var1717) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3855 null-var1717)))
(declare-const var402 var875) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var402 null-var875)))
(declare-const var3261 var875) ; Statement: r3 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3261 null-var875)))
(declare-const var1953 var875) ; Statement: r4 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1953 null-var875)))
(declare-const var3911 String) ; Statement: r11 := @parameter3: java.lang.String 
(assert (not (= var3911 null-String)))
(define-const var2767 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2767 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2767!1 String)
(declare-const var1987 Int)
(assert true)
;(assert (declareLabel/-244488941 var3855 var402)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var3855!1 var1717)
(declare-const var402!1 var875)
(assert true)
;(assert (declareLabel/-244488941 var3855!1 var3261)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var3855!2 var1717)
(declare-const var3261!1 var875)
(assert true)
;(assert (declareLabel/-244488941 var3855!2 var1953)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r4) 

(declare-const var3855!3 var1717)
(declare-const var1953!1 var875)
(define-const var3114 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!3))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2863 String (name/1045876480 var3855!3)) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var62 String (append/1560614132 var3114 var2863)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3114!1 String)
(assert (str.prefixof var3114 var3114!1))
(assert true)
;(assert (append/1560614132 var62 ".visitTryCatchBlock(")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTryCatchBlock(") 
(declare-const var62!1 String)
(assert (str.prefixof var62 var62!1))
(assert true)
;(assert (appendLabel/937164375 var3855!3 var402!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var3855!4 var1717)
(declare-const var402!2 var875)
(define-const var1255 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!4))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1255 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1255!1 String)
(assert (str.prefixof var1255 var1255!1))
(assert true)
;(assert (appendLabel/937164375 var3855!4 var3261!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var3855!5 var1717)
(declare-const var3261!2 var875)
(define-const var2598 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!5))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2598 ", ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2598!1 String)
(assert (str.prefixof var2598 var2598!1))
(assert true)
;(assert (appendLabel/937164375 var3855!5 var1953!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r4) 

(declare-const var3855!6 var1717)
(declare-const var1953!2 var875)
(define-const var3405 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!6))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3405 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3405!1 String)
(assert (str.prefixof var3405 var3405!1))
(assert true)
;(assert (appendConstant/2119113448 var3855!6 (cast-from-String-to-var1756 var3911))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11) 

(declare-const var3855!7 var1717)
(declare-const var3911!1 String)
(define-const var2756 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!7))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2756 ");\n")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2756!1 String)
(assert (str.prefixof var2756 var2756!1))
(define-const var1006 var365 (text/-10557480 (cast-from-var1717-to-var1205 var3855!7))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var33 String (buf/-10557480 (cast-from-var1717-to-var1205 var3855!7))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2188 String (toString/-222306083 var33)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var365_add/328494887 var1006 (cast-from-String-to-var1756 var2188))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var1006!1 var365)
(declare-const var2188!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1717-to-var1205=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), declareLabel/-244488941=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var1756=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var365_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var1717=jdk.internal.org.objectweb.asm.util.ASMifier, var3855=r0, var875=jdk.internal.org.objectweb.asm.Label, var402=r2, var3261=r3, var1953=r4, var3911=r11, var1245=null_type, var1205=jdk.internal.org.objectweb.asm.util.Printer, var2767=$r1, var1987=0, var3114=$r6, var2863=$r5, var62=$r7, var1255=$r8, var2598=$r9, var3405=$r10, var1756=java.lang.Object, var2756=$r12, var365=java.util.List, var1006=$r14, var33=$r13, var2188=$r15}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1717, r0=var3855, jdk.internal.org.objectweb.asm.Label=var875, r2=var402, r3=var3261, r4=var1953, r11=var3911, null_type=var1245, jdk.internal.org.objectweb.asm.util.Printer=var1205, $r1=var2767, 0=var1987, $r6=var3114, $r5=var2863, $r7=var62, $r8=var1255, $r9=var2598, $r10=var3405, java.lang.Object=var1756, $r12=var2756, java.util.List=var365, $r14=var1006, $r13=var33, $r15=var2188}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r2 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r3 := @parameter1: jdk.internal.org.objectweb.asm.Label;	r4 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r11 := @parameter3: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r4);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTryCatchBlock(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r4);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	return
;block_num 1