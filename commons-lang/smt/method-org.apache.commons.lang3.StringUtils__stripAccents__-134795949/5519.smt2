(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var277 0)
(declare-sort var1016 0)
(declare-sort var2631 0)
(declare-sort var1183 0)
(declare-sort var1099 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2631_normalize/541309276 (String var1016) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1183_convertRemainingAccentCharacters/1565406537 (String) void)
(declare-fun matcher/468719934 (var1099 String) var590)
(declare-fun replaceAll/-445382577 (var590 String) String)
(declare-const null-String String)
(declare-const var1016-NFD var1016)
(declare-const var1183-STRIP_ACCENTS_PATTERN var1099)
(declare-const var1920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1920 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var1920 null-String))) ; Cond: r0 != null 
(define-const var3160 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var3767 var1016 var1016-NFD) ; Statement: $r2 = <java.text.Normalizer$Form: java.text.Normalizer$Form NFD> 
(define-const var2246 String (var2631_normalize/541309276 (cast-from-String-to-String var1920) var3767)) ; Statement: $r3 = staticinvoke <java.text.Normalizer: java.lang.String normalize(java.lang.CharSequence,java.text.Normalizer$Form)>(r0, $r2) 
(assert true)
;(assert (<init>/-1061048412 var3160 var2246)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3160!1 String)
(assert (= var3160!1 var2246))
;(assert (var1183_convertRemainingAccentCharacters/1565406537 var3160!1)) ; Statement: staticinvoke <org.apache.commons.lang3.StringUtils: void convertRemainingAccentCharacters(java.lang.StringBuilder)>($r1) 

(declare-const var3160!2 String)
(define-const var703 var1099 var1183-STRIP_ACCENTS_PATTERN) ; Statement: $r4 = <org.apache.commons.lang3.StringUtils: java.util.regex.Pattern STRIP_ACCENTS_PATTERN> 
(assert true)
(define-const var2755 var590 (matcher/468719934 var703 (cast-from-String-to-String var3160!2))) ; Statement: $r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1) 
(assert true)
(define-const var549 String (replaceAll/-445382577 var2755 "")) ; Statement: $r6 = virtualinvoke $r5.<java.util.regex.Matcher: java.lang.String replaceAll(java.lang.String)>("") 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var2631_normalize/541309276=([java.lang.CharSequence, java.text.Normalizer$Form], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1183_convertRemainingAccentCharacters/1565406537=([java.lang.StringBuilder], void), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), replaceAll/-445382577=([java.util.regex.Matcher, java.lang.String], java.lang.String)}
; {var1920=r0, var277=null_type, var3160=$r1, var1016=java.text.Normalizer$Form, var3767=$r2, var2631=java.text.Normalizer, var2246=$r3, var1183=org.apache.commons.lang3.StringUtils, var1099=java.util.regex.Pattern, var703=$r4, var590=java.util.regex.Matcher, var2755=$r5, var549=$r6}
; {r0=var1920, null_type=var277, $r1=var3160, java.text.Normalizer$Form=var1016, $r2=var3767, java.text.Normalizer=var2631, $r3=var2246, org.apache.commons.lang3.StringUtils=var1183, java.util.regex.Pattern=var1099, $r4=var703, java.util.regex.Matcher=var590, $r5=var2755, $r6=var549}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	$r2 = <java.text.Normalizer$Form: java.text.Normalizer$Form NFD>;	$r3 = staticinvoke <java.text.Normalizer: java.lang.String normalize(java.lang.CharSequence,java.text.Normalizer$Form)>(r0, $r2);	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	staticinvoke <org.apache.commons.lang3.StringUtils: void convertRemainingAccentCharacters(java.lang.StringBuilder)>($r1);	$r4 = <org.apache.commons.lang3.StringUtils: java.util.regex.Pattern STRIP_ACCENTS_PATTERN>;	$r5 = virtualinvoke $r4.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r1);	$r6 = virtualinvoke $r5.<java.util.regex.Matcher: java.lang.String replaceAll(java.lang.String)>("");	return $r6
;block_num 2