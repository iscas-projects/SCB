(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3932 0)
(declare-sort var3681 0)
(declare-sort var3756 0)
(declare-sort var2933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3756_toStr/-2089263004 (var3681) String)
(declare-fun var2933_nullToDefault/139418954 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const null-var3681 var3681)
(declare-const var158 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var158 null-String)))
(declare-const var3995 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3995 null-String)))
(declare-const var3572 var3681) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var3572 null-var3681)))
(assert true)
(define-const var945 String (append/672562846 var158 var3995)) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var158!1 String)
(assert (= var158!1 (str.++ var158 var3995)))
(define-const var2873 String (var3756_toStr/-2089263004 var3572)) ; Statement: $r3 = staticinvoke <cn.hutool.core.convert.Convert: java.lang.String toStr(java.lang.Object)>(r2) 
(define-const var1053 String (var2933_nullToDefault/139418954 (cast-from-String-to-String var2873) "[n/a]")) ; Statement: $r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>($r3, "[n/a]") 
(assert true)
(define-const var3464 String (append/672562846 var945 var1053)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var945!1 String)
(assert (= var945!1 (str.++ var945 var1053)))
(assert true)
;(assert (append/672562846 var3464 "\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3464!1 String)
(assert (= var3464!1 (str.++ var3464 "\n")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3756_toStr/-2089263004=([java.lang.Object], java.lang.String), var2933_nullToDefault/139418954=([java.lang.CharSequence, java.lang.String], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var158=r0, var3995=r1, var3932=null_type, var3681=java.lang.Object, var3572=r2, var945=$r5, var3756=cn.hutool.core.convert.Convert, var2873=$r3, var2933=cn.hutool.core.text.CharSequenceUtil, var1053=$r4, var3464=$r6}
; {r0=var158, r1=var3995, null_type=var3932, java.lang.Object=var3681, r2=var3572, $r5=var945, cn.hutool.core.convert.Convert=var3756, $r3=var2873, cn.hutool.core.text.CharSequenceUtil=var2933, $r4=var1053, $r6=var3464}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r3 = staticinvoke <cn.hutool.core.convert.Convert: java.lang.String toStr(java.lang.Object)>(r2);	$r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToDefault(java.lang.CharSequence,java.lang.String)>($r3, "[n/a]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	return
;block_num 1