(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2884 0)
(declare-sort var1091 0)
(declare-sort var3879 0)
(declare-sort var3475 0)
(declare-sort var1507 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1091_lineSeparator/-342590142 () String)
(declare-fun var3879-init () var3879)
(declare-fun <init>/1281898776 (var3879) void)
(declare-fun getSelectColumnsStartPosition/876825046 (var2884 String Int) Int)
(declare-fun var2884_shallowIndexOfPattern/-950111314 (String var3475 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun substring/235658101 (String Int Int) String)
(declare-fun selectsMultipleColumns/245226229 (var2884 String) Bool)
(declare-fun String_join/1594745010 (String var1507) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var3879-to-var1507 (var3879) var1507)
(declare-const null-var2884 var2884)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2884-FROM_PATTERN var3475)
(declare-const var563 var2884) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var563 null-var2884)))
(declare-const var682 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var682 null-String)))
(declare-const var1832 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1832 null-Int)))
(define-const var2161 String var1091_lineSeparator/-342590142) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(define-const var1950 var3879 var3879-init) ; Statement: $r25 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1950)) ; Statement: specialinvoke $r25.<java.util.LinkedList: void <init>()>() 

(declare-const var1950!1 var3879)
(assert true)
(define-const var2451 Int (getSelectColumnsStartPosition/876825046 var563 var682 var1832)) ; Statement: i1 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectColumnsStartPosition(java.lang.StringBuilder,int)>(r3, i0) 
(define-const var335 var3475 var2884-FROM_PATTERN) ; Statement: $r4 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(define-const var2189 Int (var2884_shallowIndexOfPattern/-950111314 var682 var335 var2451)) ; Statement: i6 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r4, i1) 
(define-const var703 Int var2451) ; Statement: i7 = i1 
(define-const var271 Int var2451) ; Statement: i8 = i1 
(define-const var82 Int 0) ; Statement: i9 = 0 
(define-const var3978 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Non Conditional
(define-const var2356 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i7 == $i13 goto $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(assert (= var703 var2356)) ; Cond: i7 == $i13 
(define-const var2336 var3475 var2884-FROM_PATTERN) ; Statement: $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN> 
(define-const var2801 Int (var2884_shallowIndexOfPattern/-950111314 var682 var2336 var2451)) ; Statement: $i5 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r5, i1) 
(assert true)
(define-const var2093 String (substring/235658101 var682 var271 var2801)) ; Statement: $r20 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String substring(int,int)>(i8, $i5) 
(assert true)
(define-const var2925 Bool (selectsMultipleColumns/245226229 var563 var2093)) ; Statement: $z0 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean selectsMultipleColumns(java.lang.String)>($r20) 
 ; Statement: if $z0 == 0 goto r23 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String getAlias(java.lang.String)>($r20) 
(assert (not (= (ite var2925 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3978!1 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25) 
(assert (= (ite var3978!1 1 0) 0)) ; Cond: z2 == 0 
(define-const var31 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var3879-to-var1507 var1950!1))) ; Statement: $r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25) 
(assert true) ; Non Conditional
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1091_lineSeparator/-342590142=([], java.lang.String), var3879-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), getSelectColumnsStartPosition/876825046=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.StringBuilder, int], int), var2884_shallowIndexOfPattern/-950111314=([java.lang.StringBuilder, java.util.regex.Pattern, int], int), cast-from-Int-to-Int=([int], int), substring/235658101=([java.lang.StringBuilder, int, int], java.lang.String), selectsMultipleColumns/245226229=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.String], boolean), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var3879-to-var1507=([java.util.LinkedList], java.lang.Iterable)}
; {var2884=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var563=r2, var682=r3, var1832=i0, var1091=java.lang.System, var2161=r0, var3879=java.util.LinkedList, var1950=$r25, var2451=i1, var3475=java.util.regex.Pattern, var335=$r4, var2189=i6, var703=i7, var271=i8, var82=i9, var3978=z2, var2356=$i13, var2336=$r5, var2801=$i5, var2093=$r20, var2925=$z0, var1507=java.lang.Iterable, var31=$r24}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var2884, r2=var563, r3=var682, i0=var1832, java.lang.System=var1091, r0=var2161, java.util.LinkedList=var3879, $r25=var1950, i1=var2451, java.util.regex.Pattern=var3475, $r4=var335, i6=var2189, i7=var703, i8=var271, i9=var82, z2=var3978, $i13=var2356, $r5=var2336, $i5=var2801, $r20=var2093, $z0=var2925, java.lang.Iterable=var1507, $r24=var31}
;seq <java.lang.StringBuilder: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.StringBuilder: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r3 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	r0 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r25 = new java.util.LinkedList;	specialinvoke $r25.<java.util.LinkedList: void <init>()>();	i1 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectColumnsStartPosition(java.lang.StringBuilder,int)>(r3, i0);	$r4 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	i6 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r4, i1);	i7 = i1;	i8 = i1;	i9 = 0;	z2 = 0;	$i13 = (int) -1;	if i7 == $i13 goto $r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	$r5 = <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.util.regex.Pattern FROM_PATTERN>;	$i5 = staticinvoke <org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int shallowIndexOfPattern(java.lang.StringBuilder,java.util.regex.Pattern,int)>(r3, $r5, i1);	$r20 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String substring(int,int)>(i8, $i5);	$z0 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: boolean selectsMultipleColumns(java.lang.String)>($r20);	if $z0 == 0 goto r23 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String getAlias(java.lang.String)>($r20);	z2 = 1;	goto [?= (branch)];	if z2 == 0 goto $r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25);	$r24 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r25);	return $r24
;block_num 7