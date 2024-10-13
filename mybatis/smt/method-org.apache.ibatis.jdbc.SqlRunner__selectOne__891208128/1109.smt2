(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2308 0)
(declare-sort var1218 0)
(declare-sort var3476 0)
(declare-sort var2617 0)
(declare-sort var2787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selectAll/-496816773 (var2308 String (Array Int var3476)) var2617)
(declare-fun var2617_size/-959786421 (var2617) Int)
(declare-fun var2787-init () var2787)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/551030747 (var2787 String) void)
(declare-const null-var2308 var2308)
(declare-const null-String String)
(declare-const null-__Array__Int__var3476__ (Array Int var3476))
(declare-const var1619 var2308) ; Statement: r0 := @this: org.apache.ibatis.jdbc.SqlRunner 
(assert (not (= var1619 null-var2308)))
(declare-const var1383 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1383 null-String)))
(declare-const var1260 (Array Int var3476)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var1260 null-__Array__Int__var3476__)))
(assert true)
(define-const var3034 var2617 (selectAll/-496816773 var1619 var1383 var1260)) ; Statement: r3 = virtualinvoke r0.<org.apache.ibatis.jdbc.SqlRunner: java.util.List selectAll(java.lang.String,java.lang.Object[])>(r1, r2) 
(define-const var3800 Int (var2617_size/-959786421 var3034)) ; Statement: $i0 = interfaceinvoke r3.<java.util.List: int size()>() 
 ; Statement: if $i0 == 1 goto $r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0) 
(assert (not (= var3800 1))) ; Negate: Cond: $i0 == 1  
(define-const var1335 var2787 var2787-init) ; Statement: $r6 = new java.sql.SQLException 
(define-const var3430 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3430)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3430!1 String)
(assert (= var3430!1 ""))
(assert true)
(define-const var816 String (append/672562846 var3430!1 "Statement returned ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Statement returned ") 
(declare-const var3430!2 String)
(assert (= var3430!2 (str.++ var3430!1 "Statement returned ")))
(define-const var2095 Int (var2617_size/-959786421 var3034)) ; Statement: $i1 = interfaceinvoke r3.<java.util.List: int size()>() 
(assert true)
(define-const var1158 String (append/-1001720160 var816 var2095)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var816!1 String)
(assert (str.prefixof var816 var816!1))
(assert true)
(define-const var3137 String (append/672562846 var1158 " results where exactly one (1) was expected.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" results where exactly one (1) was expected.") 
(declare-const var1158!1 String)
(assert (= var1158!1 (str.++ var1158 " results where exactly one (1) was expected.")))
(assert true)
(define-const var1027 String (toString/-2075883882 var3137)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/551030747 var1335 var1027)) ; Statement: specialinvoke $r6.<java.sql.SQLException: void <init>(java.lang.String)>($r11) 

(declare-const var1335!1 var2787)
(declare-const var1027!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {selectAll/-496816773=([org.apache.ibatis.jdbc.SqlRunner, java.lang.String, java.lang.Object[]], java.util.List), var2617_size/-959786421=([java.util.List], int), var2787-init=([], java.sql.SQLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/551030747=([java.sql.SQLException, java.lang.String], void)}
; {var2308=org.apache.ibatis.jdbc.SqlRunner, var1619=r0, var1383=r1, var1218=null_type, var3476=java.lang.Object, var1260=r2, var2617=java.util.List, var3034=r3, var3800=$i0, var2787=java.sql.SQLException, var1335=$r6, var3430=$r7, var816=$r8, var2095=$i1, var1158=$r9, var3137=$r10, var1027=$r11}
; {org.apache.ibatis.jdbc.SqlRunner=var2308, r0=var1619, r1=var1383, null_type=var1218, java.lang.Object=var3476, r2=var1260, java.util.List=var2617, r3=var3034, $i0=var3800, java.sql.SQLException=var2787, $r6=var1335, $r7=var3430, $r8=var816, $i1=var2095, $r9=var1158, $r10=var3137, $r11=var1027}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.jdbc.SqlRunner;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	r3 = virtualinvoke r0.<org.apache.ibatis.jdbc.SqlRunner: java.util.List selectAll(java.lang.String,java.lang.Object[])>(r1, r2);	$i0 = interfaceinvoke r3.<java.util.List: int size()>();	if $i0 == 1 goto $r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0);	$r6 = new java.sql.SQLException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Statement returned ");	$i1 = interfaceinvoke r3.<java.util.List: int size()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" results where exactly one (1) was expected.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.sql.SQLException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2