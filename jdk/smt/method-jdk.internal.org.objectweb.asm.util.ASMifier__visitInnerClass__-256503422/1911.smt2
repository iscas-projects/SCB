(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1614 0)
(declare-sort var647 0)
(declare-sort var2056 0)
(declare-sort var44 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2056) String)
(declare-fun cast-from-var1614-to-var2056 (var1614) var2056)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var1614 var44) void)
(declare-fun cast-from-String-to-var44 (String) var44)
(declare-fun appendAccess/732682052 (var1614 Int) void)
(declare-fun text/-10557480 (var2056) var298)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var298_add/328494887 (var298 var44) Bool)
(declare-const null-var1614 var1614)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1695 var1614) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1695 null-var1614)))
(declare-const var1127 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1127 null-String)))
(declare-const var3076 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3076 null-String)))
(declare-const var1669 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var1669 null-String)))
(declare-const var2221 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2221 null-Int)))
(define-const var2911 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2911 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2911!1 String)
(declare-const var2660 Int)
(define-const var859 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var859 "cw.visitInnerClass(")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitInnerClass(") 
(declare-const var859!1 String)
(assert (str.prefixof var859 var859!1))
(assert true)
;(assert (appendConstant/2119113448 var1695 (cast-from-String-to-var44 var1127))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3) 

(declare-const var1695!1 var1614)
(declare-const var1127!1 String)
(define-const var601 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var601 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var601!1 String)
(assert (str.prefixof var601 var601!1))
(assert true)
;(assert (appendConstant/2119113448 var1695!1 (cast-from-String-to-var44 var3076))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var1695!2 var1614)
(declare-const var3076!1 String)
(define-const var3 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3!1 String)
(assert (str.prefixof var3 var3!1))
(assert true)
;(assert (appendConstant/2119113448 var1695!2 (cast-from-String-to-var44 var1669))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var1695!3 var1614)
(declare-const var1669!1 String)
(define-const var1093 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695!3))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1093 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1093!1 String)
(assert (str.prefixof var1093 var1093!1))
(define-const var1253 Int (bv2nat (bvor ((_ int2bv 64) var2221) ((_ int2bv 64) 1048576)))) ; Statement: $i1 = i0 | 1048576 
(assert true)
;(assert (appendAccess/732682052 var1695!3 var1253)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i1) 

(declare-const var1695!4 var1614)
(declare-const var1253!1 Int)
(define-const var1445 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695!4))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1445 ");\n\n")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var1445!1 String)
(assert (str.prefixof var1445 var1445!1))
(define-const var3352 var298 (text/-10557480 (cast-from-var1614-to-var2056 var1695!4))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2686 String (buf/-10557480 (cast-from-var1614-to-var2056 var1695!4))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var408 String (toString/-222306083 var2686)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var298_add/328494887 var3352 (cast-from-String-to-var44 var408))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var3352!1 var298)
(declare-const var408!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1614-to-var2056=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var44=([java.lang.String], java.lang.Object), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var298_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var1614=jdk.internal.org.objectweb.asm.util.ASMifier, var1695=r0, var1127=r3, var647=null_type, var3076=r5, var1669=r7, var2221=i0, var2056=jdk.internal.org.objectweb.asm.util.Printer, var2911=$r1, var2660=0, var859=$r2, var44=java.lang.Object, var601=$r4, var3=$r6, var1093=$r8, var1253=$i1, var1445=$r9, var298=java.util.List, var3352=$r11, var2686=$r10, var408=$r12}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1614, r0=var1695, r3=var1127, null_type=var647, r5=var3076, r7=var1669, i0=var2221, jdk.internal.org.objectweb.asm.util.Printer=var2056, $r1=var2911, 0=var2660, $r2=var859, java.lang.Object=var44, $r4=var601, $r6=var3, $r8=var1093, $i1=var1253, $r9=var1445, java.util.List=var298, $r11=var3352, $r10=var2686, $r12=var408}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	i0 := @parameter3: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visitInnerClass(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r3);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i1 = i0 | 1048576;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i1);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	return
;block_num 1