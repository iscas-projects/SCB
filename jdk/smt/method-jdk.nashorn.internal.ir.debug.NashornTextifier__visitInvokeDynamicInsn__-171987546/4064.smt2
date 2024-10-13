(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1299 0)
(declare-sort var1578 0)
(declare-sort var1459 0)
(declare-sort var410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var1299 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1299_appendDescriptor/-359262046 (String Int String) void)
(declare-fun length/-171891354 (String) Int)
(declare-fun var1299_appendHandle/277654261 (String var1459) void)
(declare-fun getLength-Arr-var410-1 ((Array Int var410)) Int)
(declare-fun addText/1451988652 (var1299 var410) void)
(declare-fun cast-from-String-to-var410 (String) var410)
(declare-const null-var1299 var1299)
(declare-const null-String String)
(declare-const null-var1459 var1459)
(declare-const null-__Array__Int__var410__ (Array Int var410))
(declare-const var485 var1299) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var485 null-var1299)))
(declare-const var3814 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3814 null-String)))
(declare-const var827 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var827 null-String)))
(declare-const var3130 var1459) ; Statement: r5 := @parameter2: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var3130 null-var1459)))
(declare-const var826 (Array Int var410)) ; Statement: r6 := @parameter3: java.lang.Object[] 
(assert (not (= var826 null-__Array__Int__var410__)))
(define-const var1947 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1947)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1947!1 String)
(assert (= var1947!1 ""))
(assert true)
(define-const var1568 String (appendOpcode/-2040334566 var485 var1947!1 186)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 186) 
(assert true)
;(assert (append/-1166366385 var1568 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1568!1 String)
(assert (str.prefixof var1568 var1568!1))
(assert true)
;(assert (append/672562846 var1947!1 var3814)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1947!2 String)
(assert (= var1947!2 (str.++ var1947!1 var3814)))
;(assert (var1299_appendDescriptor/-359262046 var1947!2 3 var827)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4) 

(declare-const var1947!3 String)
(declare-const var1270 Int)
(declare-const var827!1 String)
(assert true)
(define-const var2777 Int (length/-171891354 var1947!3)) ; Statement: i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(define-const var417 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var2821 Int (- 80 var2777)) ; Statement: $i1 = 80 - i0 
 ; Statement: if i9 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(assert (>= var417 var2821)) ; Cond: i9 >= $i1 
(assert true)
;(assert (append/672562846 var1947!3 " [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var1947!4 String)
(assert (= var1947!4 (str.++ var1947!3 " [")))
;(assert (var1299_appendHandle/277654261 var1947!4 var3130)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendHandle(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Handle)>($r0, r5) 

(declare-const var1947!5 String)
(declare-const var3130!1 var1459)
(define-const var578 Int (getLength-Arr-var410-1 var826)) ; Statement: $i2 = lengthof r6 
 ; Statement: if $i2 != 0 goto i3 = lengthof r6 
(assert (not (not (= var578 0)))) ; Negate: Cond: $i2 != 0  
(assert true)
;(assert (append/672562846 var1947!5 "none")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("none") 
(declare-const var1947!6 String)
(assert (= var1947!6 (str.++ var1947!5 "none")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]\n")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1947!6 "]\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]\n") 
(declare-const var1947!7 String)
(assert (= var1947!7 (str.++ var1947!6 "]\n")))
(assert true)
;(assert (addText/1451988652 var485 (cast-from-String-to-var410 var1947!7))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var485!1 var1299)
(declare-const var1947!8 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1299_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), length/-171891354=([java.lang.StringBuilder], int), var1299_appendHandle/277654261=([java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Handle], void), getLength-Arr-var410-1=([java.lang.Object[]], int), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var410=([java.lang.StringBuilder], java.lang.Object)}
; {var1299=jdk.nashorn.internal.ir.debug.NashornTextifier, var485=r1, var3814=r3, var1578=null_type, var827=r4, var1459=jdk.internal.org.objectweb.asm.Handle, var3130=r5, var410=java.lang.Object, var826=r6, var1947=$r0, var1568=$r2, var1270=3, var2777=i0, var417=i9, var2821=$i1, var578=$i2}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1299, r1=var485, r3=var3814, null_type=var1578, r4=var827, jdk.internal.org.objectweb.asm.Handle=var1459, r5=var3130, java.lang.Object=var410, r6=var826, $r0=var1947, $r2=var1568, 3=var1270, i0=var2777, i9=var417, $i1=var2821, $i2=var578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: jdk.internal.org.objectweb.asm.Handle;	r6 := @parameter3: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 186);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4);	i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	i9 = 0;	$i1 = 80 - i0;	if i9 >= $i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendHandle(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Handle)>($r0, r5);	$i2 = lengthof r6;	if $i2 != 0 goto i3 = lengthof r6;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("none");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]\n")];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]\n");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 5