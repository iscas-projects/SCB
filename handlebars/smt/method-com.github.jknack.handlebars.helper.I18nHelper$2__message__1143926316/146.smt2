(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3860 0)
(declare-sort var2346 0)
(declare-sort var2151 0)
(declare-sort var1931 0)
(declare-sort var1589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2151_escapeExpression/1366185675 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun pattern/-2036423448 (var3860) var1931)
(declare-fun matcher/468719934 (var1931 String) var1589)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun find/1809080823 (var1589) Bool)
(declare-fun appendTail/804194418 (var1589 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3860 var3860)
(declare-const null-String String)
(declare-const var3731 var3860) ; Statement: r2 := @this: com.github.jknack.handlebars.helper.I18nHelper$2 
(assert (not (= var3731 null-var3860)))
(declare-const var247 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var247 null-String)))
(define-const var2424 String (var2151_escapeExpression/1366185675 (cast-from-String-to-String var247))) ; Statement: r1 = staticinvoke <com.github.jknack.handlebars.Handlebars$Utils: java.lang.CharSequence escapeExpression(java.lang.CharSequence)>(r0) 
(define-const var3238 var1931 (pattern/-2036423448 var3731)) ; Statement: $r3 = r2.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.regex.Pattern pattern> 
(assert true)
(define-const var2545 var1589 (matcher/468719934 var3238 var2424)) ; Statement: r4 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(define-const var3655 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3655)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3655!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3047 Bool (find/1809080823 var2545)) ; Statement: $z0 = virtualinvoke r4.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r4.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r5) 
(assert (= (ite var3047 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/804194418 var2545 var3655!1)) ; Statement: virtualinvoke r4.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r5) 

(declare-const var2545!1 var1589)
(declare-const var3655!2 String)
(assert true)
(define-const var3728 String (toString/-222306083 var3655!2)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2151_escapeExpression/1366185675=([java.lang.CharSequence], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), pattern/-2036423448=([com.github.jknack.handlebars.helper.I18nHelper$2], java.util.regex.Pattern), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3860=com.github.jknack.handlebars.helper.I18nHelper$2, var3731=r2, var247=r0, var2346=null_type, var2151=com.github.jknack.handlebars.Handlebars$Utils, var2424=r1, var1931=java.util.regex.Pattern, var3238=$r3, var1589=java.util.regex.Matcher, var2545=r4, var3655=$r5, var3047=$z0, var3728=$r6}
; {com.github.jknack.handlebars.helper.I18nHelper$2=var3860, r2=var3731, r0=var247, null_type=var2346, com.github.jknack.handlebars.Handlebars$Utils=var2151, r1=var2424, java.util.regex.Pattern=var1931, $r3=var3238, java.util.regex.Matcher=var1589, r4=var2545, $r5=var3655, $z0=var3047, $r6=var3728}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.helper.I18nHelper$2;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.github.jknack.handlebars.Handlebars$Utils: java.lang.CharSequence escapeExpression(java.lang.CharSequence)>(r0);	$r3 = r2.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.regex.Pattern pattern>;	r4 = virtualinvoke $r3.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$z0 = virtualinvoke r4.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r4.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r5);	virtualinvoke r4.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r5);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r6
;block_num 3