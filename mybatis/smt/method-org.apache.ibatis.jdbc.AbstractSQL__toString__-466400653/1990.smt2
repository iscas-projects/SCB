(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3318 0)
(declare-sort var3440 0)
(declare-sort var908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sql/2051335010 (var3318) var3440)
(declare-fun sql/1533437310 (var3440 var908) String)
(declare-fun cast-from-String-to-var908 (String) var908)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3318 var3318)
(declare-const var1875 var3318) ; Statement: r1 := @this: org.apache.ibatis.jdbc.AbstractSQL 
(assert (not (= var1875 null-var3318)))
(define-const var2232 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2232)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2232!1 String)
(assert (= var2232!1 ""))
(assert true)
(define-const var1004 var3440 (sql/2051335010 var1875)) ; Statement: $r2 = specialinvoke r1.<org.apache.ibatis.jdbc.AbstractSQL: org.apache.ibatis.jdbc.AbstractSQL$SQLStatement sql()>() 
(assert true)
;(assert (sql/1533437310 var1004 (cast-from-String-to-var908 var2232!1))) ; Statement: virtualinvoke $r2.<org.apache.ibatis.jdbc.AbstractSQL$SQLStatement: java.lang.String sql(java.lang.Appendable)>($r0) 

(declare-const var1004!1 var3440)
(declare-const var2232!2 String)
(assert true)
(define-const var1619 String (toString/-2075883882 var2232!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sql/2051335010=([org.apache.ibatis.jdbc.AbstractSQL], org.apache.ibatis.jdbc.AbstractSQL$SQLStatement), sql/1533437310=([org.apache.ibatis.jdbc.AbstractSQL$SQLStatement, java.lang.Appendable], java.lang.String), cast-from-String-to-var908=([java.lang.StringBuilder], java.lang.Appendable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3318=org.apache.ibatis.jdbc.AbstractSQL, var1875=r1, var2232=$r0, var3440=org.apache.ibatis.jdbc.AbstractSQL$SQLStatement, var1004=$r2, var908=java.lang.Appendable, var1619=$r3}
; {org.apache.ibatis.jdbc.AbstractSQL=var3318, r1=var1875, $r0=var2232, org.apache.ibatis.jdbc.AbstractSQL$SQLStatement=var3440, $r2=var1004, java.lang.Appendable=var908, $r3=var1619}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.jdbc.AbstractSQL;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.ibatis.jdbc.AbstractSQL: org.apache.ibatis.jdbc.AbstractSQL$SQLStatement sql()>();	virtualinvoke $r2.<org.apache.ibatis.jdbc.AbstractSQL$SQLStatement: java.lang.String sql(java.lang.Appendable)>($r0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1