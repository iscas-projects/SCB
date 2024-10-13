(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3408 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3408 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun addText/1451988652 (var3408 var2937) void)
(declare-fun cast-from-String-to-var2937 (String) var2937)
(declare-const null-var3408 var3408)
(declare-const null-Int Int)
(declare-const var828 var3408) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var828 null-var3408)))
(declare-const var2753 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2753 null-Int)))
(declare-const var370 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var370 null-Int)))
(define-const var756 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var756)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var756!1 String)
(assert (= var756!1 ""))
(assert true)
(define-const var1724 String (appendOpcode/-2040334566 var828 var756!1 var2753)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
(define-const var1768 String (append/-1166366385 var1724 32)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1724!1 String)
(assert (str.prefixof var1724 var1724!1))
 ; Statement: if i0 != 188 goto $r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (= var2753 188))) ; Cond: i0 != 188 
(define-const var1175 String (Int_toString/1350422511 var370)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2350 String (append/672562846 var1768 var1175)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var1175)))
(assert true)
;(assert (append/-1166366385 var2350 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2350!1 String)
(assert (str.prefixof var2350 var2350!1))
(assert true)
;(assert (addText/1451988652 var828 (cast-from-String-to-var2937 var756!1))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var828!1 var3408)
(declare-const var756!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), Int_toString/1350422511=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2937=([java.lang.StringBuilder], java.lang.Object)}
; {var3408=jdk.nashorn.internal.ir.debug.NashornTextifier, var828=r1, var2753=i0, var370=i1, var756=$r0, var1724=$r2, var1768=$r3, var1175=$r6, var2350=$r4, var2937=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3408, r1=var828, i0=var2753, i1=var370, $r0=var756, $r2=var1724, $r3=var1768, $r6=var1175, $r4=var2350, java.lang.Object=var2937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if i0 != 188 goto $r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3