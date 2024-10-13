(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2448 0)
(declare-sort var1138 0)
(declare-sort var280 0)
(declare-sort var3250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-522406933 (var1138) String)
(declare-fun cast-from-var2448-to-var1138 (var2448) var1138)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun wrappedStmt/-356898199 (var3250) var280)
(declare-fun cast-from-var2448-to-var3250 (var2448) var3250)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2448 var2448)
(declare-const null-var280 var280)
(declare-const var2433 var2448) ; Statement: r1 := @this: com.mysql.cj.jdbc.PreparedStatementWrapper 
(assert (not (= var2433 null-var2448)))
(define-const var3159 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var179 String (toString/-522406933 (cast-from-var2448-to-var1138 var2433))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var3159 var179)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3159!1 String)
(assert (= var3159!1 var179))
(define-const var3113 var280 (wrappedStmt/-356898199 (cast-from-var2448-to-var3250 var2433))) ; Statement: $r3 = r1.<com.mysql.cj.jdbc.PreparedStatementWrapper: java.sql.Statement wrappedStmt> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3113 null-var280)) ; Cond: $r3 == null 
(assert true)
(define-const var80 String (toString/-2075883882 var3159!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2448-to-var1138=([com.mysql.cj.jdbc.PreparedStatementWrapper], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), wrappedStmt/-356898199=([com.mysql.cj.jdbc.StatementWrapper], java.sql.Statement), cast-from-var2448-to-var3250=([com.mysql.cj.jdbc.PreparedStatementWrapper], com.mysql.cj.jdbc.StatementWrapper), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2448=com.mysql.cj.jdbc.PreparedStatementWrapper, var2433=r1, var3159=$r0, var1138=java.lang.Object, var179=$r2, var280=java.sql.Statement, var3250=com.mysql.cj.jdbc.StatementWrapper, var3113=$r3, var80=$r4}
; {com.mysql.cj.jdbc.PreparedStatementWrapper=var2448, r1=var2433, $r0=var3159, java.lang.Object=var1138, $r2=var179, java.sql.Statement=var280, com.mysql.cj.jdbc.StatementWrapper=var3250, $r3=var3113, $r4=var80}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.PreparedStatementWrapper;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = r1.<com.mysql.cj.jdbc.PreparedStatementWrapper: java.sql.Statement wrappedStmt>;	if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2