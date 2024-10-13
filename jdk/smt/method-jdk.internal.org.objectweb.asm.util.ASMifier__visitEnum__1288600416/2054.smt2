(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort var402 0)
(declare-sort var650 0)
(declare-sort var2405 0)
(declare-sort var1030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var650) String)
(declare-fun cast-from-var750-to-var650 (var750) var650)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1045876480 (var750) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun var750_appendConstant/-411616465 (String var2405) void)
(declare-fun cast-from-String-to-var2405 (String) var2405)
(declare-fun text/-10557480 (var650) var1030)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1030_add/328494887 (var1030 var2405) Bool)
(declare-const null-var750 var750)
(declare-const null-String String)
(declare-const var3631 var750) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3631 null-var750)))
(declare-const var1729 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1729 null-String)))
(declare-const var2269 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2269 null-String)))
(declare-const var3069 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var3069 null-String)))
(define-const var3678 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3678 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3678!1 String)
(declare-const var1389 Int)
(define-const var978 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var593 String (append/1560614132 var978 "av")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av") 
(declare-const var978!1 String)
(assert (str.prefixof var978 var978!1))
(define-const var2413 Int (id/1045876480 var3631)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(assert true)
(define-const var1045 String (append/1845021834 var593 var2413)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
;(assert (append/1560614132 var1045 ".visitEnum(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnum(") 
(declare-const var1045!1 String)
(assert (str.prefixof var1045 var1045!1))
(define-const var1335 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var750_appendConstant/-411616465 var1335 (cast-from-String-to-var2405 var1729))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r6, r5) 

(declare-const var1335!1 String)
(declare-const var1729!1 String)
(define-const var3553 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3553 ", ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3553!1 String)
(assert (str.prefixof var3553 var3553!1))
(define-const var3229 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var750_appendConstant/-411616465 var3229 (cast-from-String-to-var2405 var2269))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8) 

(declare-const var3229!1 String)
(declare-const var2269!1 String)
(define-const var1634 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1634 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1634!1 String)
(assert (str.prefixof var1634 var1634!1))
(define-const var12 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var750_appendConstant/-411616465 var12 (cast-from-String-to-var2405 var3069))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r12, r11) 

(declare-const var12!1 String)
(declare-const var3069!1 String)
(define-const var680 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var680 ");\n")) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var680!1 String)
(assert (str.prefixof var680 var680!1))
(define-const var2621 var1030 (text/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var833 String (buf/-10557480 (cast-from-var750-to-var650 var3631))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1430 String (toString/-222306083 var833)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1030_add/328494887 var2621 (cast-from-String-to-var2405 var1430))) ; Statement: interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16) 

(declare-const var2621!1 var1030)
(declare-const var1430!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var750-to-var650=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), id/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), var750_appendConstant/-411616465=([java.lang.StringBuffer, java.lang.Object], void), cast-from-String-to-var2405=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1030_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var750=jdk.internal.org.objectweb.asm.util.ASMifier, var3631=r0, var1729=r5, var402=null_type, var2269=r8, var3069=r11, var650=jdk.internal.org.objectweb.asm.util.Printer, var3678=$r1, var1389=0, var978=$r2, var593=$r3, var2413=$i0, var1045=$r4, var1335=$r6, var2405=java.lang.Object, var3553=$r7, var3229=$r9, var1634=$r10, var12=$r12, var680=$r13, var1030=java.util.List, var2621=$r15, var833=$r14, var1430=$r16}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var750, r0=var3631, r5=var1729, null_type=var402, r8=var2269, r11=var3069, jdk.internal.org.objectweb.asm.util.Printer=var650, $r1=var3678, 0=var1389, $r2=var978, $r3=var593, $i0=var2413, $r4=var1045, $r6=var1335, java.lang.Object=var2405, $r7=var3553, $r9=var3229, $r10=var1634, $r12=var12, $r13=var680, java.util.List=var1030, $r15=var2621, $r14=var833, $r16=var1430}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av");	$i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnum(");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r6, r5);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r12, r11);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16);	return
;block_num 1