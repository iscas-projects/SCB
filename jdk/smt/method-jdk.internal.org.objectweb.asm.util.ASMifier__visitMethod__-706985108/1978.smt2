(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2819 0)
(declare-sort var2838 0)
(declare-sort var0 0)
(declare-sort var2559 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var0) String)
(declare-fun cast-from-var2819-to-var0 (var2819) var0)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var2819 Int) void)
(declare-fun appendConstant/2119113448 (var2819 var2559) void)
(declare-fun cast-from-String-to-var2559 (String) var2559)
(declare-fun text/-10557480 (var0) var347)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var347_add/328494887 (var347 var2559) Bool)
(declare-fun createASMifier/-631099411 (var2819 String Int) var2819)
(declare-fun getText/-142638630 (var0) var347)
(declare-fun cast-from-var347-to-var2559 (var347) var2559)
(declare-const null-var2819 var2819)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3721 var2819) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3721 null-var2819)))
(declare-const var2507 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2507 null-Int)))
(declare-const var2356 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2356 null-String)))
(declare-const var1349 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var1349 null-String)))
(declare-const var1085 String) ; Statement: r9 := @parameter3: java.lang.String 
(assert (not (= var1085 null-String)))
(declare-const var3761 (Array Int String)) ; Statement: r11 := @parameter4: java.lang.String[] 
(assert (not (= var3761 null-__Array__Int__String__)))
(define-const var3305 String (buf/-10557480 (cast-from-var2819-to-var0 var3721))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3305 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3305!1 String)
(declare-const var1955 Int)
(define-const var3426 String (buf/-10557480 (cast-from-var2819-to-var0 var3721))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3426 "{\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var3426!1 String)
(assert (str.prefixof var3426 var3426!1))
(define-const var3712 String (buf/-10557480 (cast-from-var2819-to-var0 var3721))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3712 "mv = cw.visitMethod(")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("mv = cw.visitMethod(") 
(declare-const var3712!1 String)
(assert (str.prefixof var3712 var3712!1))
(assert true)
;(assert (appendAccess/732682052 var3721 var2507)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>(i0) 

(declare-const var3721!1 var2819)
(declare-const var2507!1 Int)
(define-const var2366 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!1))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2366 ", ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2366!1 String)
(assert (str.prefixof var2366 var2366!1))
(assert true)
;(assert (appendConstant/2119113448 var3721!1 (cast-from-String-to-var2559 var2356))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var3721!2 var2819)
(declare-const var2356!1 String)
(define-const var3752 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!2))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3752 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3752!1 String)
(assert (str.prefixof var3752 var3752!1))
(assert true)
;(assert (appendConstant/2119113448 var3721!2 (cast-from-String-to-var2559 var1349))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var3721!3 var2819)
(declare-const var1349!1 String)
(define-const var1594 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!3))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1594 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1594!1 String)
(assert (str.prefixof var1594 var1594!1))
(assert true)
;(assert (appendConstant/2119113448 var3721!3 (cast-from-String-to-var2559 var1085))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var3721!4 var2819)
(declare-const var1085!1 String)
(define-const var2757 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2757 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2757!1 String)
(assert (str.prefixof var2757 var2757!1))
 ; Statement: if r11 == null goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var3761 null-__Array__Int__String__)) ; Cond: r11 == null 
(define-const var175 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var175 "null")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var175!1 String)
(assert (str.prefixof var175 var175!1))
(assert true) ; Non Conditional
(define-const var3937 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3937 ");\n")) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3937!1 String)
(assert (str.prefixof var3937 var3937!1))
(define-const var3381 var347 (text/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1748 String (buf/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1136 String (toString/-222306083 var1748)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var347_add/328494887 var3381 (cast-from-String-to-var2559 var1136))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var3381!1 var347)
(declare-const var1136!1 String)
(assert true)
(define-const var750 var2819 (createASMifier/-631099411 var3721!4 "mv" 0)) ; Statement: $r22 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("mv", 0) 
(define-const var2853 var347 (text/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var1835 var347 (getText/-142638630 (cast-from-var2819-to-var0 var750))) ; Statement: $r24 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var347_add/328494887 var2853 (cast-from-var347-to-var2559 var1835))) ; Statement: interfaceinvoke $r23.<java.util.List: boolean add(java.lang.Object)>($r24) 

(declare-const var2853!1 var347)
(declare-const var1835!1 var347)
(define-const var2748 var347 (text/-10557480 (cast-from-var2819-to-var0 var3721!4))) ; Statement: $r25 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var347_add/328494887 var2748 (cast-from-String-to-var2559 "}\n"))) ; Statement: interfaceinvoke $r25.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var2748!1 var347)
(declare-const var2118 String)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2819-to-var0=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2559=([java.lang.String], java.lang.Object), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var347_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var347-to-var2559=([java.util.List], java.lang.Object)}
; {var2819=jdk.internal.org.objectweb.asm.util.ASMifier, var3721=r0, var2507=i0, var2356=r5, var2838=null_type, var1349=r7, var1085=r9, var3761=r11, var0=jdk.internal.org.objectweb.asm.util.Printer, var3305=$r1, var1955=0, var3426=$r2, var3712=$r3, var2366=$r4, var2559=java.lang.Object, var3752=$r6, var1594=$r8, var2757=$r10, var175=$r12, var3937=$r18, var347=java.util.List, var3381=$r19, var1748=$r20, var1136=$r21, var750=$r22, var2853=$r23, var1835=$r24, var2748=$r25, var2118="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2819, r0=var3721, i0=var2507, r5=var2356, null_type=var2838, r7=var1349, r9=var1085, r11=var3761, jdk.internal.org.objectweb.asm.util.Printer=var0, $r1=var3305, 0=var1955, $r2=var3426, $r3=var3712, $r4=var2366, java.lang.Object=var2559, $r6=var3752, $r8=var1594, $r10=var2757, $r12=var175, $r18=var3937, java.util.List=var347, $r19=var3381, $r20=var1748, $r21=var1136, $r22=var750, $r23=var2853, $r24=var1835, $r25=var2748, "}\n"=var2118}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r5 := @parameter1: java.lang.String;	r7 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.String;	r11 := @parameter4: java.lang.String[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("mv = cw.visitMethod(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>(i0);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r11 == null goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r21);	$r22 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("mv", 0);	$r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r24 = virtualinvoke $r22.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r23.<java.util.List: boolean add(java.lang.Object)>($r24);	$r25 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r25.<java.util.List: boolean add(java.lang.Object)>("}\n");	return $r22
;block_num 3