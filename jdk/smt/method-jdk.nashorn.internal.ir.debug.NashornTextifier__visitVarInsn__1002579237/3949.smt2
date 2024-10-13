(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var182 0)
(declare-sort var2034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var182 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun addText/1451988652 (var182 var2034) void)
(declare-fun cast-from-String-to-var2034 (String) var2034)
(declare-const null-var182 var182)
(declare-const null-Int Int)
(declare-const var694 var182) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var694 null-var182)))
(declare-const var2337 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2337 null-Int)))
(declare-const var2172 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2172 null-Int)))
(define-const var2193 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2193)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2193!1 String)
(assert (= var2193!1 ""))
(assert true)
(define-const var3739 String (appendOpcode/-2040334566 var694 var2193!1 var2337)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
(define-const var1300 String (append/-1166366385 var3739 32)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3739!1 String)
(assert (str.prefixof var3739 var3739!1))
(assert true)
(define-const var3578 String (append/-1001720160 var1300 var2172)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1300!1 String)
(assert (str.prefixof var1300 var1300!1))
(assert true)
;(assert (append/-1166366385 var3578 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3578!1 String)
(assert (str.prefixof var3578 var3578!1))
(assert true)
;(assert (addText/1451988652 var694 (cast-from-String-to-var2034 var2193!1))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var694!1 var182)
(declare-const var2193!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2034=([java.lang.StringBuilder], java.lang.Object)}
; {var182=jdk.nashorn.internal.ir.debug.NashornTextifier, var694=r1, var2337=i0, var2172=i1, var2193=$r0, var3739=$r2, var1300=$r3, var3578=$r4, var2034=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var182, r1=var694, i0=var2337, i1=var2172, $r0=var2193, $r2=var3739, $r3=var1300, $r4=var3578, java.lang.Object=var2034}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1