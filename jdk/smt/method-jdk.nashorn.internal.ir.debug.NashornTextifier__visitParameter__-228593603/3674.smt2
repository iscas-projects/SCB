(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1987 0)
(declare-sort var1534 0)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1987_appendAccess/-2076115506 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1987 var2069) void)
(declare-fun cast-from-String-to-var2069 (String) var2069)
(declare-const null-var1987 var1987)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var509 var1987) ; Statement: r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var509 null-var1987)))
(declare-const var2765 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2765 null-String)))
(declare-const var980 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var980 null-Int)))
(define-const var2725 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2725)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2725!1 String)
(assert (= var2725!1 ""))
(assert true)
(define-const var3126 String (append/672562846 var2725!1 "    ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2725!2 String)
(assert (= var2725!2 (str.++ var2725!1 "    ")))
(assert true)
;(assert (append/672562846 var3126 "// parameter ")) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// parameter ") 
(declare-const var3126!1 String)
(assert (= var3126!1 (str.++ var3126 "// parameter ")))
;(assert (var1987_appendAccess/-2076115506 var2725!2 var980)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0) 

(declare-const var2725!3 String)
(declare-const var980!1 Int)
(assert true)
(define-const var833 String (append/-1166366385 var2725!3 32)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2725!4 String)
(assert (str.prefixof var2725!3 var2725!4))
 ; Statement: if r2 != null goto $r6 = r2 
(assert (not (= var2765 null-String))) ; Cond: r2 != null 
(define-const var1643 String var2765) ; Statement: $r6 = r2 
(assert true) ; Non Conditional
(assert true)
(define-const var330 String (append/672562846 var833 var1643)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 var1643)))
(assert true)
;(assert (append/-1166366385 var330 10)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var330!1 String)
(assert (str.prefixof var330 var330!1))
(assert true)
;(assert (addText/1451988652 var509 (cast-from-String-to-var2069 var2725!4))) ; Statement: specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var509!1 var1987)
(declare-const var2725!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1987_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2069=([java.lang.StringBuilder], java.lang.Object)}
; {var1987=jdk.nashorn.internal.ir.debug.NashornTextifier, var509=r5, var2765=r2, var1534=null_type, var980=i0, var2725=$r0, var3126=$r1, var833=$r3, var1643=$r6, var330=$r4, var2069=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1987, r5=var509, r2=var2765, null_type=var1534, i0=var980, $r0=var2725, $r1=var3126, $r3=var833, $r6=var1643, $r4=var330, java.lang.Object=var2069}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r5 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// parameter ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	if r2 != null goto $r6 = r2;	$r6 = r2;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r5.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3