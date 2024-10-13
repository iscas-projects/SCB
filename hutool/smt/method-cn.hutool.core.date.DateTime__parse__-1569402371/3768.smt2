(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2336 0)
(declare-sort var40 0)
(declare-sort var3070 0)
(declare-sort var2031 0)
(declare-sort var3622 0)
(declare-sort var1991 0)
(declare-sort var3728 0)
(declare-sort var1285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var40-init () (Array Int var40))
(declare-fun var3070_notBlank/-161903167 (String String (Array Int var40)) String)
(declare-fun cast-from-var2336-to-var3622 (var2336) var3622)
(declare-fun toPattern/-1065589675 (var3622) String)
(declare-fun var1991-init () var1991)
(declare-fun cast-from-String-to-var40 (String) var40)
(declare-fun var3728_format/-950946974 (String (Array Int var40)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/1782567960 (var1991 String var1285) void)
(declare-fun cast-from-var2031-to-var1285 (var2031) var1285)
(declare-const null-String String)
(declare-const null-var2336 var2336)
(declare-const null-var2031 var2031)
(declare-const null-__Array__Int__var40__ (Array Int var40))
(declare-const var3538 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3538 null-String)))
(declare-const var961 var2336) ; Statement: r2 := @parameter1: java.text.DateFormat 
(assert (not (= var961 null-var2336)))
(define-const var1480 (Array Int var40) arr-var40-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3070_notBlank/-161903167 var3538 "Date String must be not blank !" var1480)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1) 

(declare-const var3538!1 String)
(declare-const var140 String)
(declare-const var1480!1 (Array Int var40))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1467 var2031) ; Statement: $r5 := @caughtexception 
(assert (not (= var1467 null-var2031)))
(define-const var605 Bool false) ; Statement: $z0 = r2 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= (ite var605 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var974 var3622 (cast-from-var2336-to-var3622 var961)) ; Statement: $r9 = (java.text.SimpleDateFormat) r2 
(assert true)
(define-const var2842 String (toPattern/-1065589675 var974)) ; Statement: r10 = virtualinvoke $r9.<java.text.SimpleDateFormat: java.lang.String toPattern()>() 
 ; Statement: goto [?= $r6 = new cn.hutool.core.date.DateException] 
(assert true) ; Non Conditional
(define-const var1162 var1991 var1991-init) ; Statement: $r6 = new cn.hutool.core.date.DateException 
(define-const var3670 (Array Int var40) arr-var40-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var3670!1 (Array Int var40))
(assert (not (= var3670!1 null-__Array__Int__var40__)))
(assert (= (select var3670!1 0) (cast-from-String-to-var40 var3538!1))) ; Statement: $r7[0] = r0 
(declare-const var3670!2 (Array Int var40))
(assert (not (= var3670!2 null-__Array__Int__var40__)))
(assert (= (select var3670!2 1) (cast-from-String-to-var40 var2842))) ; Statement: $r7[1] = r10 
(define-const var2323 String (var3728_format/-950946974 (cast-from-String-to-String "Parse [{}] with format [{}] error!") var3670!2)) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Parse [{}] with format [{}] error!", $r7) 
(assert true)
;(assert (<init>/1782567960 var1162 var2323 (cast-from-var2031-to-var1285 var1467))) ; Statement: specialinvoke $r6.<cn.hutool.core.date.DateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r5) 

(declare-const var1162!1 var1991)
(declare-const var2323!1 String)
(declare-const var1467!1 var2031)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var40-init=([], java.lang.Object[]), var3070_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-var2336-to-var3622=([java.text.DateFormat], java.text.SimpleDateFormat), toPattern/-1065589675=([java.text.SimpleDateFormat], java.lang.String), var1991-init=([], cn.hutool.core.date.DateException), cast-from-String-to-var40=([java.lang.CharSequence], java.lang.Object), var3728_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/1782567960=([cn.hutool.core.date.DateException, java.lang.String, java.lang.Throwable], void), cast-from-var2031-to-var1285=([java.lang.Exception], java.lang.Throwable)}
; {var3538=r0, var2336=java.text.DateFormat, var961=r2, var40=java.lang.Object, var1480=$r1, var3070=cn.hutool.core.lang.Assert, var140="Date String must be not blank !", var2031=java.lang.Exception, var1467=$r5, var605=$z0, var3622=java.text.SimpleDateFormat, var974=$r9, var2842=r10, var1991=cn.hutool.core.date.DateException, var1162=$r6, var3670=$r7, var3728=cn.hutool.core.text.CharSequenceUtil, var2323=$r8, var1285=java.lang.Throwable}
; {r0=var3538, java.text.DateFormat=var2336, r2=var961, java.lang.Object=var40, $r1=var1480, cn.hutool.core.lang.Assert=var3070, "Date String must be not blank !"=var140, java.lang.Exception=var2031, $r5=var1467, $z0=var605, java.text.SimpleDateFormat=var3622, $r9=var974, r10=var2842, cn.hutool.core.date.DateException=var1991, $r6=var1162, $r7=var3670, cn.hutool.core.text.CharSequenceUtil=var3728, $r8=var2323, java.lang.Throwable=var1285}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.text.DateFormat;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1);	$r5 := @caughtexception;	$z0 = r2 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$r9 = (java.text.SimpleDateFormat) r2;	r10 = virtualinvoke $r9.<java.text.SimpleDateFormat: java.lang.String toPattern()>();	goto [?= $r6 = new cn.hutool.core.date.DateException];	$r6 = new cn.hutool.core.date.DateException;	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r0;	$r7[1] = r10;	$r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Parse [{}] with format [{}] error!", $r7);	specialinvoke $r6.<cn.hutool.core.date.DateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r5);	throw $r6
;block_num 4