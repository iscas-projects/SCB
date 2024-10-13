(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var1346 0)
(declare-sort var867 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var867) String)
(declare-fun cast-from-var2991-to-var867 (var2991) var867)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var867) var1814)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1814_add/328494887 (var1814 var1346) Bool)
(declare-fun cast-from-String-to-var1346 (String) var1346)
(declare-const null-var2991 var2991)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1346__ (Array Int var1346))
(declare-const var2393 var2991) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2393 null-var2991)))
(declare-const var2889 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2889 null-Int)))
(declare-const var3584 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3584 null-Int)))
(declare-const var618 (Array Int var1346)) ; Statement: r15 := @parameter2: java.lang.Object[] 
(assert (not (= var618 null-__Array__Int__var1346__)))
(declare-const var92 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var92 null-Int)))
(declare-const var1897 (Array Int var1346)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var1897 null-__Array__Int__var1346__)))
(define-const var3435 String (buf/-10557480 (cast-from-var2991-to-var867 var2393))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3435 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3435!1 String)
(declare-const var3899 Int)
 ; Statement: tableswitch(i0) {     case -1: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 0: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 1: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 2: goto $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 3: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 4: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(1, r2);     default: goto $r34 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (not (= var2889 4)) (and (not (= var2889 3)) (and (not (= var2889 2)) (and (not (= var2889 1)) (and (not (= var2889 0)) (and (not (= var2889 (- 1))) true))))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional      
(define-const var2805 String (buf/-10557480 (cast-from-var2991-to-var867 var2393))) ; Statement: $r34 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2805 ");\n")) ; Statement: virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2805!1 String)
(assert (str.prefixof var2805 var2805!1))
(define-const var2170 var1814 (text/-10557480 (cast-from-var2991-to-var867 var2393))) ; Statement: $r35 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1818 String (buf/-10557480 (cast-from-var2991-to-var867 var2393))) ; Statement: $r36 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var116 String (toString/-222306083 var1818)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1814_add/328494887 var2170 (cast-from-String-to-var1346 var116))) ; Statement: interfaceinvoke $r35.<java.util.List: boolean add(java.lang.Object)>($r37) 

(declare-const var2170!1 var1814)
(declare-const var116!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2991-to-var867=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1814_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1346=([java.lang.String], java.lang.Object)}
; {var2991=jdk.internal.org.objectweb.asm.util.ASMifier, var2393=r0, var2889=i0, var3584=i1, var1346=java.lang.Object, var618=r15, var92=i2, var1897=r2, var867=jdk.internal.org.objectweb.asm.util.Printer, var3435=$r1, var3899=0, var2805=$r34, var1814=java.util.List, var2170=$r35, var1818=$r36, var116=$r37}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2991, r0=var2393, i0=var2889, i1=var3584, java.lang.Object=var1346, r15=var618, i2=var92, r2=var1897, jdk.internal.org.objectweb.asm.util.Printer=var867, $r1=var3435, 0=var3899, $r34=var2805, java.util.List=var1814, $r35=var2170, $r36=var1818, $r37=var116}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r15 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	tableswitch(i0) {     case -1: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 0: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 1: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(i1, r15);     case 2: goto $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 3: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 4: goto specialinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareFrameTypes(int,java.lang.Object[])>(1, r2);     default: goto $r34 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r34 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r34.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r35 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r36 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r37 = virtualinvoke $r36.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r35.<java.util.List: boolean add(java.lang.Object)>($r37);	return
;block_num 2