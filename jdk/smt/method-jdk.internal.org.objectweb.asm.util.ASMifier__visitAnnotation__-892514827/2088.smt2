(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2898 0)
(declare-sort var3398 0)
(declare-sort var2048 0)
(declare-sort var1083 0)
(declare-sort var1105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2048) String)
(declare-fun cast-from-var2898-to-var2048 (var2898) var2048)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun id/1045876480 (var2898) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun var2898_appendConstant/-411616465 (String var1083) void)
(declare-fun cast-from-String-to-var1083 (String) var1083)
(declare-fun text/-10557480 (var2048) var1105)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1105_add/328494887 (var1105 var1083) Bool)
(declare-fun createASMifier/-631099411 (var2898 String Int) var2898)
(declare-fun getText/-142638630 (var2048) var1105)
(declare-fun cast-from-var1105-to-var1083 (var1105) var1083)
(declare-const null-var2898 var2898)
(declare-const null-String String)
(declare-const var1356 var2898) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1356 null-var2898)))
(declare-const var741 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var741 null-String)))
(declare-const var1830 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var1830 null-String)))
(define-const var3821 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3821 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3821!1 String)
(declare-const var2395 Int)
(define-const var2387 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2387 "{\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var2387!1 String)
(assert (str.prefixof var2387 var2387!1))
(define-const var2054 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2062 String (append/1560614132 var2054 "AnnotationVisitor av")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AnnotationVisitor av") 
(declare-const var2054!1 String)
(assert (str.prefixof var2054 var2054!1))
(define-const var2687 Int (id/1045876480 var1356)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(define-const var35 Int (+ var2687 1)) ; Statement: $i1 = $i0 + 1 
(assert true)
(define-const var3824 String (append/1845021834 var2062 var35)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
;(assert (append/1560614132 var3824 " = av")) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" = av") 
(declare-const var3824!1 String)
(assert (str.prefixof var3824 var3824!1))
(define-const var65 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3900 Int (id/1045876480 var1356)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(assert true)
(define-const var1578 String (append/1845021834 var65 var3900)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2) 
(assert true)
;(assert (append/1560614132 var1578 ".visitAnnotation(")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitAnnotation(") 
(declare-const var1578!1 String)
(assert (str.prefixof var1578 var1578!1))
(define-const var1960 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var2898_appendConstant/-411616465 var1960 (cast-from-String-to-var1083 var741))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8) 

(declare-const var1960!1 String)
(declare-const var741!1 String)
(define-const var1096 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1096 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1096!1 String)
(assert (str.prefixof var1096 var1096!1))
(define-const var734 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var2898_appendConstant/-411616465 var734 (cast-from-String-to-var1083 var1830))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r12, r11) 

(declare-const var734!1 String)
(declare-const var1830!1 String)
(define-const var3510 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3510 ");\n")) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3510!1 String)
(assert (str.prefixof var3510 var3510!1))
(define-const var3264 var1105 (text/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3598 String (buf/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1441 String (toString/-222306083 var3598)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1105_add/328494887 var3264 (cast-from-String-to-var1083 var1441))) ; Statement: interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16) 

(declare-const var3264!1 var1105)
(declare-const var1441!1 String)
(define-const var3456 Int (id/1045876480 var1356)) ; Statement: $i3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id> 
(define-const var2908 Int (+ var3456 1)) ; Statement: $i4 = $i3 + 1 
(assert true)
(define-const var2761 var2898 (createASMifier/-631099411 var1356 "av" var2908)) ; Statement: r17 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", $i4) 
(define-const var396 var1105 (text/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var1315 var1105 (getText/-142638630 (cast-from-var2898-to-var2048 var2761))) ; Statement: $r19 = virtualinvoke r17.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var1105_add/328494887 var396 (cast-from-var1105-to-var1083 var1315))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var396!1 var1105)
(declare-const var1315!1 var1105)
(define-const var2647 var1105 (text/-10557480 (cast-from-var2898-to-var2048 var1356))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1105_add/328494887 var2647 (cast-from-String-to-var1083 "}\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var2647!1 var1105)
(declare-const var1630 String)
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2898-to-var2048=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), id/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), var2898_appendConstant/-411616465=([java.lang.StringBuffer, java.lang.Object], void), cast-from-String-to-var1083=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1105_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1105-to-var1083=([java.util.List], java.lang.Object)}
; {var2898=jdk.internal.org.objectweb.asm.util.ASMifier, var1356=r0, var741=r8, var3398=null_type, var1830=r11, var2048=jdk.internal.org.objectweb.asm.util.Printer, var3821=$r1, var2395=0, var2387=$r2, var2054=$r3, var2062=$r4, var2687=$i0, var35=$i1, var3824=$r5, var65=$r6, var3900=$i2, var1578=$r7, var1960=$r9, var1083=java.lang.Object, var1096=$r10, var734=$r12, var3510=$r13, var1105=java.util.List, var3264=$r15, var3598=$r14, var1441=$r16, var3456=$i3, var2908=$i4, var2761=r17, var396=$r18, var1315=$r19, var2647=$r20, var1630="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2898, r0=var1356, r8=var741, null_type=var3398, r11=var1830, jdk.internal.org.objectweb.asm.util.Printer=var2048, $r1=var3821, 0=var2395, $r2=var2387, $r3=var2054, $r4=var2062, $i0=var2687, $i1=var35, $r5=var3824, $r6=var65, $i2=var3900, $r7=var1578, $r9=var1960, java.lang.Object=var1083, $r10=var1096, $r12=var734, $r13=var3510, java.util.List=var1105, $r15=var3264, $r14=var3598, $r16=var1441, $i3=var3456, $i4=var2908, r17=var2761, $r18=var396, $r19=var1315, $r20=var2647, "}\n"=var1630}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r8 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("AnnotationVisitor av");	$i0 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$i1 = $i0 + 1;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" = av");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$i2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i2);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitAnnotation(");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r9, r8);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.StringBuffer,java.lang.Object)>($r12, r11);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r15 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r15.<java.util.List: boolean add(java.lang.Object)>($r16);	$i3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: int id>;	$i4 = $i3 + 1;	r17 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", $i4);	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r19 = virtualinvoke r17.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r17
;block_num 1