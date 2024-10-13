(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3646 0)
(declare-sort var2644 0)
(declare-sort var534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3646 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3646_appendDescriptor/-359262046 (String Int String) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun addText/1451988652 (var3646 var534) void)
(declare-fun cast-from-String-to-var534 (String) var534)
(declare-const null-var3646 var3646)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3972 var3646) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3972 null-var3646)))
(declare-const var807 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var807 null-Int)))
(declare-const var2323 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2323 null-String)))
(declare-const var599 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var599 null-String)))
(declare-const var3551 String) ; Statement: r6 := @parameter3: java.lang.String 
(assert (not (= var3551 null-String)))
(declare-const var184 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var184 null-Bool)))
(define-const var525 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var525)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var525!1 String)
(assert (= var525!1 ""))
(assert true)
(define-const var3125 String (appendOpcode/-2040334566 var3972 var525!1 var807)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
;(assert (append/-1166366385 var3125 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3125!1 String)
(assert (str.prefixof var3125 var3125!1))
;(assert (var3646_appendDescriptor/-359262046 var525!1 0 var2323)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3) 

(declare-const var525!2 String)
(declare-const var578 Int)
(declare-const var2323!1 String)
(assert true)
(define-const var348 String (append/-1166366385 var525!2 46)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var525!3 String)
(assert (str.prefixof var525!2 var525!3))
(assert true)
;(assert (append/672562846 var348 var599)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var348!1 String)
(assert (= var348!1 (str.++ var348 var599)))
;(assert (var3646_appendDescriptor/-359262046 var525!3 3 var3551)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r6) 

(declare-const var525!4 String)
(declare-const var2759 Int)
(declare-const var3551!1 String)
(assert true)
;(assert (append/-1166366385 var525!4 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var525!5 String)
(assert (str.prefixof var525!4 var525!5))
(assert true)
;(assert (addText/1451988652 var3972 (cast-from-String-to-var534 var525!5))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var3972!1 var3646)
(declare-const var525!6 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3646_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var534=([java.lang.StringBuilder], java.lang.Object)}
; {var3646=jdk.nashorn.internal.ir.debug.NashornTextifier, var3972=r1, var807=i0, var2323=r3, var2644=null_type, var599=r4, var3551=r6, var184=z0, var525=$r0, var3125=$r2, var578=0, var348=$r5, var2759=3, var534=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3646, r1=var3972, i0=var807, r3=var2323, null_type=var2644, r4=var599, r6=var3551, z0=var184, $r0=var525, $r2=var3125, 0=var578, $r5=var348, 3=var2759, java.lang.Object=var534}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r6 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 3, r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1