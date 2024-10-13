(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3812 0)
(declare-sort var661 0)
(declare-sort var1178 0)
(declare-sort var2896 0)
(declare-sort var1906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var1178 String) var2896)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var2896) Bool)
(declare-fun var1906-init () var1906)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1906 String) void)
(declare-const null-var3812 var3812)
(declare-const null-String String)
(declare-const var3812-SQL_STATEMENT_TYPE_PATTERN var1178)
(declare-const var2295 var3812) ; Statement: r9 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var2295 null-var3812)))
(declare-const var1798 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1798 null-String)))
(define-const var412 var1178 var3812-SQL_STATEMENT_TYPE_PATTERN) ; Statement: $r1 = <org.hibernate.dialect.Oracle8iDialect: java.util.regex.Pattern SQL_STATEMENT_TYPE_PATTERN> 
(assert true)
(define-const var2100 var2896 (matcher/468719934 var412 (cast-from-String-to-String var1798))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var3042 Bool (matches/-149940873 var2100)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var3042 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2437 var1906 var1906-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2162 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2162)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2162!1 String)
(assert (= var2162!1 ""))
(assert true)
(define-const var2339 String (append/672562846 var2162!1 "Can\u0027t determine SQL statement type for statement: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t determine SQL statement type for statement: ") 
(declare-const var2162!2 String)
(assert (= var2162!2 (str.++ var2162!1 "Can\u0027t determine SQL statement type for statement: ")))
(assert true)
(define-const var2514 String (append/672562846 var2339 var1798)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2339!1 String)
(assert (= var2339!1 (str.++ var2339 var1798)))
(assert true)
(define-const var575 String (toString/-2075883882 var2514)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2437 var575)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var2437!1 var1906)
(declare-const var575!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var1906-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3812=org.hibernate.dialect.Oracle8iDialect, var2295=r9, var1798=r0, var661=null_type, var1178=java.util.regex.Pattern, var412=$r1, var2896=java.util.regex.Matcher, var2100=r2, var3042=$z0, var1906=java.lang.IllegalArgumentException, var2437=$r3, var2162=$r4, var2339=$r5, var2514=$r6, var575=$r7}
; {org.hibernate.dialect.Oracle8iDialect=var3812, r9=var2295, r0=var1798, null_type=var661, java.util.regex.Pattern=var1178, $r1=var412, java.util.regex.Matcher=var2896, r2=var2100, $z0=var3042, java.lang.IllegalArgumentException=var1906, $r3=var2437, $r4=var2162, $r5=var2339, $r6=var2514, $r7=var575}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.dialect.Oracle8iDialect;	r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.dialect.Oracle8iDialect: java.util.regex.Pattern SQL_STATEMENT_TYPE_PATTERN>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t determine SQL statement type for statement: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r3
;block_num 2