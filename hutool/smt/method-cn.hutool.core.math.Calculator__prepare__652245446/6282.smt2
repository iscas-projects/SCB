(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var429 0)
(declare-sort var3974 0)
(declare-sort var1406 0)
(declare-sort var1190 0)
(declare-sort var1205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1406-init () var1406)
(declare-fun <init>/995032529 (var1406) void)
(declare-fun var1190_valueOf/-1186540555 (Int) var1190)
(declare-fun push/1515821691 (var1406 var1205) var1205)
(declare-fun cast-from-var1190-to-var1205 (var1190) var1205)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun peek/1027344839 (var1406) var1205)
(declare-fun cast-from-var1205-to-var1190 (var1205) var1190)
(declare-fun charValue/305305773 (var1190) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var429 var429)
(declare-const null-String String)
(declare-const var2520 var429) ; Statement: r4 := @this: cn.hutool.core.math.Calculator 
(assert (not (= var2520 null-var429)))
(declare-const var1749 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1749 null-String)))
(define-const var3153 var1406 var1406-init) ; Statement: $r27 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var3153)) ; Statement: specialinvoke $r27.<java.util.Stack: void <init>()>() 

(declare-const var3153!1 var1406)
(define-const var154 var1190 (var1190_valueOf/-1186540555 44)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(44) 
(assert true)
;(assert (push/1515821691 var3153!1 (cast-from-var1190-to-var1205 var154))) ; Statement: virtualinvoke $r27.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r1) 

(declare-const var3153!2 var1406)
(declare-const var154!1 var1190)
(assert true)
(define-const var243 (Array Int Int) (toCharArray/415275702 var1749)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(define-const var1346 Int 0) ; Statement: i4 = 0 
(define-const var52 Int 0) ; Statement: i5 = 0 
(define-const var3528 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var1238 Int (getLength-Arr-Int-1 var243)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i6 >= $i0 goto (branch) 
(assert (>= var3528 var1238)) ; Cond: i6 >= $i0 
 ; Statement: if i5 > 1 goto $r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack> 
(assert (not (> var52 1))) ; Negate: Cond: i5 > 1  
 ; Statement: if i5 != 1 goto $r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>() 
(assert (not (= var52 1))) ; Cond: i5 != 1 
(assert true)
(define-const var3811 var1205 (peek/1027344839 var3153!2)) ; Statement: $r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>() 
(define-const var1906 var1190 (cast-from-var1205-to-var1190 var3811)) ; Statement: $r26 = (java.lang.Character) $r25 
(assert true)
(define-const var1135 Int (charValue/305305773 var1906)) ; Statement: $c8 = virtualinvoke $r26.<java.lang.Character: char charValue()>() 
(define-const var1345 Int (cast-from-Int-to-Int var1135)) ; Statement: $i13 = (int) $c8 
 ; Statement: if $i13 == 44 goto return 
(assert (= var1345 44)) ; Cond: $i13 == 44 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1406-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), var1190_valueOf/-1186540555=([char], java.lang.Character), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-var1190-to-var1205=([java.lang.Character], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), peek/1027344839=([java.util.Stack], java.lang.Object), cast-from-var1205-to-var1190=([java.lang.Object], java.lang.Character), charValue/305305773=([java.lang.Character], char), cast-from-Int-to-Int=([char], int)}
; {var429=cn.hutool.core.math.Calculator, var2520=r4, var1749=r2, var3974=null_type, var1406=java.util.Stack, var3153=$r27, var1190=java.lang.Character, var154=$r1, var1205=java.lang.Object, var243=r3, var1346=i4, var52=i5, var3528=i6, var1238=$i0, var3811=$r25, var1906=$r26, var1135=$c8, var1345=$i13}
; {cn.hutool.core.math.Calculator=var429, r4=var2520, r2=var1749, null_type=var3974, java.util.Stack=var1406, $r27=var3153, java.lang.Character=var1190, $r1=var154, java.lang.Object=var1205, r3=var243, i4=var1346, i5=var52, i6=var3528, $i0=var1238, $r25=var3811, $r26=var1906, $c8=var1135, $i13=var1345}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r4 := @this: cn.hutool.core.math.Calculator;	r2 := @parameter0: java.lang.String;	$r27 = new java.util.Stack;	specialinvoke $r27.<java.util.Stack: void <init>()>();	$r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(44);	virtualinvoke $r27.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r1);	r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	i4 = 0;	i5 = 0;	i6 = 0;	$i0 = lengthof r3;	if i6 >= $i0 goto (branch);	if i5 > 1 goto $r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack>;	if i5 != 1 goto $r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>();	$r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>();	$r26 = (java.lang.Character) $r25;	$c8 = virtualinvoke $r26.<java.lang.Character: char charValue()>();	$i13 = (int) $c8;	if $i13 == 44 goto return;	return
;block_num 6