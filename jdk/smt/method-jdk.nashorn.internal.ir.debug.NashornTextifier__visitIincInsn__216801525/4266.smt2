(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1588 0)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var1588 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun addText/1451988652 (var1588 var2979) void)
(declare-fun cast-from-String-to-var2979 (String) var2979)
(declare-const null-var1588 var1588)
(declare-const null-Int Int)
(declare-const var320 var1588) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var320 null-var1588)))
(declare-const var3087 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3087 null-Int)))
(declare-const var3418 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3418 null-Int)))
(define-const var3136 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3136)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3136!1 String)
(assert (= var3136!1 ""))
(assert true)
(define-const var46 String (appendOpcode/-2040334566 var320 var3136!1 132)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 132) 
(assert true)
;(assert (append/-1166366385 var46 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var46!1 String)
(assert (str.prefixof var46 var46!1))
(assert true)
(define-const var440 String (append/-1001720160 var3136!1 var3087)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3136!2 String)
(assert (str.prefixof var3136!1 var3136!2))
(assert true)
(define-const var1686 String (append/-1166366385 var440 32)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var440!1 String)
(assert (str.prefixof var440 var440!1))
(assert true)
(define-const var3229 String (append/-1001720160 var1686 var3418)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1686!1 String)
(assert (str.prefixof var1686 var1686!1))
(assert true)
;(assert (append/-1166366385 var3229 10)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3229!1 String)
(assert (str.prefixof var3229 var3229!1))
(assert true)
;(assert (addText/1451988652 var320 (cast-from-String-to-var2979 var3136!2))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var320!1 var1588)
(declare-const var3136!3 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2979=([java.lang.StringBuilder], java.lang.Object)}
; {var1588=jdk.nashorn.internal.ir.debug.NashornTextifier, var320=r1, var3087=i0, var3418=i1, var3136=$r0, var46=$r2, var440=$r3, var1686=$r4, var3229=$r5, var2979=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1588, r1=var320, i0=var3087, i1=var3418, $r0=var3136, $r2=var46, $r3=var440, $r4=var1686, $r5=var3229, java.lang.Object=var2979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 132);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1