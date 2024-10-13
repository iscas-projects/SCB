(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1039 0)
(declare-sort var200 0)
(declare-sort var3325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1039_appendDescriptor/-359262046 (String Int String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1039 var3325) void)
(declare-fun cast-from-String-to-var3325 (String) var3325)
(declare-const null-var1039 var1039)
(declare-const null-String String)
(declare-const var2660 var1039) ; Statement: r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2660 null-var1039)))
(declare-const var1161 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1161 null-String)))
(declare-const var2687 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2687 null-String)))
(declare-const var1593 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1593 null-String)))
(define-const var2470 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2470)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2470!1 String)
(assert (= var2470!1 ""))
(assert true)
(define-const var1803 String (append/672562846 var2470!1 "  ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2470!2 String)
(assert (= var2470!2 (str.++ var2470!1 "  ")))
(assert true)
;(assert (append/672562846 var1803 "outer class ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("outer class ") 
(declare-const var1803!1 String)
(assert (= var1803!1 (str.++ var1803 "outer class ")))
;(assert (var1039_appendDescriptor/-359262046 var2470!2 0 var1161)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r2) 

(declare-const var2470!3 String)
(declare-const var3616 Int)
(declare-const var1161!1 String)
(assert true)
;(assert (append/-1166366385 var2470!3 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2470!4 String)
(assert (str.prefixof var2470!3 var2470!4))
 ; Statement: if r3 == null goto staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4) 
(assert (= var2687 null-String)) ; Cond: r3 == null 
;(assert (var1039_appendDescriptor/-359262046 var2470!4 3 var1593)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4) 

(declare-const var2470!5 String)
(declare-const var486 Int)
(declare-const var1593!1 String)
(assert true)
;(assert (append/-1166366385 var2470!5 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2470!6 String)
(assert (str.prefixof var2470!5 var2470!6))
(assert true)
;(assert (addText/1451988652 var2660 (cast-from-String-to-var3325 var2470!6))) ; Statement: specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2660!1 var1039)
(declare-const var2470!7 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1039_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3325=([java.lang.StringBuilder], java.lang.Object)}
; {var1039=jdk.nashorn.internal.ir.debug.NashornTextifier, var2660=r5, var1161=r2, var200=null_type, var2687=r3, var1593=r4, var2470=$r0, var1803=$r1, var3616=0, var486=3, var3325=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1039, r5=var2660, r2=var1161, null_type=var200, r3=var2687, r4=var1593, $r0=var2470, $r1=var1803, 0=var3616, 3=var486, java.lang.Object=var3325}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("outer class ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if r3 == null goto staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 2