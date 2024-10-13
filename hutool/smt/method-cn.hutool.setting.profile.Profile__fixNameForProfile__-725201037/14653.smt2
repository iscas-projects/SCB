(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1724 0)
(declare-sort var43 0)
(declare-sort var3635 0)
(declare-sort var3448 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3635-init () (Array Int var3635))
(declare-fun var3448_notBlank/-161903167 (String String (Array Int var3635)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun profile/-963287616 (var1724) String)
(declare-fun var511_nullToEmpty/-379247643 (String) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(declare-fun cast-from-String-to-var3635 (String) var3635)
(declare-fun var511_format/-950946974 (String (Array Int var3635)) String)
(declare-const null-var1724 var1724)
(declare-const null-String String)
(declare-const null-__Array__Int__var3635__ (Array Int var3635))
(declare-const var1054 var1724) ; Statement: r2 := @this: cn.hutool.setting.profile.Profile 
(assert (not (= var1054 null-var1724)))
(declare-const var2384 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2384 null-String)))
(define-const var2211 (Array Int var3635) arr-var3635-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3448_notBlank/-161903167 (cast-from-String-to-String var2384) "Setting name must be not blank !" var2211)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Setting name must be not blank !", $r1) 

(declare-const var2384!1 String)
(declare-const var2361 String)
(declare-const var2211!1 (Array Int var3635))
(define-const var1910 String (profile/-963287616 var1054)) ; Statement: $r3 = r2.<cn.hutool.setting.profile.Profile: java.lang.String profile> 
(define-const var9 String (var511_nullToEmpty/-379247643 (cast-from-String-to-String var1910))) ; Statement: r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>($r3) 
(assert true)
(define-const var2277 Bool (contains/1009244746 var2384!1 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if 0 != $z0 goto $r5 = newarray (java.lang.Object)[2] 
(assert (not (= 0 (ite var2277 1 0)))) ; Cond: 0 != $z0 
(define-const var2621 (Array Int var3635) arr-var3635-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(declare-const var2621!1 (Array Int var3635))
(assert (not (= var2621!1 null-__Array__Int__var3635__)))
(assert (= (select var2621!1 0) (cast-from-String-to-var3635 var9))) ; Statement: $r5[0] = r4 
(declare-const var2621!2 (Array Int var3635))
(assert (not (= var2621!2 null-__Array__Int__var3635__)))
(assert (= (select var2621!2 1) (cast-from-String-to-var3635 var2384!1))) ; Statement: $r5[1] = r0 
(define-const var1290 String (var511_format/-950946974 (cast-from-String-to-String "{}/{}") var2621!2)) ; Statement: $r6 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}/{}", $r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3635-init=([], java.lang.Object[]), var3448_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), profile/-963287616=([cn.hutool.setting.profile.Profile], java.lang.String), var511_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-var3635=([java.lang.String], java.lang.Object), var511_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String)}
; {var1724=cn.hutool.setting.profile.Profile, var1054=r2, var2384=r0, var43=null_type, var3635=java.lang.Object, var2211=$r1, var3448=cn.hutool.core.lang.Assert, var2361="Setting name must be not blank !", var1910=$r3, var511=cn.hutool.core.text.CharSequenceUtil, var9=r4, var2277=$z0, var2621=$r5, var1290=$r6}
; {cn.hutool.setting.profile.Profile=var1724, r2=var1054, r0=var2384, null_type=var43, java.lang.Object=var3635, $r1=var2211, cn.hutool.core.lang.Assert=var3448, "Setting name must be not blank !"=var2361, $r3=var1910, cn.hutool.core.text.CharSequenceUtil=var511, r4=var9, $z0=var2277, $r5=var2621, $r6=var1290}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: cn.hutool.setting.profile.Profile;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Setting name must be not blank !", $r1);	$r3 = r2.<cn.hutool.setting.profile.Profile: java.lang.String profile>;	r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>($r3);	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if 0 != $z0 goto $r5 = newarray (java.lang.Object)[2];	$r5 = newarray (java.lang.Object)[2];	$r5[0] = r4;	$r5[1] = r0;	$r6 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}/{}", $r5);	return $r6
;block_num 2