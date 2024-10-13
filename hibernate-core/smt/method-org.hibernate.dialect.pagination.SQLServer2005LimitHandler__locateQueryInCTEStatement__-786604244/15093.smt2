(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1247 0)
(declare-sort var2205 0)
(declare-sort var3260 0)
(declare-sort var483 0)
(declare-sort var926 0)
(declare-sort var2949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun substring/-975425934 (String Int) String)
(declare-fun matcher/468719934 (var2205 String) var3260)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var3260) Bool)
(declare-fun var483-init () var483)
(declare-fun arr-var2949-init () (Array Int var2949))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2949 (Int) var2949)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var2949 (String) var2949)
(declare-fun String_format/-647569892 (var926 String (Array Int var2949)) String)
(declare-fun <init>/875830710 (var483 String) void)
(declare-const null-var1247 var1247)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1247-WITH_EXPRESSION_NAME var2205)
(declare-const var926-ROOT var926)
(declare-const null-__Array__Int__var2949__ (Array Int var2949))
(declare-const var3315 var1247) ; Statement: r19 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3315 null-var1247)))
(declare-const var1069 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1069 null-String)))
(declare-const var3501 Int) ; Statement: i14 := @parameter1: int 
(assert (not (= var3501 null-Int)))
(assert true) ; Non Conditional
(define-const var2747 var2205 var1247-WITH_EXPRESSION_NAME) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern WITH_EXPRESSION_NAME> 
(assert true)
(define-const var3372 String (substring/-975425934 var1069 var3501)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String substring(int)>(i14) 
(assert true)
(define-const var2208 var3260 (matcher/468719934 var2747 (cast-from-String-to-String var3372))) ; Statement: $r22 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2) 
(assert true)
(define-const var676 Bool (find/1809080823 var2208)) ; Statement: $z0 = virtualinvoke $r22.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var676 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1008 var483 var483-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1890 var926 var926-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2154 (Array Int var2949) arr-var2949-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(define-const var2236 Int (Int_valueOf/-1371140006 var3501)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i14) 
(declare-const var2154!1 (Array Int var2949))
(assert (not (= var2154!1 null-__Array__Int__var2949__)))
(assert (= (select var2154!1 0) (cast-from-Int-to-var2949 var2236))) ; Statement: $r4[0] = $r6 
(assert true)
(define-const var1116 String (toString/-2075883882 var1069)) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2154!2 (Array Int var2949))
(assert (not (= var2154!2 null-__Array__Int__var2949__)))
(assert (= (select var2154!2 1) (cast-from-String-to-var2949 var1116))) ; Statement: $r4[1] = $r7 
(define-const var1291 String (String_format/-647569892 var1890 "Failed to locate CTE expression name at offset %d, SQL [%s]" var2154!2)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Failed to locate CTE expression name at offset %d, SQL [%s]", $r4) 
(assert true)
;(assert (<init>/875830710 var1008 var1291)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1008!1 var483)
(declare-const var1291!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-975425934=([java.lang.StringBuilder, int], java.lang.String), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), var483-init=([], java.lang.IllegalArgumentException), arr-var2949-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2949=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var2949=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1247=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3315=r19, var1069=r0, var3501=i14, var2205=java.util.regex.Pattern, var2747=$r1, var3372=$r2, var3260=java.util.regex.Matcher, var2208=$r22, var676=$z0, var483=java.lang.IllegalArgumentException, var1008=$r3, var926=java.util.Locale, var1890=$r5, var2949=java.lang.Object, var2154=$r4, var2236=$r6, var1116=$r7, var1291=$r8}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var1247, r19=var3315, r0=var1069, i14=var3501, java.util.regex.Pattern=var2205, $r1=var2747, $r2=var3372, java.util.regex.Matcher=var3260, $r22=var2208, $z0=var676, java.lang.IllegalArgumentException=var483, $r3=var1008, java.util.Locale=var926, $r5=var1890, java.lang.Object=var2949, $r4=var2154, $r6=var2236, $r7=var1116, $r8=var1291}
;seq <java.lang.StringBuilder: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r19 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i14 := @parameter1: int;	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern WITH_EXPRESSION_NAME>;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String substring(int)>(i14);	$r22 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>($r2);	$z0 = virtualinvoke $r22.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = newarray (java.lang.Object)[2];	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i14);	$r4[0] = $r6;	$r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4[1] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "Failed to locate CTE expression name at offset %d, SQL [%s]", $r4);	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 3