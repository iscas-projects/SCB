(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getFullExecutablePath/-1952102706 (var622) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun buildOptionalCommandLine/-413026137 (var622) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var622 var622)
(declare-const var2861 var622) ; Statement: r1 := @this: com.mysql.cj.admin.ServerController 
(assert (not (= var2861 null-var622)))
(define-const var2885 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1824 String (getFullExecutablePath/-1952102706 var2861)) ; Statement: $r2 = specialinvoke r1.<com.mysql.cj.admin.ServerController: java.lang.String getFullExecutablePath()>() 
(assert true)
;(assert (<init>/-1061048412 var2885 var1824)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2885!1 String)
(assert (= var2885!1 var1824))
(assert true)
(define-const var1815 String (buildOptionalCommandLine/-413026137 var2861)) ; Statement: $r3 = specialinvoke r1.<com.mysql.cj.admin.ServerController: java.lang.String buildOptionalCommandLine()>() 
(assert true)
;(assert (append/672562846 var2885!1 var1815)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2885!2 String)
(assert (= var2885!2 (str.++ var2885!1 var1815)))
(assert true)
(define-const var3369 String (toString/-2075883882 var2885!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getFullExecutablePath/-1952102706=([com.mysql.cj.admin.ServerController], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), buildOptionalCommandLine/-413026137=([com.mysql.cj.admin.ServerController], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var622=com.mysql.cj.admin.ServerController, var2861=r1, var2885=$r0, var1824=$r2, var1815=$r3, var3369=$r4}
; {com.mysql.cj.admin.ServerController=var622, r1=var2861, $r0=var2885, $r2=var1824, $r3=var1815, $r4=var3369}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.admin.ServerController;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<com.mysql.cj.admin.ServerController: java.lang.String getFullExecutablePath()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = specialinvoke r1.<com.mysql.cj.admin.ServerController: java.lang.String buildOptionalCommandLine()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1