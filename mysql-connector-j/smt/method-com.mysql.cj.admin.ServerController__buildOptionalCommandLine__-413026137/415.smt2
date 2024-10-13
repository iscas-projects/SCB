(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3109 0)
(declare-sort var1399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun serverProps/-1700053300 (var3109) var1399)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3109 var3109)
(declare-const null-var1399 var1399)
(declare-const var3876 var3109) ; Statement: r1 := @this: com.mysql.cj.admin.ServerController 
(assert (not (= var3876 null-var3109)))
(define-const var1873 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1873)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1873!1 String)
(assert (= var1873!1 ""))
(define-const var2995 var1399 (serverProps/-1700053300 var3876)) ; Statement: $r2 = r1.<com.mysql.cj.admin.ServerController: java.util.Properties serverProps> 
 ; Statement: if $r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2995 null-var1399)) ; Cond: $r2 == null 
(assert true)
(define-const var347 String (toString/-2075883882 var1873!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), serverProps/-1700053300=([com.mysql.cj.admin.ServerController], java.util.Properties), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3109=com.mysql.cj.admin.ServerController, var3876=r1, var1873=$r0, var1399=java.util.Properties, var2995=$r2, var347=$r3}
; {com.mysql.cj.admin.ServerController=var3109, r1=var3876, $r0=var1873, java.util.Properties=var1399, $r2=var2995, $r3=var347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.admin.ServerController;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.mysql.cj.admin.ServerController: java.util.Properties serverProps>;	if $r2 == null goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2