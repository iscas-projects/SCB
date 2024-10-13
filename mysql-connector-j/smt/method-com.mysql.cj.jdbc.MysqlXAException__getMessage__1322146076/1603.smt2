(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3964 0)
(declare-sort var199 0)
(declare-sort var135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var199) String)
(declare-fun cast-from-var3964-to-var199 (var3964) var199)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun message/1668015049 (var3964) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3964 var3964)
(declare-const null-String String)
(declare-const var89 var3964) ; Statement: r0 := @this: com.mysql.cj.jdbc.MysqlXAException 
(assert (not (= var89 null-var3964)))
(assert true)
(define-const var2212 String (getMessage/849299655 (cast-from-var3964-to-var199 var89))) ; Statement: r1 = specialinvoke r0.<javax.transaction.xa.XAException: java.lang.String getMessage()>() 
(define-const var1035 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1035)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1035!1 String)
(assert (= var1035!1 ""))
 ; Statement: if r1 == null goto $r3 = r0.<com.mysql.cj.jdbc.MysqlXAException: java.lang.String message> 
(assert (= var2212 null-String)) ; Cond: r1 == null 
(define-const var3455 String (message/1668015049 var89)) ; Statement: $r3 = r0.<com.mysql.cj.jdbc.MysqlXAException: java.lang.String message> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3455 null-String)) ; Cond: $r3 == null 
(assert true)
(define-const var1315 String (toString/-2075883882 var1035!1)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3964-to-var199=([com.mysql.cj.jdbc.MysqlXAException], java.lang.Throwable), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), message/1668015049=([com.mysql.cj.jdbc.MysqlXAException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3964=com.mysql.cj.jdbc.MysqlXAException, var89=r0, var199=java.lang.Throwable, var2212=r1, var1035=$r2, var135=null_type, var3455=$r3, var1315=$r4}
; {com.mysql.cj.jdbc.MysqlXAException=var3964, r0=var89, java.lang.Throwable=var199, r1=var2212, $r2=var1035, null_type=var135, $r3=var3455, $r4=var1315}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.MysqlXAException;	r1 = specialinvoke r0.<javax.transaction.xa.XAException: java.lang.String getMessage()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	if r1 == null goto $r3 = r0.<com.mysql.cj.jdbc.MysqlXAException: java.lang.String message>;	$r3 = r0.<com.mysql.cj.jdbc.MysqlXAException: java.lang.String message>;	if $r3 == null goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3