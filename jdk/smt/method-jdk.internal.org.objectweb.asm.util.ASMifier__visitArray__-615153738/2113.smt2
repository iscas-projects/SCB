(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3463 0)
(declare-sort var2405 0)
(declare-sort var2148 0)
(declare-sort var1885 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2148) String)
(declare-fun cast-from-var3463-to-var2148 (var3463) var2148)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1045876480 (var3463) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun var3463_appendConstant/-411616465 (String var1885) void)
(declare-fun cast-from-String-to-var1885 (String) var1885)
(declare-fun text/-10557480 (var2148) var3791)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3791_add/328494887 (var3791 var1885) Bool)
(declare-fun createASMifier/-631099411 (var3463 String Int) var3463)
(declare-fun getText/-142638630 (var2148) var3791)
(declare-fun cast-from-var3791-to-var1885 (var3791) var1885)
(declare-const null-var3463 var3463)
(declare-const null-String String)
(declare-const var2678 var3463) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2678 null-var3463)))
(declare-const var3381 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3381 null-String)))
(define-const var332 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var332 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var332!1 String)
(declare-const var2293 Int)
(define-const var1422 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1422 "{\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var1422!1 String)
(assert (str.prefixof var1422 var1422!1))
(define-const var2106 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2873 String (append/1560614132 var2106 "AnnotationVisitor av")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AnnotationVisitor av") 
(declare-const var2106!1 String)
(assert (str.prefixof var2106 var2106!1))
(define-const var3806 Int (id/1045876480 var2678)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(define-const var360 Int (+ var3806 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var2344 String (append/1845021834 var2873 var360)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
;(assert (append/1560614132 var2344 " = av")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" = av") 
(declare-const var2344!1 String)
(assert (str.prefixof var2344 var2344!1))
(define-const var2392 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2258 Int (id/1045876480 var2678)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(assert true)
(define-const var3374 String (append/1845021834 var2392 var2258)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2) 
(assert true)
;(assert (append/1560614132 var3374 ".visitArray(")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitArray(") 
(declare-const var3374!1 String)
(assert (str.prefixof var3374 var3374!1))
(define-const var813 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var3463_appendConstant/-411616465 var813 (cast-from-String-to-var1885 var3381))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8) 

(declare-const var813!1 String)
(declare-const var3381!1 String)
(define-const var2884 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2884 ");\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var2884!1 String)
(assert (str.prefixof var2884 var2884!1))
(define-const var714 var3791 (text/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2920 String (buf/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1629 String (toString/-222306083 var2920)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3791_add/328494887 var714 (cast-from-String-to-var1885 var1629))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var714!1 var3791)
(declare-const var1629!1 String)
(define-const var3968 Int (id/1045876480 var2678)) ; Statement: $i3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(define-const var3283 Int (+ var3968 1)) ; Statement: $i4 = $i3 + 1 
(assert true)
(define-const var3146 var3463 (createASMifier/-631099411 var2678 "av" var3283)) ; Statement: r14 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", $i4) 
(define-const var2815 var3791 (text/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var1619 var3791 (getText/-142638630 (cast-from-var3463-to-var2148 var3146))) ; Statement: $r16 = virtualinvoke r14.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var3791_add/328494887 var2815 (cast-from-var3791-to-var1885 var1619))) ; Statement: interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16) 

(declare-const var2815!1 var3791)
(declare-const var1619!1 var3791)
(define-const var363 var3791 (text/-10557480 (cast-from-var3463-to-var2148 var2678))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3791_add/328494887 var363 (cast-from-String-to-var1885 "}\n"))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var363!1 var3791)
(declare-const var564 String)
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3463-to-var2148=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), id/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), var3463_appendConstant/-411616465=([java.lang.StringBuffer, java.lang.Object], void), cast-from-String-to-var1885=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3791_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3791-to-var1885=([java.util.List], java.lang.Object)}
; {var3463=jdk.internal.org.objectweb.asm.util.ASMifier, var2678=r0, var3381=r8, var2405=null_type, var2148=jdk.internal.org.objectweb.asm.util.Printer, var332=$r1, var2293=0, var1422=$r2, var2106=$r3, var2873=$r4, var3806=$i0, var360=$i1, var2344=$r5, var2392=$r6, var2258=$i2, var3374=$r7, var813=$r9, var1885=java.lang.Object, var2884=$r10, var3791=java.util.List, var714=$r12, var2920=$r11, var1629=$r13, var3968=$i3, var3283=$i4, var3146=r14, var2815=$r15, var1619=$r16, var363=$r17, var564="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3463, r0=var2678, r8=var3381, null_type=var2405, jdk.internal.org.objectweb.asm.util.Printer=var2148, $r1=var332, 0=var2293, $r2=var1422, $r3=var2106, $r4=var2873, $i0=var3806, $i1=var360, $r5=var2344, $r6=var2392, $i2=var2258, $r7=var3374, $r9=var813, java.lang.Object=var1885, $r10=var2884, java.util.List=var3791, $r12=var714, $r11=var2920, $r13=var1629, $i3=var3968, $i4=var3283, r14=var3146, $r15=var2815, $r16=var1619, $r17=var363, "}\n"=var564}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r8 := @parameter0: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AnnotationVisitor av");	$i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$i1 = $i0 + 1;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" = av");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$i2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitArray(");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	$i3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$i4 = $i3 + 1;	r14 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", $i4);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r16 = virtualinvoke r14.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r14
;block_num 1