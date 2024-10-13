(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort var2048 0)
(declare-sort var3395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun glob/809256223 (var1084) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun caseInsensitive/809256223 (var1084) Bool)
(declare-fun var3395_globToRegularExpression/-1191354921 (String Bool) var2048)
(declare-fun pattern/809256223 (var1084) var2048)
(declare-const null-var1084 var1084)
(declare-const var659 var1084) ; Statement: r0 := @this: freemarker.cache.FileNameGlobMatcher 
(assert (not (= var659 null-var1084)))
(define-const var3914 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3914)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3914!1 String)
(assert (= var3914!1 ""))
(assert true)
(define-const var2254 String (append/672562846 var3914!1 "**/")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**/") 
(declare-const var3914!2 String)
(assert (= var3914!2 (str.++ var3914!1 "**/")))
(define-const var3380 String (glob/809256223 var659)) ; Statement: $r2 = r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> 
(assert true)
(define-const var618 String (append/672562846 var2254 var3380)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2254!1 String)
(assert (= var2254!1 (str.++ var2254 var3380)))
(assert true)
(define-const var2832 String (toString/-2075883882 var618)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var398 Bool (caseInsensitive/809256223 var659)) ; Statement: $z0 = r0.<freemarker.cache.FileNameGlobMatcher: boolean caseInsensitive> 
(define-const var1335 var2048 (var3395_globToRegularExpression/-1191354921 var2832 var398)) ; Statement: $r6 = staticinvoke <freemarker.template.utility.StringUtil: java.util.regex.Pattern globToRegularExpression(java.lang.String,boolean)>($r5, $z0) 
(declare-const var659!1 var1084)
(assert (not (= var659!1 null-var1084)))
(assert (= (pattern/809256223 var659!1) var1335)) ; Statement: r0.<freemarker.cache.FileNameGlobMatcher: java.util.regex.Pattern pattern> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), glob/809256223=([freemarker.cache.FileNameGlobMatcher], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), caseInsensitive/809256223=([freemarker.cache.FileNameGlobMatcher], boolean), var3395_globToRegularExpression/-1191354921=([java.lang.String, boolean], java.util.regex.Pattern), pattern/809256223=([freemarker.cache.FileNameGlobMatcher], java.util.regex.Pattern)}
; {var1084=freemarker.cache.FileNameGlobMatcher, var659=r0, var3914=$r1, var2254=$r3, var3380=$r2, var618=$r4, var2832=$r5, var398=$z0, var2048=java.util.regex.Pattern, var3395=freemarker.template.utility.StringUtil, var1335=$r6}
; {freemarker.cache.FileNameGlobMatcher=var1084, r0=var659, $r1=var3914, $r3=var2254, $r2=var3380, $r4=var618, $r5=var2832, $z0=var398, java.util.regex.Pattern=var2048, freemarker.template.utility.StringUtil=var3395, $r6=var1335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.FileNameGlobMatcher;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("**/");	$r2 = r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = r0.<freemarker.cache.FileNameGlobMatcher: boolean caseInsensitive>;	$r6 = staticinvoke <freemarker.template.utility.StringUtil: java.util.regex.Pattern globToRegularExpression(java.lang.String,boolean)>($r5, $z0);	r0.<freemarker.cache.FileNameGlobMatcher: java.util.regex.Pattern pattern> = $r6;	return
;block_num 1