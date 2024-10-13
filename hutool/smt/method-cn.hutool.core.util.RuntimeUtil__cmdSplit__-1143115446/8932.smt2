(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var77 0)
(declare-sort var42 0)
(declare-sort var2260 0)
(declare-sort var2497 0)
(declare-sort var3708 0)
(declare-sort var3186 0)
(declare-sort var897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var42-init () var42)
(declare-fun <init>/-325640736 (var42) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2260-init () var2260)
(declare-fun <init>/995032529 (var2260) void)
(declare-fun var3708_strBuilder/-585293937 () var2497)
(declare-fun hasContent/-2097702494 (var2497) Bool)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var897_toArray/-775711681 (var897 (Array Int var3186)) (Array Int var3186))
(declare-fun cast-from-var42-to-var897 (var42) var897)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3186__ ((Array Int String)) (Array Int var3186))
(declare-fun cast-from-__Array__Int__var3186__-to-__Array__Int__String__ ((Array Int var3186)) (Array Int String))
(declare-const null-String String)
(declare-const var2333 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2333 null-String)))
(define-const var1316 var42 var42-init) ; Statement: $r12 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1316)) ; Statement: specialinvoke $r12.<java.util.ArrayList: void <init>()>() 

(declare-const var1316!1 var42)
(assert true)
(define-const var931 Int (length/-134980193 var2333)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var29 var2260 var2260-init) ; Statement: $r13 = new java.util.Stack 
(assert true)
;(assert (<init>/995032529 var29)) ; Statement: specialinvoke $r13.<java.util.Stack: void <init>()>() 

(declare-const var29!1 var2260)
(define-const var1699 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var732 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var74 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2872 var2497 var3708_strBuilder/-585293937) ; Statement: r3 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>() 
(define-const var1721 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $z0 = virtualinvoke r3.<cn.hutool.core.text.StrBuilder: boolean hasContent()>() 
(assert (>= var1721 var931)) ; Cond: i3 >= i0 
(assert true)
(define-const var3884 Bool (hasContent/-2097702494 var2872)) ; Statement: $z0 = virtualinvoke r3.<cn.hutool.core.text.StrBuilder: boolean hasContent()>() 
 ; Statement: if $z0 == 0 goto $r4 = newarray (java.lang.String)[0] 
(assert (= (ite var3884 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3044 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[0] 
(define-const var874 (Array Int var3186) (var897_toArray/-775711681 (cast-from-var42-to-var897 var1316!1) (cast-from-__Array__Int__String__-to-__Array__Int__var3186__ var3044))) ; Statement: $r5 = interfaceinvoke $r12.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4) 
(define-const var2566 (Array Int String) (cast-from-__Array__Int__var3186__-to-__Array__Int__String__ var874)) ; Statement: $r6 = (java.lang.String[]) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var42-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), var2260-init=([], java.util.Stack), <init>/995032529=([java.util.Stack], void), var3708_strBuilder/-585293937=([], cn.hutool.core.text.StrBuilder), hasContent/-2097702494=([cn.hutool.core.text.StrBuilder], boolean), arr-String-init=([], java.lang.String[]), var897_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-var42-to-var897=([java.util.ArrayList], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var3186__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var3186__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var2333=r1, var77=null_type, var42=java.util.ArrayList, var1316=$r12, var931=i0, var2260=java.util.Stack, var29=$r13, var1699=z1, var732=z3, var74=z2, var2497=cn.hutool.core.text.StrBuilder, var3708=cn.hutool.core.util.StrUtil, var2872=r3, var1721=i3, var3884=$z0, var3044=$r4, var3186=java.lang.Object, var897=java.util.List, var874=$r5, var2566=$r6}
; {r1=var2333, null_type=var77, java.util.ArrayList=var42, $r12=var1316, i0=var931, java.util.Stack=var2260, $r13=var29, z1=var1699, z3=var732, z2=var74, cn.hutool.core.text.StrBuilder=var2497, cn.hutool.core.util.StrUtil=var3708, r3=var2872, i3=var1721, $z0=var3884, $r4=var3044, java.lang.Object=var3186, java.util.List=var897, $r5=var874, $r6=var2566}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r12 = new java.util.ArrayList;	specialinvoke $r12.<java.util.ArrayList: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r13 = new java.util.Stack;	specialinvoke $r13.<java.util.Stack: void <init>()>();	z1 = 0;	z3 = 0;	z2 = 0;	r3 = staticinvoke <cn.hutool.core.util.StrUtil: cn.hutool.core.text.StrBuilder strBuilder()>();	i3 = 0;	if i3 >= i0 goto $z0 = virtualinvoke r3.<cn.hutool.core.text.StrBuilder: boolean hasContent()>();	$z0 = virtualinvoke r3.<cn.hutool.core.text.StrBuilder: boolean hasContent()>();	if $z0 == 0 goto $r4 = newarray (java.lang.String)[0];	$r4 = newarray (java.lang.String)[0];	$r5 = interfaceinvoke $r12.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4);	$r6 = (java.lang.String[]) $r5;	return $r6
;block_num 4