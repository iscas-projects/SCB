(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun insert/1196171004 (String Int String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3429 var3429)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3603 var3429) ; Statement: r1 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3603 null-var3429)))
(declare-const var177 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var177 null-String)))
(declare-const var1894 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1894 null-Int)))
(assert true)
;(assert (insert/1196171004 var177 var1894 "select inner_query.*, row_number() over (order by current_timestamp) as __row__ from ( ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(i0, "select inner_query.*, row_number() over (order by current_timestamp) as __row__ from ( ") 

(declare-const var177!1 String)
(declare-const var1894!1 Int)
(declare-const var1183 String)
(assert true)
;(assert (append/672562846 var177!1 " ) inner_query ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) inner_query ") 
(declare-const var177!2 String)
(assert (= var177!2 (str.++ var177!1 " ) inner_query ")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3429=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3603=r1, var177=r0, var1894=i0, var1183="select inner_query.*, row_number() over (order by current_timestamp) as __row__ from ( "}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var3429, r1=var3603, r0=var177, i0=var1894, "select inner_query.*, row_number() over (order by current_timestamp) as __row__ from ( "=var1183}
;seq <java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(i0, "select inner_query.*, row_number() over (order by current_timestamp) as __row__ from ( ");	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) inner_query ");	return
;block_num 1