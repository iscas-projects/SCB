(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3423 0)
(declare-sort var307 0)
(declare-sort var2304 0)
(declare-sort var3007 0)
(declare-sort var3377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2304-init () var2304)
(declare-fun arr-var3007-init () (Array Int var3007))
(declare-fun cast-from-String-to-var3007 (String) var3007)
(declare-fun <init>/2043224849 (var2304 var3377 String (Array Int var3007)) void)
(declare-fun cast-from-var307-to-var3377 (var307) var3377)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var307 var307)
(declare-const null-__Array__Int__var3007__ (Array Int var3007))
(declare-const var2396 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2396 null-String)))
(declare-const var3167 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3167 null-Bool)))
(assert true)
(define-const var2486 String (replace/2138489945 var2396 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3557 var307) ; Statement: $r9 := @caughtexception 
(assert (not (= var3557 null-var307)))
(define-const var2929 var2304 var2304-init) ; Statement: $r10 = new cn.hutool.core.exceptions.UtilException 
(define-const var2997 (Array Int var3007) arr-var3007-init) ; Statement: $r11 = newarray (java.lang.Object)[1] 
(declare-const var2997!1 (Array Int var3007))
(assert (not (= var2997!1 null-__Array__Int__var3007__)))
(assert (= (select var2997!1 0) (cast-from-String-to-var3007 var2486))) ; Statement: $r11[0] = r1 
(assert true)
;(assert (<init>/2043224849 var2929 (cast-from-var307-to-var3377 var3557) "Loading classPath [{}] error!" var2997!1)) ; Statement: specialinvoke $r10.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.Throwable,java.lang.String,java.lang.Object[])>($r9, "Loading classPath [{}] error!", $r11) 

(declare-const var2929!1 var2304)
(declare-const var3557!1 var307)
(declare-const var2239 String)
(declare-const var2997!2 (Array Int var3007))
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2304-init=([], cn.hutool.core.exceptions.UtilException), arr-var3007-init=([], java.lang.Object[]), cast-from-String-to-var3007=([java.lang.String], java.lang.Object), <init>/2043224849=([cn.hutool.core.exceptions.UtilException, java.lang.Throwable, java.lang.String, java.lang.Object[]], void), cast-from-var307-to-var3377=([java.io.IOException], java.lang.Throwable)}
; {var2396=r0, var3423=null_type, var3167=z1, var2486=r1, var307=java.io.IOException, var3557=$r9, var2304=cn.hutool.core.exceptions.UtilException, var2929=$r10, var3007=java.lang.Object, var2997=$r11, var3377=java.lang.Throwable, var2239="Loading classPath [{}] error!"}
; {r0=var2396, null_type=var3423, z1=var3167, r1=var2486, java.io.IOException=var307, $r9=var3557, cn.hutool.core.exceptions.UtilException=var2304, $r10=var2929, java.lang.Object=var3007, $r11=var2997, java.lang.Throwable=var3377, "Loading classPath [{}] error!"=var2239}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r9 := @caughtexception;	$r10 = new cn.hutool.core.exceptions.UtilException;	$r11 = newarray (java.lang.Object)[1];	$r11[0] = r1;	specialinvoke $r10.<cn.hutool.core.exceptions.UtilException: void <init>(java.lang.Throwable,java.lang.String,java.lang.Object[])>($r9, "Loading classPath [{}] error!", $r11);	throw $r10
;block_num 2