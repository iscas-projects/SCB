(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1847 0)
(declare-sort var981 0)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var1847 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1847_appendDescriptor/-359262046 (String Int String) void)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun addText/1451988652 (var1847 var3340) void)
(declare-fun cast-from-String-to-var3340 (String) var3340)
(declare-const null-var1847 var1847)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2369 var1847) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2369 null-var1847)))
(declare-const var1926 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1926 null-String)))
(declare-const var657 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var657 null-Int)))
(define-const var2851 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2851)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2851!1 String)
(assert (= var2851!1 ""))
(assert true)
(define-const var3695 String (appendOpcode/-2040334566 var2369 var2851!1 197)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 197) 
(assert true)
;(assert (append/-1166366385 var3695 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3695!1 String)
(assert (str.prefixof var3695 var3695!1))
;(assert (var1847_appendDescriptor/-359262046 var2851!1 1 var1926)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r3) 

(declare-const var2851!2 String)
(declare-const var2266 Int)
(declare-const var1926!1 String)
(assert true)
(define-const var1382 String (append/-1166366385 var2851!2 32)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2851!3 String)
(assert (str.prefixof var2851!2 var2851!3))
(assert true)
(define-const var2553 String (append/-1001720160 var1382 var657)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1382!1 String)
(assert (str.prefixof var1382 var1382!1))
(assert true)
;(assert (append/-1166366385 var2553 10)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2553!1 String)
(assert (str.prefixof var2553 var2553!1))
(assert true)
;(assert (addText/1451988652 var2369 (cast-from-String-to-var3340 var2851!3))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2369!1 var1847)
(declare-const var2851!4 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1847_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3340=([java.lang.StringBuilder], java.lang.Object)}
; {var1847=jdk.nashorn.internal.ir.debug.NashornTextifier, var2369=r1, var1926=r3, var981=null_type, var657=i0, var2851=$r0, var3695=$r2, var2266=1, var1382=$r4, var2553=$r5, var3340=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1847, r1=var2369, r3=var1926, null_type=var981, i0=var657, $r0=var2851, $r2=var3695, 1=var2266, $r4=var1382, $r5=var2553, java.lang.Object=var3340}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r3 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 197);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1