(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var1236 0)
(declare-sort var1513 0)
(declare-sort var2752 0)
(declare-sort var658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1513) String)
(declare-fun cast-from-var2384-to-var1513 (var2384) var1513)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1045876480 (var2384) String)
(declare-fun append/1845021834 (String Int) String)
(declare-fun appendConstant/2119113448 (var2384 var2752) void)
(declare-fun cast-from-String-to-var2752 (String) var2752)
(declare-fun append/-1166642301 (String Bool) String)
(declare-fun text/-10557480 (var1513) var658)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var658_add/328494887 (var658 var2752) Bool)
(declare-fun createASMifier/-631099411 (var2384 String Int) var2384)
(declare-fun getText/-142638630 (var1513) var658)
(declare-fun cast-from-var658-to-var2752 (var658) var2752)
(declare-const null-var2384 var2384)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2353 var2384) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2353 null-var2384)))
(declare-const var3097 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3097 null-Int)))
(declare-const var3442 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3442 null-String)))
(declare-const var1330 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1330 null-Bool)))
(define-const var2976 String (buf/-10557480 (cast-from-var2384-to-var1513 var2353))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2976 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2976!1 String)
(declare-const var3128 Int)
(define-const var1664 String (buf/-10557480 (cast-from-var2384-to-var1513 var2353))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var336 String (append/1560614132 var1664 "{\n")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var1664!1 String)
(assert (str.prefixof var1664 var1664!1))
(assert true)
(define-const var3652 String (append/1560614132 var336 "av0 = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ") 
(declare-const var336!1 String)
(assert (str.prefixof var336 var336!1))
(define-const var2346 String (name/1045876480 var2353)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var2097 String (append/1560614132 var3652 var2346)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3652!1 String)
(assert (str.prefixof var3652 var3652!1))
(assert true)
(define-const var63 String (append/1560614132 var2097 ".visitParameterAnnotation(")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitParameterAnnotation(") 
(declare-const var2097!1 String)
(assert (str.prefixof var2097 var2097!1))
(assert true)
(define-const var1966 String (append/1845021834 var63 var3097)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1560614132 var1966 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1966!1 String)
(assert (str.prefixof var1966 var1966!1))
(assert true)
;(assert (appendConstant/2119113448 var2353 (cast-from-String-to-var2752 var3442))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var2353!1 var2384)
(declare-const var3442!1 String)
(define-const var646 String (buf/-10557480 (cast-from-var2384-to-var1513 var2353!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1225 String (append/1560614132 var646 ", ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var646!1 String)
(assert (str.prefixof var646 var646!1))
(assert true)
(define-const var3082 String (append/-1166642301 var1225 var1330)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 
(assert true)
;(assert (append/1560614132 var3082 ");\n")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3082!1 String)
(assert (str.prefixof var3082 var3082!1))
(define-const var1830 var658 (text/-10557480 (cast-from-var2384-to-var1513 var2353!1))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3635 String (buf/-10557480 (cast-from-var2384-to-var1513 var2353!1))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2913 String (toString/-222306083 var3635)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var658_add/328494887 var1830 (cast-from-String-to-var2752 var2913))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var1830!1 var658)
(declare-const var2913!1 String)
(assert true)
(define-const var1613 var2384 (createASMifier/-631099411 var2353!1 "av" 0)) ; Statement: r16 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0) 
(define-const var3244 var658 (text/-10557480 (cast-from-var2384-to-var1513 var2353!1))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var803 var658 (getText/-142638630 (cast-from-var2384-to-var1513 var1613))) ; Statement: $r18 = virtualinvoke r16.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var658_add/328494887 var3244 (cast-from-var658-to-var2752 var803))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18) 

(declare-const var3244!1 var658)
(declare-const var803!1 var658)
(define-const var3282 var658 (text/-10557480 (cast-from-var2384-to-var1513 var2353!1))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var658_add/328494887 var3282 (cast-from-String-to-var2752 "}\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var3282!1 var658)
(declare-const var1823 String)
 ; Statement: return r16 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2384-to-var1513=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var2752=([java.lang.String], java.lang.Object), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var658_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var658-to-var2752=([java.util.List], java.lang.Object)}
; {var2384=jdk.internal.org.objectweb.asm.util.ASMifier, var2353=r0, var3097=i0, var3442=r9, var1236=null_type, var1330=z0, var1513=jdk.internal.org.objectweb.asm.util.Printer, var2976=$r1, var3128=0, var1664=$r2, var336=$r3, var3652=$r5, var2346=$r4, var2097=$r6, var63=$r7, var1966=$r8, var2752=java.lang.Object, var646=$r10, var1225=$r11, var3082=$r12, var658=java.util.List, var1830=$r14, var3635=$r13, var2913=$r15, var1613=r16, var3244=$r17, var803=$r18, var3282=$r19, var1823="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2384, r0=var2353, i0=var3097, r9=var3442, null_type=var1236, z0=var1330, jdk.internal.org.objectweb.asm.util.Printer=var1513, $r1=var2976, 0=var3128, $r2=var1664, $r3=var336, $r5=var3652, $r4=var2346, $r6=var2097, $r7=var63, $r8=var1966, java.lang.Object=var2752, $r10=var646, $r11=var1225, $r12=var3082, java.util.List=var658, $r14=var1830, $r13=var3635, $r15=var2913, r16=var1613, $r17=var3244, $r18=var803, $r19=var3282, "}\n"=var1823}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ");	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitParameterAnnotation(");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	r16 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r18 = virtualinvoke r16.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18);	$r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r16
;block_num 1