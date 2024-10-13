(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var437 0)
(declare-sort var2319 0)
(declare-sort var1346 0)
(declare-sort var826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2319-init () var2319)
(declare-fun <init>/995032529 (var2319) void)
(declare-fun var1346_valueOf/-1186540555 (Int) var1346)
(declare-fun push/1515821691 (var2319 var826) var826)
(declare-fun cast-from-var1346-to-var826 (var1346) var826)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun postfixStack/1738041503 (var931) var2319)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun cast-from-String-to-var826 (String) var826)
(declare-fun peek/1027344839 (var2319) var826)
(declare-fun cast-from-var826-to-var1346 (var826) var1346)
(declare-fun charValue/305305773 (var1346) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var931 var931)
(declare-const null-String String)
(declare-const var953 var931) ; Statement: r4 := @this: cn.hutool.core.math.Calculator 
(assert (not (= var953 null-var931)))
(declare-const var3937 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3937 null-String)))
(define-const var3262 var2319 var2319-init) ; Statement: $r27 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var3262)) ; Statement: specialinvoke $r27.<java.util.Stack: void <init>()>() 

(declare-const var3262!1 var2319)
(define-const var3172 var1346 (var1346_valueOf/-1186540555 44)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(44) 
(assert true)
;(assert (push/1515821691 var3262!1 (cast-from-var1346-to-var826 var3172))) ; Statement: virtualinvoke $r27.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r1) 

(declare-const var3262!2 var2319)
(declare-const var3172!1 var1346)
(assert true)
(define-const var3317 (Array Int Int) (toCharArray/415275702 var3937)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>() 
(define-const var1694 Int 0) ; Statement: i4 = 0 
(define-const var722 Int 0) ; Statement: i5 = 0 
(define-const var2617 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var3778 Int (getLength-Arr-Int-1 var3317)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i6 >= $i0 goto (branch) 
(assert (>= var2617 var3778)) ; Cond: i6 >= $i0 
 ; Statement: if i5 > 1 goto $r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack> 
(assert (> var722 1)) ; Cond: i5 > 1 
(define-const var1254 var2319 (postfixStack/1738041503 var953)) ; Statement: $r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack> 
(define-const var752 String String-init) ; Statement: $r29 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var752 var3317 var1694 var722)) ; Statement: specialinvoke $r29.<java.lang.String: void <init>(char[],int,int)>(r3, i4, i5) 

(declare-const var752!1 String)
(declare-const var3317!1 (Array Int Int))
(declare-const var1694!1 Int)
(declare-const var722!1 Int)
(assert true)
;(assert (push/1515821691 var1254 (cast-from-String-to-var826 var752!1))) ; Statement: virtualinvoke $r6.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r29) 

(declare-const var1254!1 var2319)
(declare-const var752!2 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2005 var826 (peek/1027344839 var3262!2)) ; Statement: $r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>() 
(define-const var3365 var1346 (cast-from-var826-to-var1346 var2005)) ; Statement: $r26 = (java.lang.Character) $r25 
(assert true)
(define-const var1231 Int (charValue/305305773 var3365)) ; Statement: $c8 = virtualinvoke $r26.<java.lang.Character: char charValue()>() 
(define-const var3672 Int (cast-from-Int-to-Int var1231)) ; Statement: $i13 = (int) $c8 
 ; Statement: if $i13 == 44 goto return 
(assert (= var3672 44)) ; Cond: $i13 == 44 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2319-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), var1346_valueOf/-1186540555=([char], java.lang.Character), push/1515821691=([java.util.Stack, java.lang.Object], java.lang.Object), cast-from-var1346-to-var826=([java.lang.Character], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), postfixStack/1738041503=([cn.hutool.core.math.Calculator], java.util.Stack), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), cast-from-String-to-var826=([java.lang.String], java.lang.Object), peek/1027344839=([java.util.Stack], java.lang.Object), cast-from-var826-to-var1346=([java.lang.Object], java.lang.Character), charValue/305305773=([java.lang.Character], char), cast-from-Int-to-Int=([char], int)}
; {var931=cn.hutool.core.math.Calculator, var953=r4, var3937=r2, var437=null_type, var2319=java.util.Stack, var3262=$r27, var1346=java.lang.Character, var3172=$r1, var826=java.lang.Object, var3317=r3, var1694=i4, var722=i5, var2617=i6, var3778=$i0, var1254=$r6, var752=$r29, var2005=$r25, var3365=$r26, var1231=$c8, var3672=$i13}
; {cn.hutool.core.math.Calculator=var931, r4=var953, r2=var3937, null_type=var437, java.util.Stack=var2319, $r27=var3262, java.lang.Character=var1346, $r1=var3172, java.lang.Object=var826, r3=var3317, i4=var1694, i5=var722, i6=var2617, $i0=var3778, $r6=var1254, $r29=var752, $r25=var2005, $r26=var3365, $c8=var1231, $i13=var3672}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r4 := @this: cn.hutool.core.math.Calculator;	r2 := @parameter0: java.lang.String;	$r27 = new java.util.Stack;	specialinvoke $r27.<java.util.Stack: void <init>()>();	$r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>(44);	virtualinvoke $r27.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r1);	r3 = virtualinvoke r2.<java.lang.String: char[] toCharArray()>();	i4 = 0;	i5 = 0;	i6 = 0;	$i0 = lengthof r3;	if i6 >= $i0 goto (branch);	if i5 > 1 goto $r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack>;	$r6 = r4.<cn.hutool.core.math.Calculator: java.util.Stack postfixStack>;	$r29 = new java.lang.String;	specialinvoke $r29.<java.lang.String: void <init>(char[],int,int)>(r3, i4, i5);	virtualinvoke $r6.<java.util.Stack: java.lang.Object push(java.lang.Object)>($r29);	$r25 = virtualinvoke $r27.<java.util.Stack: java.lang.Object peek()>();	$r26 = (java.lang.Character) $r25;	$c8 = virtualinvoke $r26.<java.lang.Character: char charValue()>();	$i13 = (int) $c8;	if $i13 == 44 goto return;	return
;block_num 6