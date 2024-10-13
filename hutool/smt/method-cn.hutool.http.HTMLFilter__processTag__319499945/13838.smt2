(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var3883 0)
(declare-sort var3822 0)
(declare-sort var2079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var3822 String) var2079)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2079) Bool)
(declare-fun stripComment/-381366973 (var2498) Bool)
(declare-const null-var2498 var2498)
(declare-const null-String String)
(declare-const var2498-P_END_TAG var3822)
(declare-const var2498-P_START_TAG var3822)
(declare-const var2498-P_COMMENT var3822)
(declare-const var233 var2498) ; Statement: r3 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var233 null-var2498)))
(declare-const var3250 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3250 null-String)))
(define-const var2960 var3822 var2498-P_END_TAG) ; Statement: $r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_END_TAG> 
(assert true)
(define-const var1820 var2079 (matcher/468719934 var2960 (cast-from-String-to-String var3250))) ; Statement: r55 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var262 Bool (find/1809080823 var1820)) ; Statement: $z0 = virtualinvoke r55.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG> 
(assert (= (ite var262 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2620 var3822 var2498-P_START_TAG) ; Statement: $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG> 
(assert true)
(define-const var2680 var2079 (matcher/468719934 var2620 (cast-from-String-to-String var3250))) ; Statement: $r58 = virtualinvoke $r57.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var2242 Bool (find/1809080823 var2680)) ; Statement: $z14 = virtualinvoke $r58.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z14 == 0 goto $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT> 
(assert (= (ite var2242 1 0) 0)) ; Cond: $z14 == 0 
(define-const var628 var3822 var2498-P_COMMENT) ; Statement: $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT> 
(assert true)
(define-const var1469 var2079 (matcher/468719934 var628 (cast-from-String-to-String var3250))) ; Statement: r69 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(define-const var39 Bool (stripComment/-381366973 var233)) ; Statement: $z1 = r3.<cn.hutool.http.HTMLFilter: boolean stripComment> 
 ; Statement: if $z1 != 0 goto return "" 
(assert (not (= (ite var39 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), stripComment/-381366973=([cn.hutool.http.HTMLFilter], boolean)}
; {var2498=cn.hutool.http.HTMLFilter, var233=r3, var3250=r0, var3883=null_type, var3822=java.util.regex.Pattern, var2960=$r1, var2079=java.util.regex.Matcher, var1820=r55, var262=$z0, var2620=$r57, var2680=$r58, var2242=$z14, var628=$r2, var1469=r69, var39=$z1}
; {cn.hutool.http.HTMLFilter=var2498, r3=var233, r0=var3250, null_type=var3883, java.util.regex.Pattern=var3822, $r1=var2960, java.util.regex.Matcher=var2079, r55=var1820, $z0=var262, $r57=var2620, $r58=var2680, $z14=var2242, $r2=var628, r69=var1469, $z1=var39}
;seq 
;cnt {}
;stmts r3 := @this: cn.hutool.http.HTMLFilter;	r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_END_TAG>;	r55 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r55.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG>;	$r57 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_START_TAG>;	$r58 = virtualinvoke $r57.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z14 = virtualinvoke $r58.<java.util.regex.Matcher: boolean find()>();	if $z14 == 0 goto $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT>;	$r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENT>;	r69 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z1 = r3.<cn.hutool.http.HTMLFilter: boolean stripComment>;	if $z1 != 0 goto return "";	return ""
;block_num 4