(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3446 0)
(declare-sort var2975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3446_shallowIndexOfPattern/-950111314 (String var2975 Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun insert/1196171004 (String Int String) String)
(declare-fun topAdded/791594973 (var3446) Bool)
(declare-const null-var3446 var3446)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3446-SELECT_PATTERN var2975)
(declare-const var3446-SELECT_DISTINCT_PATTERN var2975)
(declare-const var3719 var3446) ; Statement: r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3719 null-var3446)))
(declare-const var3967 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3967 null-String)))
(declare-const var3809 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3809 null-Int)))
(define-const var2980 var2975 var3446-SELECT_PATTERN) ; Statement: $r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_PATTERN> 
(define-const var1858 Int (var3446_shallowIndexOfPattern/-950111314 var3967 var2980 var3809)) ; Statement: i1 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r1, i0) 
(define-const var2665 var2975 var3446-SELECT_DISTINCT_PATTERN) ; Statement: $r2 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_DISTINCT_PATTERN> 
(define-const var2666 Int (var3446_shallowIndexOfPattern/-950111314 var3967 var2665 var3809)) ; Statement: i2 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r2, i0) 
 ; Statement: if i1 != i2 goto $r3 = "select" 
(assert (not (not (= var1858 var2666)))) ; Negate: Cond: i1 != i2  
(define-const var3136 String "select distinct") ; Statement: $r5 = "select distinct" 
(assert true)
(define-const var1590 Int (length/-134980193 var3136)) ; Statement: $i5 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var1069 Int (+ var2666 var1590)) ; Statement: $i6 = i2 + $i5 
(assert true)
;(assert (insert/1196171004 var3967 var1069 " top(?)")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i6, " top(?)") 

(declare-const var3967!1 String)
(declare-const var1069!1 Int)
(declare-const var1070 String)
 ; Statement: goto [?= r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1] 
(assert true) ; Non Conditional
(declare-const var3719!1 var3446)
(assert (not (= var3719!1 null-var3446)))
(assert (= (topAdded/791594973 var3719!1) (ite (= 1 1) true false))) ; Statement: r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3446_shallowIndexOfPattern/-950111314=([java.lang.StringBuilder, java.util.regex.Pattern, int], int), length/-134980193=([java.lang.String], int), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), topAdded/791594973=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler], boolean)}
; {var3446=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3719=r4, var3967=r0, var3809=i0, var2975=java.util.regex.Pattern, var2980=$r1, var1858=i1, var2665=$r2, var2666=i2, var3136=$r5, var1590=$i5, var1069=$i6, var1070=" top(?)"}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var3446, r4=var3719, r0=var3967, i0=var3809, java.util.regex.Pattern=var2975, $r1=var2980, i1=var1858, $r2=var2665, i2=var2666, $r5=var3136, $i5=var1590, $i6=var1069, " top(?)"=var1070}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r4 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	$r1 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_PATTERN>;	i1 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r1, i0);	$r2 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern SELECT_DISTINCT_PATTERN>;	i2 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r0, $r2, i0);	if i1 != i2 goto $r3 = "select";	$r5 = "select distinct";	$i5 = virtualinvoke $r5.<java.lang.String: int length()>();	$i6 = i2 + $i5;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i6, " top(?)");	goto [?= r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1];	r4.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean topAdded> = 1;	return
;block_num 3