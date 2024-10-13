(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2732 0)
(declare-sort var861 0)
(declare-sort var3674 0)
(declare-sort var3120 0)
(declare-sort var3144 0)
(declare-sort var3849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var3674 String) var3120)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun find/1809080823 (var3120) Bool)
(declare-fun appendTail/804194418 (var3120 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun vTagCounts/-381366973 (var2732) var3144)
(declare-fun var3144_keySet/-712633290 (var3144) var3849)
(declare-fun var3849_iterator/1911472585 (var3849) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2732 var2732)
(declare-const null-String String)
(declare-const var2732-P_TAGS var3674)
(declare-const var2587 var2732) ; Statement: r5 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var2587 null-var2732)))
(declare-const var2040 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var2040 null-String)))
(define-const var2886 var3674 var2732-P_TAGS) ; Statement: $r0 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_TAGS> 
(assert true)
(define-const var2742 var3120 (matcher/468719934 var2886 (cast-from-String-to-String var2040))) ; Statement: r1 = virtualinvoke $r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17) 
(define-const var1849 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1849)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1849!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var533 Bool (find/1809080823 var2742)) ; Statement: $z0 = virtualinvoke r1.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2) 
(assert (= (ite var533 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/804194418 var2742 var1849!1)) ; Statement: virtualinvoke r1.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2) 

(declare-const var2742!1 var3120)
(declare-const var1849!2 String)
(define-const var1745 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2592 String (toString/-222306083 var1849!2)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1745 var2592)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var1745!1 String)
(assert (= var1745!1 var2592))
(define-const var2903 var3144 (vTagCounts/-381366973 var2587)) ; Statement: $r6 = r5.<cn.hutool.http.HTMLFilter: java.util.Map vTagCounts> 
(define-const var3100 var3849 (var3144_keySet/-712633290 var2903)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Map: java.util.Set keySet()>() 
(define-const var887 Iterator (var3849_iterator/1911472585 var3100)) ; Statement: r8 = interfaceinvoke $r7.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3508 Bool (Iterator_hasNext/-1669924200 var887)) ; Statement: $z1 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto r20 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3508 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1449 String (toString/-2075883882 var1745!1)) ; Statement: r20 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), vTagCounts/-381366973=([cn.hutool.http.HTMLFilter], java.util.Map), var3144_keySet/-712633290=([java.util.Map], java.util.Set), var3849_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2732=cn.hutool.http.HTMLFilter, var2587=r5, var2040=r17, var861=null_type, var3674=java.util.regex.Pattern, var2886=$r0, var3120=java.util.regex.Matcher, var2742=r1, var1849=$r2, var533=$z0, var1745=$r3, var2592=$r4, var3144=java.util.Map, var2903=$r6, var3849=java.util.Set, var3100=$r7, var887=r8, var3508=$z1, var1449=r20}
; {cn.hutool.http.HTMLFilter=var2732, r5=var2587, r17=var2040, null_type=var861, java.util.regex.Pattern=var3674, $r0=var2886, java.util.regex.Matcher=var3120, r1=var2742, $r2=var1849, $z0=var533, $r3=var1745, $r4=var2592, java.util.Map=var3144, $r6=var2903, java.util.Set=var3849, $r7=var3100, r8=var887, $z1=var3508, r20=var1449}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: cn.hutool.http.HTMLFilter;	r17 := @parameter0: java.lang.String;	$r0 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_TAGS>;	r1 = virtualinvoke $r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r17);	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$z0 = virtualinvoke r1.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r1.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2);	virtualinvoke r1.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r2);	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r6 = r5.<cn.hutool.http.HTMLFilter: java.util.Map vTagCounts>;	$r7 = interfaceinvoke $r6.<java.util.Map: java.util.Set keySet()>();	r8 = interfaceinvoke $r7.<java.util.Set: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r8.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto r20 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	r20 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return r20
;block_num 5