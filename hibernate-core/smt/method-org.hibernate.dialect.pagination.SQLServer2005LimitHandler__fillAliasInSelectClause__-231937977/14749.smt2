(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var392 0)
(declare-sort var2618 0)
(declare-sort var2167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var392_lineSeparator/-342590142 () String)
(declare-fun var2618-init () var2618)
(declare-fun <init>/1281898776 (var2618) void)
(declare-fun getSelectColumnsStartPosition/876825046 (var2332 String Int) Int)
(declare-fun var2332_shallowIndexOfPattern/-950111314 (String var2167 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun substring/235658101 (String Int Int) String)
(declare-fun selectsMultipleColumns/245226229 (var2332 String) Bool)
(declare-const null-var2332 var2332)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2332-FROM_PATTERN var2167)
(declare-const var1574 var2332) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var1574 null-var2332)))
(declare-const var2862 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2862 null-String)))
(declare-const var3975 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3975 null-Int)))
(define-const var3909 String var392_lineSeparator/-342590142) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(define-const var1796 var2618 var2618-init) ; Statement: $r25 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1796)) ; Statement: specialinvoke $r25.<java.util.LinkedList: void <init>()>() 

(declare-const var1796!1 var2618)
(assert true)
(define-const var1175 Int (getSelectColumnsStartPosition/876825046 var1574 var2862 var3975)) ; Statement: i1 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectColumnsStartPosition(java.lang.StringBuilder,int)>(r3, i0) 
(define-const var1545 var2167 var2332-FROM_PATTERN) ; Statement: $r4 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(define-const var3730 Int (var2332_shallowIndexOfPattern/-950111314 var2862 var1545 var1175)) ; Statement: i6 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r4, i1) 
(define-const var3433 Int var1175) ; Statement: i7 = i1 
(define-const var3293 Int var1175) ; Statement: i8 = i1 
(define-const var1308 Int 0) ; Statement: i9 = 0 
(define-const var170 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Non Conditional
(define-const var2207 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i7 == $i13 goto $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(assert (= var3433 var2207)) ; Cond: i7 == $i13 
(define-const var2766 var2167 var2332-FROM_PATTERN) ; Statement: $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(define-const var819 Int (var2332_shallowIndexOfPattern/-950111314 var2862 var2766 var1175)) ; Statement: $i5 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r5, i1) 
(assert true)
(define-const var2025 String (substring/235658101 var2862 var3293 var819)) ; Statement: $r20 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String substring(int,int)>(i8, $i5) 
(assert true)
(define-const var3501 Bool (selectsMultipleColumns/245226229 var1574 var2025)) ; Statement: $z0 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean selectsMultipleColumns(java.lang.String)>($r20) 
 ; Statement: if $z0 == 0 goto r23 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String getAlias(java.lang.String)>($r20) 
(assert (not (= (ite var3501 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var170!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25) 
(assert (not (= (ite var170!1 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var721 String "*") ; Statement: $r24 = "*" 
 ; Statement: goto [?= return $r24] 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var392_lineSeparator/-342590142=([], java.lang.String), var2618-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), getSelectColumnsStartPosition/876825046=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.StringBuilder, int], int), var2332_shallowIndexOfPattern/-950111314=([java.lang.StringBuilder, java.util.regex.Pattern, int], int), cast-from-Int-to-Int=([int], int), substring/235658101=([java.lang.StringBuilder, int, int], java.lang.String), selectsMultipleColumns/245226229=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.String], boolean)}
; {var2332=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var1574=r2, var2862=r3, var3975=i0, var392=java.lang.System, var3909=r0, var2618=java.util.LinkedList, var1796=$r25, var1175=i1, var2167=java.util.regex.Pattern, var1545=$r4, var3730=i6, var3433=i7, var3293=i8, var1308=i9, var170=z2, var2207=$i13, var2766=$r5, var819=$i5, var2025=$r20, var3501=$z0, var721=$r24}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var2332, r2=var1574, r3=var2862, i0=var3975, java.lang.System=var392, r0=var3909, java.util.LinkedList=var2618, $r25=var1796, i1=var1175, java.util.regex.Pattern=var2167, $r4=var1545, i6=var3730, i7=var3433, i8=var3293, i9=var1308, z2=var170, $i13=var2207, $r5=var2766, $i5=var819, $r20=var2025, $z0=var3501, $r24=var721}
;seq <java.lang.StringBuilder: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r3 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r25 = new java.util.LinkedList;	specialinvoke $r25.<java.util.LinkedList: void <init>()>();	i1 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectColumnsStartPosition(java.lang.StringBuilder,int)>(r3, i0);	$r4 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	i6 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r4, i1);	i7 = i1;	i8 = i1;	i9 = 0;	z2 = 0;	$i13 = (int) -1;	if i7 == $i13 goto $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	$r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	$i5 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r5, i1);	$r20 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String substring(int,int)>(i8, $i5);	$z0 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean selectsMultipleColumns(java.lang.String)>($r20);	if $z0 == 0 goto r23 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String getAlias(java.lang.String)>($r20);	z2 = 1;	goto [?= (branch)];	if z2 == 0 goto $r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25);	$r24 = "*";	goto [?= return $r24];	return $r24
;block_num 7