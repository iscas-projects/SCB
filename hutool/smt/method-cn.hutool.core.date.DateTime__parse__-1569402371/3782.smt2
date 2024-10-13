(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3695 0)
(declare-sort var3544 0)
(declare-sort var2285 0)
(declare-sort var2889 0)
(declare-sort var132 0)
(declare-sort var562 0)
(declare-sort var3918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3544-init () (Array Int var3544))
(declare-fun var2285_notBlank/-161903167 (String String (Array Int var3544)) String)
(declare-fun toString/-522406933 (var3544) String)
(declare-fun cast-from-var3695-to-var3544 (var3695) var3544)
(declare-fun var132-init () var132)
(declare-fun cast-from-String-to-var3544 (String) var3544)
(declare-fun var562_format/-950946974 (String (Array Int var3544)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun <init>/1782567960 (var132 String var3918) void)
(declare-fun cast-from-var2889-to-var3918 (var2889) var3918)
(declare-const null-String String)
(declare-const null-var3695 var3695)
(declare-const null-var2889 var2889)
(declare-const null-__Array__Int__var3544__ (Array Int var3544))
(declare-const var528 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var528 null-String)))
(declare-const var1428 var3695) ; Statement: r2 := @parameter1: java.text.DateFormat 
(assert (not (= var1428 null-var3695)))
(define-const var1095 (Array Int var3544) arr-var3544-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2285_notBlank/-161903167 var528 "Date String must be not blank !" var1095)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1) 

(declare-const var528!1 String)
(declare-const var3355 String)
(declare-const var1095!1 (Array Int var3544))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1078 var2889) ; Statement: $r5 := @caughtexception 
(assert (not (= var1078 null-var2889)))
(define-const var2096 Bool false) ; Statement: $z0 = r2 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var2096 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3191 String (toString/-522406933 (cast-from-var3695-to-var3544 var1428))) ; Statement: r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1192 var132 var132-init) ; Statement: $r6 = new cn.hutool.core.date.DateException 
(define-const var3724 (Array Int var3544) arr-var3544-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var3724!1 (Array Int var3544))
(assert (not (= var3724!1 null-__Array__Int__var3544__)))
(assert (= (select var3724!1 0) (cast-from-String-to-var3544 var528!1))) ; Statement: $r7[0] = r0 
(declare-const var3724!2 (Array Int var3544))
(assert (not (= var3724!2 null-__Array__Int__var3544__)))
(assert (= (select var3724!2 1) (cast-from-String-to-var3544 var3191))) ; Statement: $r7[1] = r10 
(define-const var3658 String (var562_format/-950946974 (cast-from-String-to-String "Parse [{}] with format [{}] error!") var3724!2)) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Parse [{}] with format [{}] error!", $r7) 
(assert true)
;(assert (<init>/1782567960 var1192 var3658 (cast-from-var2889-to-var3918 var1078))) ; Statement: specialinvoke $r6.<cn.hutool.core.date.DateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r5) 

(declare-const var1192!1 var132)
(declare-const var3658!1 String)
(declare-const var1078!1 var2889)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3544-init=([], java.lang.Object[]), var2285_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3695-to-var3544=([java.text.DateFormat], java.lang.Object), var132-init=([], cn.hutool.core.date.DateException), cast-from-String-to-var3544=([java.lang.CharSequence], java.lang.Object), var562_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/1782567960=([cn.hutool.core.date.DateException, java.lang.String, java.lang.Throwable], void), cast-from-var2889-to-var3918=([java.lang.Exception], java.lang.Throwable)}
; {var528=r0, var3695=java.text.DateFormat, var1428=r2, var3544=java.lang.Object, var1095=$r1, var2285=cn.hutool.core.lang.Assert, var3355="Date String must be not blank !", var2889=java.lang.Exception, var1078=$r5, var2096=$z0, var3191=r10, var132=cn.hutool.core.date.DateException, var1192=$r6, var3724=$r7, var562=cn.hutool.core.text.CharSequenceUtil, var3658=$r8, var3918=java.lang.Throwable}
; {r0=var528, java.text.DateFormat=var3695, r2=var1428, java.lang.Object=var3544, $r1=var1095, cn.hutool.core.lang.Assert=var2285, "Date String must be not blank !"=var3355, java.lang.Exception=var2889, $r5=var1078, $z0=var2096, r10=var3191, cn.hutool.core.date.DateException=var132, $r6=var1192, $r7=var3724, cn.hutool.core.text.CharSequenceUtil=var562, $r8=var3658, java.lang.Throwable=var3918}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.text.DateFormat;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Date String must be not blank !", $r1);	$r5 := @caughtexception;	$z0 = r2 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	r10 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$r6 = new cn.hutool.core.date.DateException;	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r0;	$r7[1] = r10;	$r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("Parse [{}] with format [{}] error!", $r7);	specialinvoke $r6.<cn.hutool.core.date.DateException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r5);	throw $r6
;block_num 4