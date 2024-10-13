(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1507 0)
(declare-sort var201 0)
(declare-sort var1963 0)
(declare-sort var1498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var201) String)
(declare-fun cast-from-var1507-to-var201 (var1507) var201)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1045876480 (var1507) String)
(declare-fun text/-10557480 (var201) var1963)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1963_add/328494887 (var1963 var1498) Bool)
(declare-fun cast-from-String-to-var1498 (String) var1498)
(declare-fun createASMifier/-631099411 (var1507 String Int) var1507)
(declare-fun getText/-142638630 (var201) var1963)
(declare-fun cast-from-var1963-to-var1498 (var1963) var1498)
(declare-const null-var1507 var1507)
(declare-const var1105 var1507) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1105 null-var1507)))
(define-const var2161 String (buf/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2161 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2161!1 String)
(declare-const var235 Int)
(define-const var3745 String (buf/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2262 String (append/1560614132 var3745 "{\n")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var3745!1 String)
(assert (str.prefixof var3745 var3745!1))
(assert true)
(define-const var1689 String (append/1560614132 var2262 "av0 = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ") 
(declare-const var2262!1 String)
(assert (str.prefixof var2262 var2262!1))
(define-const var1087 String (name/1045876480 var1105)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1593 String (append/1560614132 var1689 var1087)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1689!1 String)
(assert (str.prefixof var1689 var1689!1))
(assert true)
;(assert (append/1560614132 var1593 ".visitAnnotationDefault();\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitAnnotationDefault();\n") 
(declare-const var1593!1 String)
(assert (str.prefixof var1593 var1593!1))
(define-const var2586 var1963 (text/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1543 String (buf/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2995 String (toString/-222306083 var1543)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1963_add/328494887 var2586 (cast-from-String-to-var1498 var2995))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2586!1 var1963)
(declare-const var2995!1 String)
(assert true)
(define-const var722 var1507 (createASMifier/-631099411 var1105 "av" 0)) ; Statement: r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0) 
(define-const var2428 var1963 (text/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var815 var1963 (getText/-142638630 (cast-from-var1507-to-var201 var722))) ; Statement: $r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var1963_add/328494887 var2428 (cast-from-var1963-to-var1498 var815))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var2428!1 var1963)
(declare-const var815!1 var1963)
(define-const var2510 var1963 (text/-10557480 (cast-from-var1507-to-var201 var1105))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1963_add/328494887 var2510 (cast-from-String-to-var1498 "}\n"))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var2510!1 var1963)
(declare-const var2301 String)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1507-to-var201=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1963_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1498=([java.lang.String], java.lang.Object), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1963-to-var1498=([java.util.List], java.lang.Object)}
; {var1507=jdk.internal.org.objectweb.asm.util.ASMifier, var1105=r0, var201=jdk.internal.org.objectweb.asm.util.Printer, var2161=$r1, var235=0, var3745=$r2, var2262=$r3, var1689=$r5, var1087=$r4, var1593=$r6, var1963=java.util.List, var2586=$r8, var1543=$r7, var2995=$r9, var1498=java.lang.Object, var722=r10, var2428=$r11, var815=$r12, var2510=$r13, var2301="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1507, r0=var1105, jdk.internal.org.objectweb.asm.util.Printer=var201, $r1=var2161, 0=var235, $r2=var3745, $r3=var2262, $r5=var1689, $r4=var1087, $r6=var1593, java.util.List=var1963, $r8=var2586, $r7=var1543, $r9=var2995, java.lang.Object=var1498, r10=var722, $r11=var2428, $r12=var815, $r13=var2510, "}\n"=var2301}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ");	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitAnnotationDefault();\n");	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	r10 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r12 = virtualinvoke r10.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r10
;block_num 1