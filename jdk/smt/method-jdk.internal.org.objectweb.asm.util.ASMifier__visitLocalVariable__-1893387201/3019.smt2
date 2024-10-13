(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2871 0)
(declare-sort var769 0)
(declare-sort var2019 0)
(declare-sort var287 0)
(declare-sort var597 0)
(declare-sort var1023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var287) String)
(declare-fun cast-from-var2871-to-var287 (var2871) var287)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2871) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendConstant/2119113448 (var2871 var597) void)
(declare-fun cast-from-String-to-var597 (String) var597)
(declare-fun appendLabel/937164375 (var2871 var2019) void)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var287) var1023)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1023_add/328494887 (var1023 var597) Bool)
(declare-const null-var2871 var2871)
(declare-const null-String String)
(declare-const null-var2019 var2019)
(declare-const null-Int Int)
(declare-const var862 var2871) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var862 null-var2871)))
(declare-const var1914 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1914 null-String)))
(declare-const var1377 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var1377 null-String)))
(declare-const var2892 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var2892 null-String)))
(declare-const var237 var2019) ; Statement: r11 := @parameter3: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var237 null-var2019)))
(declare-const var2028 var2019) ; Statement: r13 := @parameter4: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var2028 null-var2019)))
(declare-const var750 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var750 null-Int)))
(define-const var783 String (buf/-10557480 (cast-from-var2871-to-var287 var862))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var783 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var783!1 String)
(declare-const var44 Int)
(define-const var303 String (buf/-10557480 (cast-from-var2871-to-var287 var862))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var2472 String (name/1045876480 var862)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var3042 String (append/1560614132 var303 var2472)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var303!1 String)
(assert (str.prefixof var303 var303!1))
(assert true)
;(assert (append/1560614132 var3042 ".visitLocalVariable(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLocalVariable(") 
(declare-const var3042!1 String)
(assert (str.prefixof var3042 var3042!1))
(assert true)
;(assert (appendConstant/2119113448 var862 (cast-from-String-to-var597 var1914))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5) 

(declare-const var862!1 var2871)
(declare-const var1914!1 String)
(define-const var1486 String (buf/-10557480 (cast-from-var2871-to-var287 var862!1))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1486 ", ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1486!1 String)
(assert (str.prefixof var1486 var1486!1))
(assert true)
;(assert (appendConstant/2119113448 var862!1 (cast-from-String-to-var597 var1377))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7) 

(declare-const var862!2 var2871)
(declare-const var1377!1 String)
(define-const var1282 String (buf/-10557480 (cast-from-var2871-to-var287 var862!2))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1282 ", ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1282!1 String)
(assert (str.prefixof var1282 var1282!1))
(assert true)
;(assert (appendConstant/2119113448 var862!2 (cast-from-String-to-var597 var2892))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9) 

(declare-const var862!3 var2871)
(declare-const var2892!1 String)
(define-const var1987 String (buf/-10557480 (cast-from-var2871-to-var287 var862!3))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1987 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1987!1 String)
(assert (str.prefixof var1987 var1987!1))
(assert true)
;(assert (appendLabel/937164375 var862!3 var237)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r11) 

(declare-const var862!4 var2871)
(declare-const var237!1 var2019)
(define-const var2380 String (buf/-10557480 (cast-from-var2871-to-var287 var862!4))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2380 ", ")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2380!1 String)
(assert (str.prefixof var2380 var2380!1))
(assert true)
;(assert (appendLabel/937164375 var862!4 var2028)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r13) 

(declare-const var862!5 var2871)
(declare-const var2028!1 var2019)
(define-const var855 String (buf/-10557480 (cast-from-var2871-to-var287 var862!5))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2997 String (append/1560614132 var855 ", ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var855!1 String)
(assert (str.prefixof var855 var855!1))
(assert true)
(define-const var1499 String (append/1845021834 var2997 var750)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1560614132 var1499 ");\n")) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var1499!1 String)
(assert (str.prefixof var1499 var1499!1))
(define-const var166 var1023 (text/-10557480 (cast-from-var2871-to-var287 var862!5))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1208 String (buf/-10557480 (cast-from-var2871-to-var287 var862!5))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2106 String (toString/-222306083 var1208)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1023_add/328494887 var166 (cast-from-String-to-var597 var2106))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var166!1 var1023)
(declare-const var2106!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2871-to-var287=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var597=([java.lang.String], java.lang.Object), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1023_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var2871=jdk.internal.org.objectweb.asm.util.ASMifier, var862=r0, var1914=r5, var769=null_type, var1377=r7, var2892=r9, var2019=jdk.internal.org.objectweb.asm.Label, var237=r11, var2028=r13, var750=i0, var287=jdk.internal.org.objectweb.asm.util.Printer, var783=$r1, var44=0, var303=$r3, var2472=$r2, var3042=$r4, var597=java.lang.Object, var1486=$r6, var1282=$r8, var1987=$r10, var2380=$r12, var855=$r14, var2997=$r15, var1499=$r16, var1023=java.util.List, var166=$r18, var1208=$r17, var2106=$r19}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2871, r0=var862, r5=var1914, null_type=var769, r7=var1377, r9=var2892, jdk.internal.org.objectweb.asm.Label=var2019, r11=var237, r13=var2028, i0=var750, jdk.internal.org.objectweb.asm.util.Printer=var287, $r1=var783, 0=var44, $r3=var303, $r2=var2472, $r4=var3042, java.lang.Object=var597, $r6=var1486, $r8=var1282, $r10=var1987, $r12=var2380, $r14=var855, $r15=var2997, $r16=var1499, java.util.List=var1023, $r18=var166, $r17=var1208, $r19=var2106}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	r11 := @parameter3: jdk.internal.org.objectweb.asm.Label;	r13 := @parameter4: jdk.internal.org.objectweb.asm.Label;	i0 := @parameter5: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLocalVariable(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r5);	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r7);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r11);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 1