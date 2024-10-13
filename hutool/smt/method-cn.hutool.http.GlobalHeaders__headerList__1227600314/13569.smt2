(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1357 0)
(declare-sort var265 0)
(declare-sort var1051 0)
(declare-sort var3909 0)
(declare-sort var594 0)
(declare-sort var341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1051_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun headers/-1660716029 (var1357) var3909)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3909_get/1088891777 (var3909 var594) var594)
(declare-fun cast-from-String-to-var594 (String) var594)
(declare-fun cast-from-var594-to-var341 (var594) var341)
(declare-const null-var1357 var1357)
(declare-const null-String String)
(declare-const var3114 var1357) ; Statement: r1 := @this: cn.hutool.http.GlobalHeaders 
(assert (not (= var3114 null-var1357)))
(declare-const var1212 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1212 null-String)))
(define-const var840 Bool (var1051_isBlank/-1569658263 (cast-from-String-to-String var1212))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = r1.<cn.hutool.http.GlobalHeaders: java.util.Map headers> 
(assert (= (ite var840 1 0) 0)) ; Cond: $z0 == 0 
(define-const var724 var3909 (headers/-1660716029 var3114)) ; Statement: $r2 = r1.<cn.hutool.http.GlobalHeaders: java.util.Map headers> 
(assert true)
(define-const var3326 String (trim/-847153721 var1212)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var1033 var594 (var3909_get/1088891777 var724 (cast-from-String-to-var594 var3326))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var883 var341 (cast-from-var594-to-var341 var1033)) ; Statement: $r5 = (java.util.List) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1051_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), headers/-1660716029=([cn.hutool.http.GlobalHeaders], java.util.Map), trim/-847153721=([java.lang.String], java.lang.String), var3909_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var594=([java.lang.String], java.lang.Object), cast-from-var594-to-var341=([java.lang.Object], java.util.List)}
; {var1357=cn.hutool.http.GlobalHeaders, var3114=r1, var1212=r0, var265=null_type, var1051=cn.hutool.core.text.CharSequenceUtil, var840=$z0, var3909=java.util.Map, var724=$r2, var3326=$r3, var594=java.lang.Object, var1033=$r4, var341=java.util.List, var883=$r5}
; {cn.hutool.http.GlobalHeaders=var1357, r1=var3114, r0=var1212, null_type=var265, cn.hutool.core.text.CharSequenceUtil=var1051, $z0=var840, java.util.Map=var3909, $r2=var724, $r3=var3326, java.lang.Object=var594, $r4=var1033, java.util.List=var341, $r5=var883}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: cn.hutool.http.GlobalHeaders;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r2 = r1.<cn.hutool.http.GlobalHeaders: java.util.Map headers>;	$r2 = r1.<cn.hutool.http.GlobalHeaders: java.util.Map headers>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	$r5 = (java.util.List) $r4;	return $r5
;block_num 2