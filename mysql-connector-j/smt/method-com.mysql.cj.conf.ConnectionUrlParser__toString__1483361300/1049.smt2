(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3577 0)
(declare-sort var1959 0)
(declare-sort var1739 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-522406933 (var1959) String)
(declare-fun cast-from-var3577-to-var1959 (var3577) var1959)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun arr-var1959-init () (Array Int var1959))
(declare-fun scheme/1855906420 (var3577) String)
(declare-fun cast-from-String-to-var1959 (String) var1959)
(declare-fun authority/1855906420 (var3577) String)
(declare-fun path/1855906420 (var3577) String)
(declare-fun query/1855906420 (var3577) String)
(declare-fun parsedHosts/1855906420 (var3577) var1739)
(declare-fun cast-from-var1739-to-var1959 (var1739) var1959)
(declare-fun parsedProperties/1855906420 (var3577) var2928)
(declare-fun cast-from-var2928-to-var1959 (var2928) var1959)
(declare-fun String_format/1339386452 (String (Array Int var1959)) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3577 var3577)
(declare-const null-__Array__Int__var1959__ (Array Int var1959))
(declare-const var3223 var3577) ; Statement: r1 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var3223 null-var3577)))
(define-const var2247 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3676 String (toString/-522406933 (cast-from-var3577-to-var1959 var3223))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2247 var3676)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2247!1 String)
(assert (= var2247!1 var3676))
(define-const var1251 (Array Int var1959) arr-var1959-init) ; Statement: $r3 = newarray (java.lang.Object)[6] 
(define-const var243 String (scheme/1855906420 var3223)) ; Statement: $r4 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String scheme> 
(declare-const var1251!1 (Array Int var1959))
(assert (not (= var1251!1 null-__Array__Int__var1959__)))
(assert (= (select var1251!1 0) (cast-from-String-to-var1959 var243))) ; Statement: $r3[0] = $r4 
(define-const var494 String (authority/1855906420 var3223)) ; Statement: $r5 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String authority> 
(declare-const var1251!2 (Array Int var1959))
(assert (not (= var1251!2 null-__Array__Int__var1959__)))
(assert (= (select var1251!2 1) (cast-from-String-to-var1959 var494))) ; Statement: $r3[1] = $r5 
(define-const var3144 String (path/1855906420 var3223)) ; Statement: $r6 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String path> 
(declare-const var1251!3 (Array Int var1959))
(assert (not (= var1251!3 null-__Array__Int__var1959__)))
(assert (= (select var1251!3 2) (cast-from-String-to-var1959 var3144))) ; Statement: $r3[2] = $r6 
(define-const var45 String (query/1855906420 var3223)) ; Statement: $r7 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String query> 
(declare-const var1251!4 (Array Int var1959))
(assert (not (= var1251!4 null-__Array__Int__var1959__)))
(assert (= (select var1251!4 3) (cast-from-String-to-var1959 var45))) ; Statement: $r3[3] = $r7 
(define-const var1552 var1739 (parsedHosts/1855906420 var3223)) ; Statement: $r8 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.util.List parsedHosts> 
(declare-const var1251!5 (Array Int var1959))
(assert (not (= var1251!5 null-__Array__Int__var1959__)))
(assert (= (select var1251!5 4) (cast-from-var1739-to-var1959 var1552))) ; Statement: $r3[4] = $r8 
(define-const var2129 var2928 (parsedProperties/1855906420 var3223)) ; Statement: $r9 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.util.Map parsedProperties> 
(declare-const var1251!6 (Array Int var1959))
(assert (not (= var1251!6 null-__Array__Int__var1959__)))
(assert (= (select var1251!6 5) (cast-from-var2928-to-var1959 var2129))) ; Statement: $r3[5] = $r9 
(define-const var3174 String (String_format/1339386452 " :: {scheme: \u0022%s\u0022, authority: \u0022%s\u0022, path: \u0022%s\u0022, query: \u0022%s\u0022, parsedHosts: %s, parsedProperties: %s}" var1251!6)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {scheme: \"%s\", authority: \"%s\", path: \"%s\", query: \"%s\", parsedHosts: %s, parsedProperties: %s}", $r3) 
(assert true)
;(assert (append/672562846 var2247!1 var3174)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2247!2 String)
(assert (= var2247!2 (str.++ var2247!1 var3174)))
(assert true)
(define-const var231 String (toString/-2075883882 var2247!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3577-to-var1959=([com.mysql.cj.conf.ConnectionUrlParser], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), arr-var1959-init=([], java.lang.Object[]), scheme/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.lang.String), cast-from-String-to-var1959=([java.lang.String], java.lang.Object), authority/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.lang.String), path/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.lang.String), query/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.lang.String), parsedHosts/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.util.List), cast-from-var1739-to-var1959=([java.util.List], java.lang.Object), parsedProperties/1855906420=([com.mysql.cj.conf.ConnectionUrlParser], java.util.Map), cast-from-var2928-to-var1959=([java.util.Map], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3577=com.mysql.cj.conf.ConnectionUrlParser, var3223=r1, var2247=$r0, var1959=java.lang.Object, var3676=$r2, var1251=$r3, var243=$r4, var494=$r5, var3144=$r6, var45=$r7, var1739=java.util.List, var1552=$r8, var2928=java.util.Map, var2129=$r9, var3174=$r10, var231=$r11}
; {com.mysql.cj.conf.ConnectionUrlParser=var3577, r1=var3223, $r0=var2247, java.lang.Object=var1959, $r2=var3676, $r3=var1251, $r4=var243, $r5=var494, $r6=var3144, $r7=var45, java.util.List=var1739, $r8=var1552, java.util.Map=var2928, $r9=var2129, $r10=var3174, $r11=var231}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.conf.ConnectionUrlParser;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = newarray (java.lang.Object)[6];	$r4 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String scheme>;	$r3[0] = $r4;	$r5 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String authority>;	$r3[1] = $r5;	$r6 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String path>;	$r3[2] = $r6;	$r7 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.lang.String query>;	$r3[3] = $r7;	$r8 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.util.List parsedHosts>;	$r3[4] = $r8;	$r9 = r1.<com.mysql.cj.conf.ConnectionUrlParser: java.util.Map parsedProperties>;	$r3[5] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" :: {scheme: \"%s\", authority: \"%s\", path: \"%s\", query: \"%s\", parsedHosts: %s, parsedProperties: %s}", $r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1