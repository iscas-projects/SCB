(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1975 0)
(declare-sort var2683 0)
(declare-sort var3197 0)
(declare-sort var3856 0)
(declare-sort var1185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3197-init () (Array Int var3197))
(declare-fun var3856_notBlank/-161903167 (String String (Array Int var3197)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun profile/-963287616 (var1975) String)
(declare-fun var1185_nullToEmpty/-379247643 (String) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(declare-fun cast-from-String-to-var3197 (String) var3197)
(declare-fun var1185_format/-950946974 (String (Array Int var3197)) String)
(declare-const null-var1975 var1975)
(declare-const null-String String)
(declare-const null-__Array__Int__var3197__ (Array Int var3197))
(declare-const var2235 var1975) ; Statement: r2 := @this: cn.hutool.setting.profile.Profile 
(assert (not (= var2235 null-var1975)))
(declare-const var2796 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2796 null-String)))
(define-const var1300 (Array Int var3197) arr-var3197-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var3856_notBlank/-161903167 (cast-from-String-to-String var2796) "Setting name must be not blank !" var1300)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Setting name must be not blank !", $r1) 

(declare-const var2796!1 String)
(declare-const var1721 String)
(declare-const var1300!1 (Array Int var3197))
(define-const var2557 String (profile/-963287616 var2235)) ; Statement: $r3 = r2.<cn.hutool.setting.profile.Profile: java.lang.String profile> 
(define-const var810 String (var1185_nullToEmpty/-379247643 (cast-from-String-to-String var2557))) ; Statement: r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>($r3) 
(assert true)
(define-const var962 Bool (contains/1009244746 var2796!1 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if 0 != $z0 goto $r5 = newarray (java.lang.Object)[2] 
(assert (not (not (= 0 (ite var962 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var1938 (Array Int var3197) arr-var3197-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var1938!1 (Array Int var3197))
(assert (not (= var1938!1 null-__Array__Int__var3197__)))
(assert (= (select var1938!1 0) (cast-from-String-to-var3197 var810))) ; Statement: $r7[0] = r4 
(declare-const var1938!2 (Array Int var3197))
(assert (not (= var1938!2 null-__Array__Int__var3197__)))
(assert (= (select var1938!2 1) (cast-from-String-to-var3197 var2796!1))) ; Statement: $r7[1] = r0 
(define-const var2951 String (var1185_format/-950946974 (cast-from-String-to-String "{}/{}.setting") var1938!2)) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}/{}.setting", $r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3197-init=([], java.lang.Object[]), var3856_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), profile/-963287616=([cn.hutool.setting.profile.Profile], java.lang.String), var1185_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-var3197=([java.lang.String], java.lang.Object), var1185_format/-950946974=([java.lang.CharSequence, java.lang.Object[]], java.lang.String)}
; {var1975=cn.hutool.setting.profile.Profile, var2235=r2, var2796=r0, var2683=null_type, var3197=java.lang.Object, var1300=$r1, var3856=cn.hutool.core.lang.Assert, var1721="Setting name must be not blank !", var2557=$r3, var1185=cn.hutool.core.text.CharSequenceUtil, var810=r4, var962=$z0, var1938=$r7, var2951=$r8}
; {cn.hutool.setting.profile.Profile=var1975, r2=var2235, r0=var2796, null_type=var2683, java.lang.Object=var3197, $r1=var1300, cn.hutool.core.lang.Assert=var3856, "Setting name must be not blank !"=var1721, $r3=var2557, cn.hutool.core.text.CharSequenceUtil=var1185, r4=var810, $z0=var962, $r7=var1938, $r8=var2951}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r2 := @this: cn.hutool.setting.profile.Profile;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Setting name must be not blank !", $r1);	$r3 = r2.<cn.hutool.setting.profile.Profile: java.lang.String profile>;	r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>($r3);	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if 0 != $z0 goto $r5 = newarray (java.lang.Object)[2];	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r4;	$r7[1] = r0;	$r8 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String format(java.lang.CharSequence,java.lang.Object[])>("{}/{}.setting", $r7);	return $r8
;block_num 2