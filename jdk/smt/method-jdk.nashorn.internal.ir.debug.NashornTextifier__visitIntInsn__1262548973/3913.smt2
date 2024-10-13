(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3811 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun addText/1451988652 (var3811 var180) void)
(declare-fun cast-from-String-to-var180 (String) var180)
(declare-const null-var3811 var3811)
(declare-const null-Int Int)
(declare-const var3811-TYPES (Array Int String))
(declare-const var2657 var3811) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2657 null-var3811)))
(declare-const var2417 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2417 null-Int)))
(declare-const var1235 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1235 null-Int)))
(define-const var499 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var499)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var499!1 String)
(assert (= var499!1 ""))
(assert true)
(define-const var3341 String (appendOpcode/-2040334566 var2657 var499!1 var2417)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
(define-const var380 String (append/-1166366385 var3341 32)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3341!1 String)
(assert (str.prefixof var3341 var3341!1))
 ; Statement: if i0 != 188 goto $r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1) 
(assert (not (not (= var2417 188)))) ; Negate: Cond: i0 != 188  
(define-const var224 (Array Int String) var3811-TYPES) ; Statement: $r5 = <jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String[] TYPES> 
(define-const var3748 String (select var224 var1235)) ; Statement: $r6 = $r5[i1] 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3306 String (append/672562846 var380 var3748)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var380!1 String)
(assert (= var380!1 (str.++ var380 var3748)))
(assert true)
;(assert (append/-1166366385 var3306 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3306!1 String)
(assert (str.prefixof var3306 var3306!1))
(assert true)
;(assert (addText/1451988652 var2657 (cast-from-String-to-var180 var499!1))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2657!1 var3811)
(declare-const var499!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var180=([java.lang.StringBuilder], java.lang.Object)}
; {var3811=jdk.nashorn.internal.ir.debug.NashornTextifier, var2657=r1, var2417=i0, var1235=i1, var499=$r0, var3341=$r2, var380=$r3, var224=$r5, var3748=$r6, var3306=$r4, var180=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3811, r1=var2657, i0=var2417, i1=var1235, $r0=var499, $r2=var3341, $r3=var380, $r5=var224, $r6=var3748, $r4=var3306, java.lang.Object=var180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if i0 != 188 goto $r6 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i1);	$r5 = <jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String[] TYPES>;	$r6 = $r5[i1];	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3