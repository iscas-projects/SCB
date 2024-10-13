(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3965 0)
(declare-sort var62 0)
(declare-sort var574 0)
(declare-sort var316 0)
(declare-sort var3144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var62 String) var316)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3144-init () var3144)
(declare-fun <init>/-201242697 (var3144) void)
(declare-fun find/1809080823 (var316) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3965 var3965)
(declare-const null-var62 var62)
(declare-const null-String String)
(declare-const var3226 var3965) ; Statement: r25 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var3226 null-var3965)))
(declare-const var3697 var62) ; Statement: r0 := @parameter0: java.util.regex.Pattern 
(assert (not (= var3697 null-var62)))
(declare-const var1963 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1963 null-String)))
(assert true)
(define-const var667 var316 (matcher/468719934 var3697 (cast-from-String-to-String var1963))) ; Statement: r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(define-const var385 Int 0) ; Statement: i2 = 0 
(define-const var1425 var3144 var3144-init) ; Statement: $r3 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1425)) ; Statement: specialinvoke $r3.<java.util.HashMap: void <init>()>() 

(declare-const var1425!1 var3144)
(assert true) ; Non Conditional
(assert true)
(define-const var506 Bool (find/1809080823 var667)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var506 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2091 Int (length/-134980193 var1963)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 == $i0 goto return $r3 
(assert (= var385 var2091)) ; Cond: i2 == $i0 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3144-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), find/1809080823=([java.util.regex.Matcher], boolean), length/-134980193=([java.lang.String], int)}
; {var3965=com.mysql.cj.conf.ConnectionUrlParser, var3226=r25, var62=java.util.regex.Pattern, var3697=r0, var1963=r1, var574=null_type, var316=java.util.regex.Matcher, var667=r2, var385=i2, var3144=java.util.HashMap, var1425=$r3, var506=$z0, var2091=$i0}
; {com.mysql.cj.conf.ConnectionUrlParser=var3965, r25=var3226, java.util.regex.Pattern=var62, r0=var3697, r1=var1963, null_type=var574, java.util.regex.Matcher=var316, r2=var667, i2=var385, java.util.HashMap=var3144, $r3=var1425, $z0=var506, $i0=var2091}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r25 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r0 := @parameter0: java.util.regex.Pattern;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	i2 = 0;	$r3 = new java.util.HashMap;	specialinvoke $r3.<java.util.HashMap: void <init>()>();	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 == $i0 goto return $r3;	return $r3
;block_num 4