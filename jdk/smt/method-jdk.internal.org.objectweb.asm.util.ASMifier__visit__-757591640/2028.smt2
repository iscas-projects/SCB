(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1750 0)
(declare-sort var717 0)
(declare-sort var3196 0)
(declare-sort var1986 0)
(declare-sort var1139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1986) String)
(declare-fun cast-from-var1750-to-var1986 (var1750) var1986)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1045876480 (var1750) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun var1750_appendConstant/-411616465 (String var3196) void)
(declare-fun cast-from-String-to-var3196 (String) var3196)
(declare-fun text/-10557480 (var1986) var1139)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1139_add/328494887 (var1139 var3196) Bool)
(declare-const null-var1750 var1750)
(declare-const null-String String)
(declare-const null-var3196 var3196)
(declare-const var3447 var1750) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3447 null-var1750)))
(declare-const var3152 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3152 null-String)))
(declare-const var2541 var3196) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var2541 null-var3196)))
(define-const var2561 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2561 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2561!1 String)
(declare-const var3627 Int)
(define-const var1851 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3707 String (append/1560614132 var1851 "av")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av") 
(declare-const var1851!1 String)
(assert (str.prefixof var1851 var1851!1))
(define-const var3651 Int (id/1045876480 var3447)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(assert true)
(define-const var3515 String (append/1845021834 var3707 var3651)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
;(assert (append/1560614132 var3515 ".visit(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visit(") 
(declare-const var3515!1 String)
(assert (str.prefixof var3515 var3515!1))
(define-const var1610 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var1750_appendConstant/-411616465 var1610 (cast-from-String-to-var3196 var3152))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r6, r5) 

(declare-const var1610!1 String)
(declare-const var3152!1 String)
(define-const var2764 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2764 ", ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2764!1 String)
(assert (str.prefixof var2764 var2764!1))
(define-const var2979 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var1750_appendConstant/-411616465 var2979 var2541)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8) 

(declare-const var2979!1 String)
(declare-const var2541!1 var3196)
(define-const var1871 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1871 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var1871!1 String)
(assert (str.prefixof var1871 var1871!1))
(define-const var1978 var1139 (text/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2105 String (buf/-10557480 (cast-from-var1750-to-var1986 var3447))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3145 String (toString/-222306083 var2105)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1139_add/328494887 var1978 (cast-from-String-to-var3196 var3145))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var1978!1 var1139)
(declare-const var3145!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1750-to-var1986=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), id/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), var1750_appendConstant/-411616465=([java.lang.StringBuffer, java.lang.Object], void), cast-from-String-to-var3196=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1139_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var1750=jdk.internal.org.objectweb.asm.util.ASMifier, var3447=r0, var3152=r5, var717=null_type, var3196=java.lang.Object, var2541=r8, var1986=jdk.internal.org.objectweb.asm.util.Printer, var2561=$r1, var3627=0, var1851=$r2, var3707=$r3, var3651=$i0, var3515=$r4, var1610=$r6, var2764=$r7, var2979=$r9, var1871=$r10, var1139=java.util.List, var1978=$r12, var2105=$r11, var3145=$r13}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1750, r0=var3447, r5=var3152, null_type=var717, java.lang.Object=var3196, r8=var2541, jdk.internal.org.objectweb.asm.util.Printer=var1986, $r1=var2561, 0=var3627, $r2=var1851, $r3=var3707, $i0=var3651, $r4=var3515, $r6=var1610, $r7=var2764, $r9=var2979, $r10=var1871, java.util.List=var1139, $r12=var1978, $r11=var2105, $r13=var3145}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av");	$i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visit(");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r6, r5);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 1