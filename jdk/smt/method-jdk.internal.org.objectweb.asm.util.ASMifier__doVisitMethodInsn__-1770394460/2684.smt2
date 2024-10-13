(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var2498 0)
(declare-sort var2237 0)
(declare-sort var2541 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2237) String)
(declare-fun cast-from-var1234-to-var2237 (var1234) var2237)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var1234) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var1234 var2541) void)
(declare-fun cast-from-String-to-var2541 (String) var2541)
(declare-fun text/-10557480 (var2237) var3960)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3960_add/328494887 (var3960 var2541) Bool)
(declare-const null-var1234 var1234)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1234-OPCODES (Array Int String))
(declare-const var2048 var1234) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2048 null-var1234)))
(declare-const var3165 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3165 null-Int)))
(declare-const var716 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var716 null-String)))
(declare-const var1307 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1307 null-String)))
(declare-const var3363 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var3363 null-String)))
(declare-const var2510 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2510 null-Bool)))
(define-const var1534 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1534 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1534!1 String)
(declare-const var1566 Int)
(define-const var758 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2806 String (name/1045876480 var2048)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var696 String (append/1560614132 var758 var2806)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var758!1 String)
(assert (str.prefixof var758 var758!1))
(assert true)
(define-const var3148 String (append/1560614132 var696 ".visitMethodInsn(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMethodInsn(") 
(declare-const var696!1 String)
(assert (str.prefixof var696 var696!1))
(define-const var149 (Array Int String) var1234-OPCODES) ; Statement: $r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES> 
(define-const var2183 String (select var149 var3165)) ; Statement: $r6 = $r5[i0] 
(assert true)
(define-const var2681 String (append/1560614132 var3148 var2183)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var3148!1 String)
(assert (str.prefixof var3148 var3148!1))
(assert true)
;(assert (append/1560614132 var2681 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2681!1 String)
(assert (str.prefixof var2681 var2681!1))
(assert true)
;(assert (appendConstant/2119113448 var2048 (cast-from-String-to-var2541 var716))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var2048!1 var1234)
(declare-const var716!1 String)
(define-const var2028 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2028 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2028!1 String)
(assert (str.prefixof var2028 var2028!1))
(assert true)
;(assert (appendConstant/2119113448 var2048!1 (cast-from-String-to-var2541 var1307))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11) 

(declare-const var2048!2 var1234)
(declare-const var1307!1 String)
(define-const var77 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var77 ", ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var77!1 String)
(assert (str.prefixof var77 var77!1))
(assert true)
;(assert (appendConstant/2119113448 var2048!2 (cast-from-String-to-var2541 var3363))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13) 

(declare-const var2048!3 var1234)
(declare-const var3363!1 String)
(define-const var1006 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!3))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1006 ", ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1006!1 String)
(assert (str.prefixof var1006 var1006!1))
(define-const var3770 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!3))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
 ; Statement: if z0 == 0 goto $r20 = "false" 
(assert (not (= (ite var2510 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2224 String "true") ; Statement: $r20 = "true" 
 ; Statement: goto [?= virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1560614132 var3770 var2224)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3770!1 String)
(assert (str.prefixof var3770 var3770!1))
(define-const var350 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!3))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var350 ");\n")) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var350!1 String)
(assert (str.prefixof var350 var350!1))
(define-const var133 var3960 (text/-10557480 (cast-from-var1234-to-var2237 var2048!3))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var213 String (buf/-10557480 (cast-from-var1234-to-var2237 var2048!3))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var935 String (toString/-222306083 var213)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3960_add/328494887 var133 (cast-from-String-to-var2541 var935))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var133!1 var3960)
(declare-const var935!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1234-to-var2237=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2541=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3960_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var1234=jdk.internal.org.objectweb.asm.util.ASMifier, var2048=r0, var3165=i0, var716=r9, var2498=null_type, var1307=r11, var3363=r13, var2510=z0, var2237=jdk.internal.org.objectweb.asm.util.Printer, var1534=$r1, var1566=0, var758=$r3, var2806=$r2, var696=$r4, var3148=$r7, var149=$r5, var2183=$r6, var2681=$r8, var2541=java.lang.Object, var2028=$r10, var77=$r12, var1006=$r14, var3770=$r15, var2224=$r20, var350=$r16, var3960=java.util.List, var133=$r18, var213=$r17, var935=$r19}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1234, r0=var2048, i0=var3165, r9=var716, null_type=var2498, r11=var1307, r13=var3363, z0=var2510, jdk.internal.org.objectweb.asm.util.Printer=var2237, $r1=var1534, 0=var1566, $r3=var758, $r2=var2806, $r4=var696, $r7=var3148, $r5=var149, $r6=var2183, $r8=var2681, java.lang.Object=var2541, $r10=var2028, $r12=var77, $r14=var1006, $r15=var3770, $r20=var2224, $r16=var350, java.util.List=var3960, $r18=var133, $r17=var213, $r19=var935}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMethodInsn(");	$r5 = <jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String[] OPCODES>;	$r6 = $r5[i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	if z0 == 0 goto $r20 = "false";	$r20 = "true";	goto [?= virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20)];	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 3