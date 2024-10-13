(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort var1544 0)
(declare-sort var2358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2369_appendAccess/-2076115506 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var2369 var2358) void)
(declare-fun cast-from-String-to-var2358 (String) var2358)
(declare-const null-var2369 var2369)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3836 var2369) ; Statement: r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3836 null-var2369)))
(declare-const var2624 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2624 null-String)))
(declare-const var3673 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3673 null-Int)))
(define-const var2192 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2192)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2192!1 String)
(assert (= var2192!1 ""))
(assert true)
(define-const var3488 String (append/672562846 var2192!1 "    ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2192!2 String)
(assert (= var2192!2 (str.++ var2192!1 "    ")))
(assert true)
;(assert (append/672562846 var3488 "// parameter ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// parameter ") 
(declare-const var3488!1 String)
(assert (= var3488!1 (str.++ var3488 "// parameter ")))
;(assert (var2369_appendAccess/-2076115506 var2192!2 var3673)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0) 

(declare-const var2192!3 String)
(declare-const var3673!1 Int)
(assert true)
(define-const var3358 String (append/-1166366385 var2192!3 32)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2192!4 String)
(assert (str.prefixof var2192!3 var2192!4))
 ; Statement: if r2 != null goto $r6 = r2 
(assert (not (not (= var2624 null-String)))) ; Negate: Cond: r2 != null  
(define-const var3444 String "<no name>") ; Statement: $r6 = "<no name>" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1521 String (append/672562846 var3358 var3444)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3358!1 String)
(assert (= var3358!1 (str.++ var3358 var3444)))
(assert true)
;(assert (append/-1166366385 var1521 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1521!1 String)
(assert (str.prefixof var1521 var1521!1))
(assert true)
;(assert (addText/1451988652 var3836 (cast-from-String-to-var2358 var2192!4))) ; Statement: specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var3836!1 var2369)
(declare-const var2192!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2369_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2358=([java.lang.StringBuilder], java.lang.Object)}
; {var2369=jdk.nashorn.internal.ir.debug.NashornTextifier, var3836=r5, var2624=r2, var1544=null_type, var3673=i0, var2192=$r0, var3488=$r1, var3358=$r3, var3444=$r6, var1521=$r4, var2358=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2369, r5=var3836, r2=var2624, null_type=var1544, i0=var3673, $r0=var2192, $r1=var3488, $r3=var3358, $r6=var3444, $r4=var1521, java.lang.Object=var2358}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// parameter ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if r2 != null goto $r6 = r2;	$r6 = "<no name>";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3