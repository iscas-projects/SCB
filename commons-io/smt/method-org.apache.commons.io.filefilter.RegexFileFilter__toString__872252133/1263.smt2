(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3148 0)
(declare-sort var2076 0)
(declare-sort var427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/366135821 (var3148) var2076)
(declare-fun append/-1031950772 (String var427) String)
(declare-fun cast-from-var2076-to-var427 (var2076) var427)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3148 var3148)
(declare-const var982 var3148) ; Statement: r1 := @this: org.apache.commons.io.filefilter.RegexFileFilter 
(assert (not (= var982 null-var3148)))
(define-const var1655 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1655)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1655!1 String)
(assert (= var1655!1 ""))
(assert true)
(define-const var2082 String (append/672562846 var1655!1 "RegexFileFilter [pattern=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RegexFileFilter [pattern=") 
(declare-const var1655!2 String)
(assert (= var1655!2 (str.++ var1655!1 "RegexFileFilter [pattern=")))
(define-const var151 var2076 (pattern/366135821 var982)) ; Statement: $r2 = r1.<org.apache.commons.io.filefilter.RegexFileFilter: java.util.regex.Pattern pattern> 
(assert true)
(define-const var3197 String (append/-1031950772 var2082 (cast-from-var2076-to-var427 var151))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2082!1 String)
(assert (str.prefixof var2082 var2082!1))
(assert true)
(define-const var2320 String (append/672562846 var3197 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3197!1 String)
(assert (= var3197!1 (str.++ var3197 "]")))
(assert true)
(define-const var3743 String (toString/-2075883882 var2320)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/366135821=([org.apache.commons.io.filefilter.RegexFileFilter], java.util.regex.Pattern), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2076-to-var427=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3148=org.apache.commons.io.filefilter.RegexFileFilter, var982=r1, var1655=$r0, var2082=$r3, var2076=java.util.regex.Pattern, var151=$r2, var427=java.lang.Object, var3197=$r4, var2320=$r5, var3743=$r6}
; {org.apache.commons.io.filefilter.RegexFileFilter=var3148, r1=var982, $r0=var1655, $r3=var2082, java.util.regex.Pattern=var2076, $r2=var151, java.lang.Object=var427, $r4=var3197, $r5=var2320, $r6=var3743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.RegexFileFilter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("RegexFileFilter [pattern=");	$r2 = r1.<org.apache.commons.io.filefilter.RegexFileFilter: java.util.regex.Pattern pattern>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1