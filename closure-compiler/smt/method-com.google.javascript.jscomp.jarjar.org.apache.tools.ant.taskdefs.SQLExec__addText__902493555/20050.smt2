(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sqlCommand/553303715 (var2795) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2795 var2795)
(declare-const null-String String)
(declare-const var1916 var2795) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec 
(assert (not (= var1916 null-var2795)))
(declare-const var161 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var161 null-String)))
(define-const var2702 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2702)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2702!1 String)
(assert (= var2702!1 ""))
(define-const var225 String (sqlCommand/553303715 var1916)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> 
(assert true)
(define-const var1624 String (append/672562846 var2702!1 var225)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2702!2 String)
(assert (= var2702!2 (str.++ var2702!1 var225)))
(assert true)
(define-const var3715 String (append/672562846 var1624 var161)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var161)))
(assert true)
(define-const var3794 String (toString/-2075883882 var3715)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1916!1 var2795)
(assert (not (= var1916!1 null-var2795)))
(assert (= (sqlCommand/553303715 var1916!1) var3794)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sqlCommand/553303715=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2795=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec, var1916=r1, var161=r3, var721=null_type, var2702=$r0, var225=$r2, var1624=$r4, var3715=$r5, var3794=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec=var2795, r1=var1916, r3=var161, null_type=var721, $r0=var2702, $r2=var225, $r4=var1624, $r5=var3715, $r6=var3794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.SQLExec: java.lang.String sqlCommand> = $r6;	return
;block_num 1