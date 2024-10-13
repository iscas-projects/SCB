(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var3191 0)
(declare-sort var1522 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun request/-139366882 (var1172) var3191)
(declare-fun append/-1031950772 (String var1522) String)
(declare-fun cast-from-var3191-to-var1522 (var3191) var1522)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun args/-139366882 (var1172) var2832)
(declare-fun var2832_iterator/-912451715 (var2832) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1172 var1172)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3901 var1172) ; Statement: r1 := @this: jdk.nashorn.internal.ir.RuntimeNode 
(assert (not (= var3901 null-var1172)))
(declare-const var3725 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3725 null-String)))
(declare-const var3665 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3665 null-Bool)))
(assert true)
;(assert (append/672562846 var3725 "ScriptRuntime.")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptRuntime.") 
(declare-const var3725!1 String)
(assert (= var3725!1 (str.++ var3725 "ScriptRuntime.")))
(define-const var1664 var3191 (request/-139366882 var3901)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.RuntimeNode: jdk.nashorn.internal.ir.RuntimeNode$Request request> 
(assert true)
;(assert (append/-1031950772 var3725!1 (cast-from-var3191-to-var1522 var1664))) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3725!2 String)
(assert (str.prefixof var3725!1 var3725!2))
(assert true)
;(assert (append/-1166366385 var3725!2 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3725!3 String)
(assert (str.prefixof var3725!2 var3725!3))
(define-const var975 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(define-const var1098 var2832 (args/-139366882 var3901)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.RuntimeNode: java.util.List args> 
(define-const var3713 Iterator (var2832_iterator/-912451715 var1098)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2900 Bool (Iterator_hasNext/-1669924200 var3713)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2900 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/-1166366385 var3725!3 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3725!4 String)
(assert (str.prefixof var3725!3 var3725!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), request/-139366882=([jdk.nashorn.internal.ir.RuntimeNode], jdk.nashorn.internal.ir.RuntimeNode$Request), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3191-to-var1522=([jdk.nashorn.internal.ir.RuntimeNode$Request], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), args/-139366882=([jdk.nashorn.internal.ir.RuntimeNode], java.util.List), var2832_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1172=jdk.nashorn.internal.ir.RuntimeNode, var3901=r1, var3725=r0, var3665=z1, var3191=jdk.nashorn.internal.ir.RuntimeNode$Request, var1664=$r2, var1522=java.lang.Object, var975=z2, var2832=java.util.List, var1098=$r3, var3713=r4, var2900=$z0}
; {jdk.nashorn.internal.ir.RuntimeNode=var1172, r1=var3901, r0=var3725, z1=var3665, jdk.nashorn.internal.ir.RuntimeNode$Request=var3191, $r2=var1664, java.lang.Object=var1522, z2=var975, java.util.List=var2832, $r3=var1098, r4=var3713, $z0=var2900}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.RuntimeNode;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptRuntime.");	$r2 = r1.<jdk.nashorn.internal.ir.RuntimeNode: jdk.nashorn.internal.ir.RuntimeNode$Request request>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	z2 = 1;	$r3 = r1.<jdk.nashorn.internal.ir.RuntimeNode: java.util.List args>;	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3