(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2859 0)
(declare-sort var307 0)
(declare-sort var480 0)
(declare-sort var1965 0)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/1394374428 (var2859 String var307) String)
(declare-fun info/-1279724470 (var307) var480)
(declare-fun append/-1031950772 (String var480) String)
(declare-fun graph/-340627520 (var2859) var1965)
(declare-fun addNode/-226084161 (var1965 String) void)
(declare-fun currentBlock/-340627520 (var2859) String)
(declare-fun addText/1451988652 (var2859 var480) void)
(declare-fun cast-from-String-to-var480 (String) var480)
(declare-const null-var2859 var2859)
(declare-const null-var307 var307)
(declare-const null-String String)
(declare-const var328 var2859) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var328 null-var2859)))
(declare-const var1639 var307) ; Statement: r2 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1639 null-var307)))
(define-const var187 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var187)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var187!1 String)
(assert (= var187!1 ""))
(assert true)
;(assert (append/672562846 var187!1 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var187!2 String)
(assert (= var187!2 (str.++ var187!1 "\n")))
(assert true)
(define-const var1360 String (appendLabel/1394374428 var328 var187!2 var1639)) ; Statement: r3 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r2) 
(assert true)
;(assert (append/672562846 var187!2 " [bci=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [bci=") 
(declare-const var187!3 String)
(assert (= var187!3 (str.++ var187!2 " [bci=")))
(define-const var1786 var480 (info/-1279724470 var1639)) ; Statement: $r4 = r2.<jdk.internal.org.objectweb.asm.Label: java.lang.Object info> 
(assert true)
;(assert (append/-1031950772 var187!3 var1786)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var187!4 String)
(assert (str.prefixof var187!3 var187!4))
(assert true)
;(assert (append/672562846 var187!4 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var187!5 String)
(assert (= var187!5 (str.++ var187!4 "]")))
(assert true)
;(assert (append/672562846 var187!5 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var187!6 String)
(assert (= var187!6 (str.++ var187!5 "\n")))
(define-const var2064 var1965 (graph/-340627520 var328)) ; Statement: $r5 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> 
(assert true)
;(assert (addNode/-226084161 var2064 var1360)) ; Statement: virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addNode(java.lang.String)>(r3) 

(declare-const var2064!1 var1965)
(declare-const var1360!1 String)
(define-const var2277 String (currentBlock/-340627520 var328)) ; Statement: $r6 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> 
 ; Statement: if $r6 == null goto r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> = r3 
(assert (= var2277 null-String)) ; Cond: $r6 == null 
(declare-const var328!1 var2859)
(assert (not (= var328!1 null-var2859)))
(assert (= (currentBlock/-340627520 var328!1) var1360!1)) ; Statement: r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> = r3 
(assert true)
;(assert (addText/1451988652 var328!1 (cast-from-String-to-var480 var187!6))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var328!2 var2859)
(declare-const var187!7 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), info/-1279724470=([jdk.internal.org.objectweb.asm.Label], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), addNode/-226084161=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String], void), currentBlock/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var480=([java.lang.StringBuilder], java.lang.Object)}
; {var2859=jdk.nashorn.internal.ir.debug.NashornTextifier, var328=r1, var307=jdk.internal.org.objectweb.asm.Label, var1639=r2, var187=$r0, var1360=r3, var480=java.lang.Object, var1786=$r4, var1965=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var2064=$r5, var2277=$r6, var747=null_type}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2859, r1=var328, jdk.internal.org.objectweb.asm.Label=var307, r2=var1639, $r0=var187, r3=var1360, java.lang.Object=var480, $r4=var1786, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var1965, $r5=var2064, $r6=var2277, null_type=var747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r2 := @parameter0: jdk.internal.org.objectweb.asm.Label;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	r3 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [bci=");	$r4 = r2.<jdk.internal.org.objectweb.asm.Label: java.lang.Object info>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r5 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph>;	virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addNode(java.lang.String)>(r3);	$r6 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock>;	if $r6 == null goto r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> = r3;	r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> = r3;	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 2