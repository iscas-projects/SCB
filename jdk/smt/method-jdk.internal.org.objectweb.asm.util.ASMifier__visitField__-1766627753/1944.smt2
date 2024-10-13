(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3854 0)
(declare-sort var273 0)
(declare-sort var833 0)
(declare-sort var577 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var577) String)
(declare-fun cast-from-var3854-to-var577 (var3854) var577)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var3854 Int) void)
(declare-fun appendConstant/2119113448 (var3854 var833) void)
(declare-fun cast-from-String-to-var833 (String) var833)
(declare-fun text/-10557480 (var577) var3791)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3791_add/328494887 (var3791 var833) Bool)
(declare-fun createASMifier/-631099411 (var3854 String Int) var3854)
(declare-fun getText/-142638630 (var577) var3791)
(declare-fun cast-from-var3791-to-var833 (var3791) var833)
(declare-const null-var3854 var3854)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var833 var833)
(declare-const var621 var3854) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var621 null-var3854)))
(declare-const var1023 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1023 null-Int)))
(declare-const var2742 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2742 null-String)))
(declare-const var3504 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var3504 null-String)))
(declare-const var929 String) ; Statement: r9 := @parameter3: java.lang.String 
(assert (not (= var929 null-String)))
(declare-const var2212 var833) ; Statement: r11 := @parameter4: java.lang.Object 
(assert (not (= var2212 null-var833)))
(define-const var572 String (buf/-10557480 (cast-from-var3854-to-var577 var621))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var572 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var572!1 String)
(declare-const var1422 Int)
(define-const var278 String (buf/-10557480 (cast-from-var3854-to-var577 var621))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var278 "{\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var278!1 String)
(assert (str.prefixof var278 var278!1))
(define-const var3808 String (buf/-10557480 (cast-from-var3854-to-var577 var621))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3808 "fv = cw.visitField(")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("fv = cw.visitField(") 
(declare-const var3808!1 String)
(assert (str.prefixof var3808 var3808!1))
(define-const var2312 Int (bv2nat (bvor ((_ int2bv 64) var1023) ((_ int2bv 64) 524288)))) ; Statement: $i1 = i0 | 524288 
(assert true)
;(assert (appendAccess/732682052 var621 var2312)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i1) 

(declare-const var621!1 var3854)
(declare-const var2312!1 Int)
(define-const var3778 String (buf/-10557480 (cast-from-var3854-to-var577 var621!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3778 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3778!1 String)
(assert (str.prefixof var3778 var3778!1))
(assert true)
;(assert (appendConstant/2119113448 var621!1 (cast-from-String-to-var833 var2742))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var621!2 var3854)
(declare-const var2742!1 String)
(define-const var3820 String (buf/-10557480 (cast-from-var3854-to-var577 var621!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3820 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3820!1 String)
(assert (str.prefixof var3820 var3820!1))
(assert true)
;(assert (appendConstant/2119113448 var621!2 (cast-from-String-to-var833 var3504))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var621!3 var3854)
(declare-const var3504!1 String)
(define-const var1209 String (buf/-10557480 (cast-from-var3854-to-var577 var621!3))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1209 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1209!1 String)
(assert (str.prefixof var1209 var1209!1))
(assert true)
;(assert (appendConstant/2119113448 var621!3 (cast-from-String-to-var833 var929))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var621!4 var3854)
(declare-const var929!1 String)
(define-const var3929 String (buf/-10557480 (cast-from-var3854-to-var577 var621!4))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3929 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3929!1 String)
(assert (str.prefixof var3929 var3929!1))
(assert true)
;(assert (appendConstant/2119113448 var621!4 var2212)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11) 

(declare-const var621!5 var3854)
(declare-const var2212!1 var833)
(define-const var3994 String (buf/-10557480 (cast-from-var3854-to-var577 var621!5))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3994 ");\n")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3994!1 String)
(assert (str.prefixof var3994 var3994!1))
(define-const var2815 var3791 (text/-10557480 (cast-from-var3854-to-var577 var621!5))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2244 String (buf/-10557480 (cast-from-var3854-to-var577 var621!5))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var403 String (toString/-222306083 var2244)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3791_add/328494887 var2815 (cast-from-String-to-var833 var403))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var2815!1 var3791)
(declare-const var403!1 String)
(assert true)
(define-const var2862 var3854 (createASMifier/-631099411 var621!5 "fv" 0)) ; Statement: r16 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("fv", 0) 
(define-const var3595 var3791 (text/-10557480 (cast-from-var3854-to-var577 var621!5))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var1638 var3791 (getText/-142638630 (cast-from-var3854-to-var577 var2862))) ; Statement: $r18 = virtualinvoke r16.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var3791_add/328494887 var3595 (cast-from-var3791-to-var833 var1638))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18) 

(declare-const var3595!1 var3791)
(declare-const var1638!1 var3791)
(define-const var244 var3791 (text/-10557480 (cast-from-var3854-to-var577 var621!5))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3791_add/328494887 var244 (cast-from-String-to-var833 "}\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var244!1 var3791)
(declare-const var3977 String)
 ; Statement: return r16 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3854-to-var577=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var833=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3791_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3791-to-var833=([java.util.List], java.lang.Object)}
; {var3854=jdk.internal.org.objectweb.asm.util.ASMifier, var621=r0, var1023=i0, var2742=r5, var273=null_type, var3504=r7, var929=r9, var833=java.lang.Object, var2212=r11, var577=jdk.internal.org.objectweb.asm.util.Printer, var572=$r1, var1422=0, var278=$r2, var3808=$r3, var2312=$i1, var3778=$r4, var3820=$r6, var1209=$r8, var3929=$r10, var3994=$r12, var3791=java.util.List, var2815=$r14, var2244=$r13, var403=$r15, var2862=r16, var3595=$r17, var1638=$r18, var244=$r19, var3977="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3854, r0=var621, i0=var1023, r5=var2742, null_type=var273, r7=var3504, r9=var929, java.lang.Object=var833, r11=var2212, jdk.internal.org.objectweb.asm.util.Printer=var577, $r1=var572, 0=var1422, $r2=var278, $r3=var3808, $i1=var2312, $r4=var3778, $r6=var3820, $r8=var1209, $r10=var3929, $r12=var3994, java.util.List=var3791, $r14=var2815, $r13=var2244, $r15=var403, r16=var2862, $r17=var3595, $r18=var1638, $r19=var244, "}\n"=var3977}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.String;	r11 := @parameter4: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("fv = cw.visitField(");	$i1 = i0 | 524288;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i1);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	r16 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("fv", 0);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r18 = virtualinvoke r16.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18);	$r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r16
;block_num 1