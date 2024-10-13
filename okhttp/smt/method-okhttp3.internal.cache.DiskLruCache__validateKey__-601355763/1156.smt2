(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2681 0)
(declare-sort var3017 0)
(declare-sort var2177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/1556496682 (var2177 String) Bool)
(declare-const null-var2681 var2681)
(declare-const null-String String)
(declare-const var2681-LEGAL_KEY_PATTERN var2177)
(declare-const var1898 var2681) ; Statement: r9 := @this: okhttp3.internal.cache.DiskLruCache 
(assert (not (= var1898 null-var2681)))
(declare-const var2686 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2686 null-String)))
(define-const var3276 var2177 var2681-LEGAL_KEY_PATTERN) ; Statement: $r2 = <okhttp3.internal.cache.DiskLruCache: kotlin.text.Regex LEGAL_KEY_PATTERN> 
(define-const var2645 String (cast-from-String-to-String var2686)) ; Statement: $r1 = (java.lang.CharSequence) r0 
(assert true)
(define-const var407 Bool (matches/1556496682 var3276 var2645)) ; Statement: $z0 = virtualinvoke $r2.<kotlin.text.Regex: boolean matches(java.lang.CharSequence)>($r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var407 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/1556496682=([kotlin.text.Regex, java.lang.CharSequence], boolean)}
; {var2681=okhttp3.internal.cache.DiskLruCache, var1898=r9, var2686=r0, var3017=null_type, var2177=kotlin.text.Regex, var3276=$r2, var2645=$r1, var407=$z0}
; {okhttp3.internal.cache.DiskLruCache=var2681, r9=var1898, r0=var2686, null_type=var3017, kotlin.text.Regex=var2177, $r2=var3276, $r1=var2645, $z0=var407}
;seq 
;cnt {}
;stmts r9 := @this: okhttp3.internal.cache.DiskLruCache;	r0 := @parameter0: java.lang.String;	$r2 = <okhttp3.internal.cache.DiskLruCache: kotlin.text.Regex LEGAL_KEY_PATTERN>;	$r1 = (java.lang.CharSequence) r0;	$z0 = virtualinvoke $r2.<kotlin.text.Regex: boolean matches(java.lang.CharSequence)>($r1);	if $z0 != 0 goto return;	return
;block_num 2