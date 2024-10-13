(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2753 0)
(declare-sort var2778 0)
(declare-sort var3298 0)
(declare-sort var487 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3298) String)
(declare-fun cast-from-var2753-to-var3298 (var2753) var3298)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun declareLabel/-244488941 (var2753 var2778) void)
(declare-fun name/1045876480 (var2753) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/937164375 (var2753 var2778) void)
(declare-fun text/-10557480 (var3298) var487)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var487_add/328494887 (var487 var2357) Bool)
(declare-fun cast-from-String-to-var2357 (String) var2357)
(declare-const null-var2753 var2753)
(declare-const null-var2778 var2778)
(declare-const var1406 var2753) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1406 null-var2753)))
(declare-const var1735 var2778) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1735 null-var2778)))
(define-const var3027 String (buf/-10557480 (cast-from-var2753-to-var3298 var1406))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3027 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3027!1 String)
(declare-const var2468 Int)
(assert true)
;(assert (declareLabel/-244488941 var1406 var1735)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var1406!1 var2753)
(declare-const var1735!1 var2778)
(define-const var3241 String (buf/-10557480 (cast-from-var2753-to-var3298 var1406!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2382 String (name/1045876480 var1406!1)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var3316 String (append/1560614132 var3241 var2382)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3241!1 String)
(assert (str.prefixof var3241 var3241!1))
(assert true)
;(assert (append/1560614132 var3316 ".visitLabel(")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLabel(") 
(declare-const var3316!1 String)
(assert (str.prefixof var3316 var3316!1))
(assert true)
;(assert (appendLabel/937164375 var1406!1 var1735!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2) 

(declare-const var1406!2 var2753)
(declare-const var1735!2 var2778)
(define-const var3981 String (buf/-10557480 (cast-from-var2753-to-var3298 var1406!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3981 ");\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3981!1 String)
(assert (str.prefixof var3981 var3981!1))
(define-const var1051 var487 (text/-10557480 (cast-from-var2753-to-var3298 var1406!2))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3417 String (buf/-10557480 (cast-from-var2753-to-var3298 var1406!2))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var9 String (toString/-222306083 var3417)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var487_add/328494887 var1051 (cast-from-String-to-var2357 var9))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var1051!1 var487)
(declare-const var9!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2753-to-var3298=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), declareLabel/-244488941=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var487_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2357=([java.lang.String], java.lang.Object)}
; {var2753=jdk.internal.org.objectweb.asm.util.ASMifier, var1406=r0, var2778=jdk.internal.org.objectweb.asm.Label, var1735=r2, var3298=jdk.internal.org.objectweb.asm.util.Printer, var3027=$r1, var2468=0, var3241=$r4, var2382=$r3, var3316=$r5, var3981=$r6, var487=java.util.List, var1051=$r8, var3417=$r7, var9=$r9, var2357=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2753, r0=var1406, jdk.internal.org.objectweb.asm.Label=var2778, r2=var1735, jdk.internal.org.objectweb.asm.util.Printer=var3298, $r1=var3027, 0=var2468, $r4=var3241, $r3=var2382, $r5=var3316, $r6=var3981, java.util.List=var487, $r8=var1051, $r7=var3417, $r9=var9, java.lang.Object=var2357}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r2 := @parameter0: jdk.internal.org.objectweb.asm.Label;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLabel(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r2);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	return
;block_num 1