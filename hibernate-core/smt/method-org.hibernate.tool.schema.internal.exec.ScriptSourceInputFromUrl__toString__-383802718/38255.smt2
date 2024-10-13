(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var623 0)
(declare-sort var35 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/592779914 (var623) var35)
(declare-fun toExternalForm/431506284 (var35) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var623 var623)
(declare-const var3074 var623) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl 
(assert (not (= var3074 null-var623)))
(define-const var3828 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3828)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3828!1 String)
(assert (= var3828!1 ""))
(assert true)
(define-const var3437 String (append/672562846 var3828!1 "ScriptSourceInputFromUrl(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputFromUrl(") 
(declare-const var3828!2 String)
(assert (= var3828!2 (str.++ var3828!1 "ScriptSourceInputFromUrl(")))
(define-const var3080 var35 (url/592779914 var3074)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url> 
(assert true)
(define-const var3648 String (toExternalForm/431506284 var3080)) ; Statement: $r3 = virtualinvoke $r2.<java.net.URL: java.lang.String toExternalForm()>() 
(assert true)
(define-const var2791 String (append/672562846 var3437 var3648)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3437!1 String)
(assert (= var3437!1 (str.++ var3437 var3648)))
(assert true)
(define-const var818 String (append/672562846 var2791 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 ")")))
(assert true)
(define-const var3201 String (toString/-2075883882 var818)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/592779914=([org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl], java.net.URL), toExternalForm/431506284=([java.net.URL], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var623=org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl, var3074=r1, var3828=$r0, var3437=$r4, var35=java.net.URL, var3080=$r2, var3648=$r3, var2791=$r5, var818=$r6, var3201=$r7}
; {org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl=var623, r1=var3074, $r0=var3828, $r4=var3437, java.net.URL=var35, $r2=var3080, $r3=var3648, $r5=var2791, $r6=var818, $r7=var3201}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ScriptSourceInputFromUrl(");	$r2 = r1.<org.hibernate.tool.schema.internal.exec.ScriptSourceInputFromUrl: java.net.URL url>;	$r3 = virtualinvoke $r2.<java.net.URL: java.lang.String toExternalForm()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1