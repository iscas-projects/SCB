(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var155 0)
(declare-sort var1394 0)
(declare-sort var3940 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3940) String)
(declare-fun cast-from-var155-to-var3940 (var155) var3940)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var155) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var155 var1394) void)
(declare-fun text/-10557480 (var3940) var1375)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1375_add/328494887 (var1375 var1394) Bool)
(declare-fun cast-from-String-to-var1394 (String) var1394)
(declare-const null-var155 var155)
(declare-const null-var1394 var1394)
(declare-const var670 var155) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var670 null-var155)))
(declare-const var3013 var1394) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var3013 null-var1394)))
(define-const var2432 String (buf/-10557480 (cast-from-var155-to-var3940 var670))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2432 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2432!1 String)
(declare-const var2279 Int)
(define-const var2919 String (buf/-10557480 (cast-from-var155-to-var3940 var670))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3215 String (name/1045876480 var670)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1383 String (append/1560614132 var2919 var3215)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2919!1 String)
(assert (str.prefixof var2919 var2919!1))
(assert true)
;(assert (append/1560614132 var1383 ".visitLdcInsn(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLdcInsn(") 
(declare-const var1383!1 String)
(assert (str.prefixof var1383 var1383!1))
(assert true)
;(assert (appendConstant/2119113448 var670 var3013)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var670!1 var155)
(declare-const var3013!1 var1394)
(define-const var1545 String (buf/-10557480 (cast-from-var155-to-var3940 var670!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1545 ");\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var1545!1 String)
(assert (str.prefixof var1545 var1545!1))
(define-const var2760 var1375 (text/-10557480 (cast-from-var155-to-var3940 var670!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2835 String (buf/-10557480 (cast-from-var155-to-var3940 var670!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3583 String (toString/-222306083 var2835)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1375_add/328494887 var2760 (cast-from-String-to-var1394 var3583))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2760!1 var1375)
(declare-const var3583!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var155-to-var3940=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1375_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1394=([java.lang.String], java.lang.Object)}
; {var155=jdk.internal.org.objectweb.asm.util.ASMifier, var670=r0, var1394=java.lang.Object, var3013=r5, var3940=jdk.internal.org.objectweb.asm.util.Printer, var2432=$r1, var2279=0, var2919=$r3, var3215=$r2, var1383=$r4, var1545=$r6, var1375=java.util.List, var2760=$r8, var2835=$r7, var3583=$r9}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var155, r0=var670, java.lang.Object=var1394, r5=var3013, jdk.internal.org.objectweb.asm.util.Printer=var3940, $r1=var2432, 0=var2279, $r3=var2919, $r2=var3215, $r4=var1383, $r6=var1545, java.util.List=var1375, $r8=var2760, $r7=var2835, $r9=var3583}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLdcInsn(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	return
;block_num 1