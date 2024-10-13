(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2796 0)
(declare-sort var3582 0)
(declare-sort var814 0)
(declare-sort var583 0)
(declare-sort var3782 0)
(declare-sort var1956 0)
(declare-sort var1221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var814-init () var814)
(declare-fun <init>/-325640736 (var814) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3782_split/-856260977 (String Int) var583)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var583_size/-959786421 (var583) Int)
(declare-fun var1956-init () var1956)
(declare-fun arr-var1221-init () (Array Int var1221))
(declare-fun cast-from-String-to-var1221 (String) var1221)
(declare-fun <init>/-2003990050 (var1956 String (Array Int var1221)) void)
(declare-const null-var2796 var2796)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1221__ (Array Int var1221))
(declare-const var1053 var2796) ; Statement: r4 := @this: cn.hutool.cron.pattern.parser.PartParser 
(assert (not (= var1053 null-var2796)))
(declare-const var3923 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3923 null-String)))
(declare-const var3114 Int) ; Statement: i6 := @parameter1: int 
(assert (not (= var3114 null-Int)))
(define-const var2975 var814 var814-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2975)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2975!1 var814)
(assert true)
(define-const var3419 Int (length/-134980193 var3923)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 2 goto r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r1, 45) 
(assert (> var3419 2)) ; Cond: $i0 > 2 
(define-const var3742 var583 (var3782_split/-856260977 (cast-from-String-to-String var3923) 45)) ; Statement: r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r1, 45) 
(define-const var3886 Int (var583_size/-959786421 var3742)) ; Statement: i10 = interfaceinvoke r21.<java.util.List: int size()>() 
 ; Statement: if i10 != 1 goto (branch) 
(assert (not (= var3886 1))) ; Cond: i10 != 1 
 ; Statement: if i10 != 2 goto $r2 = new cn.hutool.cron.CronException 
(assert (not (= var3886 2))) ; Cond: i10 != 2 
(define-const var585 var1956 var1956-init) ; Statement: $r2 = new cn.hutool.cron.CronException 
(define-const var3945 (Array Int var1221) arr-var1221-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var3945!1 (Array Int var1221))
(assert (not (= var3945!1 null-__Array__Int__var1221__)))
(assert (= (select var3945!1 0) (cast-from-String-to-var1221 var3923))) ; Statement: $r3[0] = r1 
(assert true)
;(assert (<init>/-2003990050 var585 "Invalid syntax of field: [{}]" var3945!1)) ; Statement: specialinvoke $r2.<cn.hutool.cron.CronException: void <init>(java.lang.String,java.lang.Object[])>("Invalid syntax of field: [{}]", $r3) 

(declare-const var585!1 var1956)
(declare-const var2676 String)
(declare-const var3945!2 (Array Int var1221))
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var814-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), var3782_split/-856260977=([java.lang.CharSequence, char], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var583_size/-959786421=([java.util.List], int), var1956-init=([], cn.hutool.cron.CronException), arr-var1221-init=([], java.lang.Object[]), cast-from-String-to-var1221=([java.lang.String], java.lang.Object), <init>/-2003990050=([cn.hutool.cron.CronException, java.lang.String, java.lang.Object[]], void)}
; {var2796=cn.hutool.cron.pattern.parser.PartParser, var1053=r4, var3923=r1, var3582=null_type, var3114=i6, var814=java.util.ArrayList, var2975=$r0, var3419=$i0, var583=java.util.List, var3782=cn.hutool.core.text.CharSequenceUtil, var3742=r21, var3886=i10, var1956=cn.hutool.cron.CronException, var585=$r2, var1221=java.lang.Object, var3945=$r3, var2676="Invalid syntax of field: [{}]"}
; {cn.hutool.cron.pattern.parser.PartParser=var2796, r4=var1053, r1=var3923, null_type=var3582, i6=var3114, java.util.ArrayList=var814, $r0=var2975, $i0=var3419, java.util.List=var583, cn.hutool.core.text.CharSequenceUtil=var3782, r21=var3742, i10=var3886, cn.hutool.cron.CronException=var1956, $r2=var585, java.lang.Object=var1221, $r3=var3945, "Invalid syntax of field: [{}]"=var2676}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: cn.hutool.cron.pattern.parser.PartParser;	r1 := @parameter0: java.lang.String;	i6 := @parameter1: int;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 > 2 goto r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r1, 45);	r21 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r1, 45);	i10 = interfaceinvoke r21.<java.util.List: int size()>();	if i10 != 1 goto (branch);	if i10 != 2 goto $r2 = new cn.hutool.cron.CronException;	$r2 = new cn.hutool.cron.CronException;	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r1;	specialinvoke $r2.<cn.hutool.cron.CronException: void <init>(java.lang.String,java.lang.Object[])>("Invalid syntax of field: [{}]", $r3);	throw $r2
;block_num 4