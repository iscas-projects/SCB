(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var623 0)
(declare-sort var2493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var623_shallowIndexOfPattern/-950111314 (String var2493 Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun insert/1196171004 (String Int String) String)
(declare-fun topAdded/791594973 (var623) Bool)
(declare-const null-var623 var623)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var623-SELECT_PATTERN var2493)
(declare-const var623-SELECT_DISTINCT_PATTERN var2493)
(declare-const var3656 var623) ; Statement: r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3656 null-var623)))
(declare-const var2984 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2984 null-String)))
(declare-const var3737 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3737 null-Int)))
(define-const var214 var2493 var623-SELECT_PATTERN) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_PATTERN> 
(define-const var603 Int (var623_shallowIndexOfPattern/-950111314 var2984 var214 var3737)) ; Statement: i1 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r1, i0) 
(define-const var3021 var2493 var623-SELECT_DISTINCT_PATTERN) ; Statement: $r2 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_DISTINCT_PATTERN> 
(define-const var330 Int (var623_shallowIndexOfPattern/-950111314 var2984 var3021 var3737)) ; Statement: i2 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r2, i0) 
 ; Statement: if i1 != i2 goto $r3 = "select" 
(assert (not (= var603 var330))) ; Cond: i1 != i2 
(define-const var3344 String "select") ; Statement: $r3 = "select" 
(assert true)
(define-const var2197 Int (length/-134980193 var3344)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var2408 Int (+ var603 var2197)) ; Statement: $i4 = i1 + $i3 
(assert true)
;(assert (insert/1196171004 var2984 var2408 " top(?)")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, " top(?)") 

(declare-const var2984!1 String)
(declare-const var2408!1 Int)
(declare-const var1357 String)
(assert true) ; Non Conditional
(declare-const var3656!1 var623)
(assert (not (= var3656!1 null-var623)))
(assert (= (topAdded/791594973 var3656!1) (ite (= 1 1) true false))) ; Statement: r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var623_shallowIndexOfPattern/-950111314=([java.lang.StringBuilder, java.util.regex.Pattern, int], int), length/-134980193=([java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), topAdded/791594973=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler], boolean)}
; {var623=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3656=r4, var2984=r0, var3737=i0, var2493=java.util.regex.Pattern, var214=$r1, var603=i1, var3021=$r2, var330=i2, var3344=$r3, var2197=$i3, var2408=$i4, var1357=" top(?)"}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var623, r4=var3656, r0=var2984, i0=var3737, java.util.regex.Pattern=var2493, $r1=var214, i1=var603, $r2=var3021, i2=var330, $r3=var3344, $i3=var2197, $i4=var2408, " top(?)"=var1357}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_PATTERN>;	i1 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r1, i0);	$r2 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_DISTINCT_PATTERN>;	i2 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r2, i0);	if i1 != i2 goto $r3 = "select";	$r3 = "select";	$i3 = virtualinvoke $r3.<java.lang.String: int length()>();	$i4 = i1 + $i3;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, " top(?)");	r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1;	return
;block_num 3