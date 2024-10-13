(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3148 0)
(declare-sort var512 0)
(declare-sort var865 0)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var865 String) var3888)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun find/1809080823 (var3888) Bool)
(declare-fun appendTail/804194418 (var3888 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3148 var3148)
(declare-const null-String String)
(declare-const var3148-P_COMMENTS var865)
(declare-const var1388 var3148) ; Statement: r13 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var1388 null-var3148)))
(declare-const var598 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var598 null-String)))
(define-const var594 var865 var3148-P_COMMENTS) ; Statement: $r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENTS> 
(assert true)
(define-const var3312 var3888 (matcher/468719934 var594 (cast-from-String-to-String var598))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(define-const var1319 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1319)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1319!1 String)
(assert true)
(define-const var2435 Bool (find/1809080823 var3312)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r2.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r3) 
(assert (= (ite var2435 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/804194418 var3312 var1319!1)) ; Statement: virtualinvoke r2.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r3) 

(declare-const var3312!1 var3888)
(declare-const var1319!2 String)
(assert true)
(define-const var3903 String (toString/-222306083 var1319!2)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3148=cn.hutool.http.HTMLFilter, var1388=r13, var598=r0, var512=null_type, var865=java.util.regex.Pattern, var594=$r1, var3888=java.util.regex.Matcher, var3312=r2, var1319=$r3, var2435=$z0, var3903=$r4}
; {cn.hutool.http.HTMLFilter=var3148, r13=var1388, r0=var598, null_type=var512, java.util.regex.Pattern=var865, $r1=var594, java.util.regex.Matcher=var3888, r2=var3312, $r3=var1319, $z0=var2435, $r4=var3903}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r13 := @this: cn.hutool.http.HTMLFilter;	r0 := @parameter0: java.lang.String;	$r1 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_COMMENTS>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r2.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r3);	virtualinvoke r2.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r3);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 2