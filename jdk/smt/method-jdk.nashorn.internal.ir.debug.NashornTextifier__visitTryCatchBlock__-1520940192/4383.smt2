(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2213 0)
(declare-sort var3143 0)
(declare-sort var3485 0)
(declare-sort var798 0)
(declare-sort var3555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/1394374428 (var2213 String var3143) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2213_appendDescriptor/-359262046 (String Int String) void)
(declare-fun addText/1451988652 (var2213 var798) void)
(declare-fun cast-from-String-to-var798 (String) var798)
(declare-fun graph/-340627520 (var2213) var3555)
(declare-fun setIsCatch/190570152 (var3555 String String) void)
(declare-fun addTryCatch/59383674 (var3555 String String) void)
(declare-const null-var2213 var2213)
(declare-const null-var3143 var3143)
(declare-const null-String String)
(declare-const var2994 var2213) ; Statement: r2 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2994 null-var2213)))
(declare-const var3730 var3143) ; Statement: r3 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3730 null-var3143)))
(declare-const var3314 var3143) ; Statement: r5 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3314 null-var3143)))
(declare-const var3185 var3143) ; Statement: r6 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3185 null-var3143)))
(declare-const var3267 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var3267 null-String)))
(define-const var3135 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3135)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3135!1 String)
(assert (= var3135!1 ""))
(assert true)
(define-const var123 String (append/672562846 var3135!1 "    ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var3135!2 String)
(assert (= var3135!2 (str.++ var3135!1 "    ")))
(assert true)
;(assert (append/672562846 var123 "try ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try ") 
(declare-const var123!1 String)
(assert (= var123!1 (str.++ var123 "try ")))
(assert true)
(define-const var1229 String (appendLabel/1394374428 var2994 var3135!2 var3730)) ; Statement: r4 = specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r3) 
(assert true)
;(assert (append/-1166366385 var3135!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3135!3 String)
(assert (str.prefixof var3135!2 var3135!3))
(assert true)
;(assert (appendLabel/1394374428 var2994 var3135!3 var3314)) ; Statement: specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5) 

(declare-const var2994!1 var2213)
(declare-const var3135!4 String)
(declare-const var3314!1 var3143)
(assert true)
;(assert (append/-1166366385 var3135!4 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3135!5 String)
(assert (str.prefixof var3135!4 var3135!5))
(assert true)
(define-const var906 String (appendLabel/1394374428 var2994!1 var3135!5 var3185)) ; Statement: r7 = specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6) 
(assert true)
;(assert (append/-1166366385 var3135!5 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3135!6 String)
(assert (str.prefixof var3135!5 var3135!6))
;(assert (var2213_appendDescriptor/-359262046 var3135!6 0 var3267)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r8) 

(declare-const var3135!7 String)
(declare-const var1424 Int)
(declare-const var3267!1 String)
(assert true)
;(assert (append/-1166366385 var3135!7 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3135!8 String)
(assert (str.prefixof var3135!7 var3135!8))
(assert true)
;(assert (addText/1451988652 var2994!1 (cast-from-String-to-var798 var3135!8))) ; Statement: specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2994!2 var2213)
(declare-const var3135!9 String)
(define-const var999 var3555 (graph/-340627520 var2994!2)) ; Statement: $r9 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> 
(assert true)
;(assert (setIsCatch/190570152 var999 var906 var3267!1)) ; Statement: virtualinvoke $r9.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void setIsCatch(java.lang.String,java.lang.String)>(r7, r8) 

(declare-const var999!1 var3555)
(declare-const var906!1 String)
(declare-const var3267!2 String)
(define-const var389 var3555 (graph/-340627520 var2994!2)) ; Statement: $r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> 
(assert true)
;(assert (addTryCatch/59383674 var389 var1229 var906!1)) ; Statement: virtualinvoke $r10.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addTryCatch(java.lang.String,java.lang.String)>(r4, r7) 

(declare-const var389!1 var3555)
(declare-const var1229!1 String)
(declare-const var906!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2213_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var798=([java.lang.StringBuilder], java.lang.Object), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), setIsCatch/190570152=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String, java.lang.String], void), addTryCatch/59383674=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String, java.lang.String], void)}
; {var2213=jdk.nashorn.internal.ir.debug.NashornTextifier, var2994=r2, var3143=jdk.internal.org.objectweb.asm.Label, var3730=r3, var3314=r5, var3185=r6, var3267=r8, var3485=null_type, var3135=$r0, var123=$r1, var1229=r4, var906=r7, var1424=0, var798=java.lang.Object, var3555=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var999=$r9, var389=$r10}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2213, r2=var2994, jdk.internal.org.objectweb.asm.Label=var3143, r3=var3730, r5=var3314, r6=var3185, r8=var3267, null_type=var3485, $r0=var3135, $r1=var123, r4=var1229, r7=var906, 0=var1424, java.lang.Object=var798, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var3555, $r9=var999, $r10=var389}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4}
;stmts r2 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r3 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r5 := @parameter1: jdk.internal.org.objectweb.asm.Label;	r6 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r8 := @parameter3: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("try ");	r4 = specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	r7 = specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	$r9 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph>;	virtualinvoke $r9.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void setIsCatch(java.lang.String,java.lang.String)>(r7, r8);	$r10 = r2.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph>;	virtualinvoke $r10.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addTryCatch(java.lang.String,java.lang.String)>(r4, r7);	return
;block_num 1