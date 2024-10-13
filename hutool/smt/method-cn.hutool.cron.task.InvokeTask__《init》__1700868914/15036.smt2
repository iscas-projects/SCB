(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1849 0)
(declare-sort var2431 0)
(declare-sort var3497 0)
(declare-sort var1432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3497) void)
(declare-fun cast-from-var1849-to-var3497 (var1849) var3497)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var1432-init () var1432)
(declare-fun arr-var3497-init () (Array Int var3497))
(declare-fun cast-from-String-to-var3497 (String) var3497)
(declare-fun <init>/-636250543 (var1432 String (Array Int var3497)) void)
(declare-const null-var1849 var1849)
(declare-const null-String String)
(declare-const null-__Array__Int__var3497__ (Array Int var3497))
(declare-const var1081 var1849) ; Statement: r0 := @this: cn.hutool.cron.task.InvokeTask 
(assert (not (= var1081 null-var1849)))
(declare-const var902 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var902 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1849-to-var3497 var1081))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1081!1 var1849)
(assert true)
(define-const var2711 Int (lastIndexOf/-1292097097 var902 35)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(35) 
 ; Statement: if i1 > 0 goto (branch) 
(assert (> var2711 0)) ; Cond: i1 > 0 
 ; Statement: if i1 > 0 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (> var2711 0))) ; Negate: Cond: i1 > 0  
(define-const var3309 var1432 var1432-init) ; Statement: $r23 = new cn.hutool.core.exceptions.UtilException 
(define-const var3053 (Array Int var3497) arr-var3497-init) ; Statement: $r24 = newarray (java.lang.Object)[1] 
(declare-const var3053!1 (Array Int var3497))
(assert (not (= var3053!1 null-__Array__Int__var3497__)))
(assert (= (select var3053!1 0) (cast-from-String-to-var3497 var902))) ; Statement: $r24[0] = r1 
(assert true)
;(assert (<init>/-636250543 var3309 "Invalid classNameWithMethodName [{}]!" var3053!1)) ; Statement: specialinvoke $r23.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.String,java.lang.Object[])>("Invalid classNameWithMethodName [{}]!", $r24) 

(declare-const var3309!1 var1432)
(declare-const var421 String)
(declare-const var3053!2 (Array Int var3497))
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1849-to-var3497=([cn.hutool.cron.task.InvokeTask], java.lang.Object), lastIndexOf/-1292097097=([java.lang.String, int], int), var1432-init=([], cn.hutool.core.exceptions.UtilException), arr-var3497-init=([], java.lang.Object[]), cast-from-String-to-var3497=([java.lang.String], java.lang.Object), <init>/-636250543=([cn.hutool.core.exceptions.UtilException, java.lang.String, java.lang.Object[]], void)}
; {var1849=cn.hutool.cron.task.InvokeTask, var1081=r0, var902=r1, var2431=null_type, var3497=java.lang.Object, var2711=i1, var1432=cn.hutool.core.exceptions.UtilException, var3309=$r23, var3053=$r24, var421="Invalid classNameWithMethodName [{}]!"}
; {cn.hutool.cron.task.InvokeTask=var1849, r0=var1081, r1=var902, null_type=var2431, java.lang.Object=var3497, i1=var2711, cn.hutool.core.exceptions.UtilException=var1432, $r23=var3309, $r24=var3053, "Invalid classNameWithMethodName [{}]!"=var421}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: cn.hutool.cron.task.InvokeTask;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(35);	if i1 > 0 goto (branch);	if i1 > 0 goto r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r23 = new cn.hutool.core.exceptions.UtilException;	$r24 = newarray (java.lang.Object)[1];	$r24[0] = r1;	specialinvoke $r23.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.String,java.lang.Object[])>("Invalid classNameWithMethodName [{}]!", $r24);	throw $r23
;block_num 3