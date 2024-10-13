(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3119 0)
(declare-sort var3328 0)
(declare-sort var1053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastWasEllipse/-340627520 (var3119) Bool)
(declare-fun lastWasNop/-340627520 (var3119) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3119 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var3119 var3328) void)
(declare-fun cast-from-String-to-var3328 (String) var3328)
(declare-fun checkNoFallThru/-7285554 (var3119 Int String) void)
(declare-const null-var3119 var3119)
(declare-const null-Int Int)
(declare-const null-NullType var1053)
(declare-const null-String String)
(declare-const var3462 var3119) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3462 null-var3119)))
(declare-const var2204 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2204 null-Int)))
 ; Statement: if i0 != 0 goto r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasEllipse> = 0 
(assert (not (= var2204 0))) ; Cond: i0 != 0 
(declare-const var3462!1 var3119)
(assert (not (= var3462!1 null-var3119)))
(assert (= (lastWasEllipse/-340627520 var3462!1) (ite (= 1 0) true false))) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasEllipse> = 0 
(declare-const var3462!2 var3119)
(assert (not (= var3462!2 null-var3119)))
(assert (= (lastWasNop/-340627520 var3462!2) (ite (= 1 0) true false))) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasNop> = 0 
(assert true) ; Non Conditional
(define-const var3692 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3692)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3692!1 String)
(assert (= var3692!1 ""))
(assert true)
(define-const var1792 String (appendOpcode/-2040334566 var3462!2 var3692!1 var2204)) ; Statement: $r2 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r1, i0) 
(assert true)
;(assert (append/-1166366385 var1792 10)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1792!1 String)
(assert (str.prefixof var1792 var1792!1))
(assert true)
;(assert (addText/1451988652 var3462!2 (cast-from-String-to-var3328 var3692!1))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r1) 

(declare-const var3462!3 var3119)
(declare-const var3692!2 String)
(assert true)
;(assert (checkNoFallThru/-7285554 var3462!3 var2204 null-String)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void checkNoFallThru(int,java.lang.String)>(i0, null) 

(declare-const var3462!4 var3119)
(declare-const var2204!1 Int)
(declare-const var2380 var1053)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastWasEllipse/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], boolean), lastWasNop/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3328=([java.lang.StringBuilder], java.lang.Object), checkNoFallThru/-7285554=([jdk.nashorn.internal.ir.debug.NashornTextifier, int, java.lang.String], void)}
; {var3119=jdk.nashorn.internal.ir.debug.NashornTextifier, var3462=r0, var2204=i0, var3692=$r1, var1792=$r2, var3328=java.lang.Object, var1053=null_type, var2380=null}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3119, r0=var3462, i0=var2204, $r1=var3692, $r2=var1792, java.lang.Object=var3328, null_type=var1053, null=var2380}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	if i0 != 0 goto r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasEllipse> = 0;	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasEllipse> = 0;	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean lastWasNop> = 0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r1, i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r1);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void checkNoFallThru(int,java.lang.String)>(i0, null);	return
;block_num 3