(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3171 0)
(declare-sort var3254 0)
(declare-sort var1881 0)
(declare-sort var163 0)
(declare-sort var2050 0)
(declare-sort var3752 0)
(declare-sort var3988 0)
(declare-sort var756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1881_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var163-init () var163)
(declare-fun headers/-1932151335 (var3171) var2050)
(declare-fun <init>/1827371559 (var163 var2050) void)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun get/-434280210 (var3988 var3752) var3752)
(declare-fun cast-from-var163-to-var3988 (var163) var3988)
(declare-fun cast-from-String-to-var3752 (String) var3752)
(declare-fun cast-from-var3752-to-var756 (var3752) var756)
(declare-const null-var3171 var3171)
(declare-const null-String String)
(declare-const var1001 var3171) ; Statement: r2 := @this: cn.hutool.http.HttpBase 
(assert (not (= var1001 null-var3171)))
(declare-const var3774 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3774 null-String)))
(define-const var2763 Bool (var1881_isBlank/-1569658263 (cast-from-String-to-String var3774))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new cn.hutool.core.map.CaseInsensitiveMap 
(assert (= (ite var2763 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1860 var163 var163-init) ; Statement: $r1 = new cn.hutool.core.map.CaseInsensitiveMap 
(define-const var509 var2050 (headers/-1932151335 var1001)) ; Statement: $r3 = r2.<cn.hutool.http.HttpBase: java.util.Map headers> 
(assert true)
;(assert (<init>/1827371559 var1860 var509)) ; Statement: specialinvoke $r1.<cn.hutool.core.map.CaseInsensitiveMap: void <init>(java.util.Map)>($r3) 

(declare-const var1860!1 var163)
(declare-const var509!1 var2050)
(assert true)
(define-const var3476 String (trim/-847153721 var3774)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2063 var3752 (get/-434280210 (cast-from-var163-to-var3988 var1860!1) (cast-from-String-to-var3752 var3476))) ; Statement: $r5 = virtualinvoke $r1.<cn.hutool.core.map.CaseInsensitiveMap: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var2714 var756 (cast-from-var3752-to-var756 var2063)) ; Statement: $r6 = (java.util.List) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1881_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var163-init=([], cn.hutool.core.map.CaseInsensitiveMap), headers/-1932151335=([cn.hutool.http.HttpBase], java.util.Map), <init>/1827371559=([cn.hutool.core.map.CaseInsensitiveMap, java.util.Map], void), trim/-847153721=([java.lang.String], java.lang.String), get/-434280210=([cn.hutool.core.map.TransMap, java.lang.Object], java.lang.Object), cast-from-var163-to-var3988=([cn.hutool.core.map.CaseInsensitiveMap], cn.hutool.core.map.TransMap), cast-from-String-to-var3752=([java.lang.String], java.lang.Object), cast-from-var3752-to-var756=([java.lang.Object], java.util.List)}
; {var3171=cn.hutool.http.HttpBase, var1001=r2, var3774=r0, var3254=null_type, var1881=cn.hutool.core.text.CharSequenceUtil, var2763=$z0, var163=cn.hutool.core.map.CaseInsensitiveMap, var1860=$r1, var2050=java.util.Map, var509=$r3, var3476=$r4, var3752=java.lang.Object, var3988=cn.hutool.core.map.TransMap, var2063=$r5, var756=java.util.List, var2714=$r6}
; {cn.hutool.http.HttpBase=var3171, r2=var1001, r0=var3774, null_type=var3254, cn.hutool.core.text.CharSequenceUtil=var1881, $z0=var2763, cn.hutool.core.map.CaseInsensitiveMap=var163, $r1=var1860, java.util.Map=var2050, $r3=var509, $r4=var3476, java.lang.Object=var3752, cn.hutool.core.map.TransMap=var3988, $r5=var2063, java.util.List=var756, $r6=var2714}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r2 := @this: cn.hutool.http.HttpBase;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r1 = new cn.hutool.core.map.CaseInsensitiveMap;	$r1 = new cn.hutool.core.map.CaseInsensitiveMap;	$r3 = r2.<cn.hutool.http.HttpBase: java.util.Map headers>;	specialinvoke $r1.<cn.hutool.core.map.CaseInsensitiveMap: void <init>(java.util.Map)>($r3);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke $r1.<cn.hutool.core.map.CaseInsensitiveMap: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (java.util.List) $r5;	return $r6
;block_num 2