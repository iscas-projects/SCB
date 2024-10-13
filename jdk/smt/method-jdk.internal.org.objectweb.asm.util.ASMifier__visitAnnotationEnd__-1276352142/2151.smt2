(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1286 0)
(declare-sort var1436 0)
(declare-sort var3164 0)
(declare-sort var3246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1436) String)
(declare-fun cast-from-var1286-to-var1436 (var1286) var1436)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1045876480 (var1286) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var1436) var3164)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3164_add/328494887 (var3164 var3246) Bool)
(declare-fun cast-from-String-to-var3246 (String) var3246)
(declare-const null-var1286 var1286)
(declare-const var1848 var1286) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1848 null-var1286)))
(define-const var853 String (buf/-10557480 (cast-from-var1286-to-var1436 var1848))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var853 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var853!1 String)
(declare-const var3221 Int)
(define-const var3680 String (buf/-10557480 (cast-from-var1286-to-var1436 var1848))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1881 String (append/1560614132 var3680 "av")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av") 
(declare-const var3680!1 String)
(assert (str.prefixof var3680 var3680!1))
(define-const var758 Int (id/1045876480 var1848)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(assert true)
(define-const var2356 String (append/1845021834 var1881 var758)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
;(assert (append/1560614132 var2356 ".visitEnd();\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n") 
(declare-const var2356!1 String)
(assert (str.prefixof var2356 var2356!1))
(define-const var792 var3164 (text/-10557480 (cast-from-var1286-to-var1436 var1848))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3055 String (buf/-10557480 (cast-from-var1286-to-var1436 var1848))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3165 String (toString/-222306083 var3055)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3164_add/328494887 var792 (cast-from-String-to-var3246 var3165))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var792!1 var3164)
(declare-const var3165!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1286-to-var1436=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), id/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3164_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3246=([java.lang.String], java.lang.Object)}
; {var1286=jdk.internal.org.objectweb.asm.util.ASMifier, var1848=r0, var1436=jdk.internal.org.objectweb.asm.util.Printer, var853=$r1, var3221=0, var3680=$r2, var1881=$r3, var758=$i0, var2356=$r4, var3164=java.util.List, var792=$r6, var3055=$r5, var3165=$r7, var3246=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1286, r0=var1848, jdk.internal.org.objectweb.asm.util.Printer=var1436, $r1=var853, 0=var3221, $r2=var3680, $r3=var1881, $i0=var758, $r4=var2356, java.util.List=var3164, $r6=var792, $r5=var3055, $r7=var3165, java.lang.Object=var3246}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av");	$i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7);	return
;block_num 1