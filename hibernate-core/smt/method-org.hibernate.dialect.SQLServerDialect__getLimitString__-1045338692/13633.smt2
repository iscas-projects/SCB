(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var762 0)
(declare-sort var3626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var762_getAfterSelectInsertPoint/722228707 (String) Int)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var762 var762)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var900 var762) ; Statement: r10 := @this: org.hibernate.dialect.SQLServerDialect 
(assert (not (= var900 null-var762)))
(declare-const var1567 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1567 null-String)))
(declare-const var2718 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2718 null-Int)))
(declare-const var2611 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2611 null-Int)))
 ; Statement: if i0 <= 0 goto $r0 = new java.lang.StringBuilder 
(assert (<= var2718 0)) ; Cond: i0 <= 0 
(define-const var626 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2300 Int (length/-134980193 var1567)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2756 Int (+ var2300 8)) ; Statement: $i2 = $i1 + 8 
(assert true)
;(assert (<init>/543593434 var626 var2756)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var626!1 String)
(declare-const var2756!1 Int)
(assert true)
(define-const var1617 String (append/672562846 var626!1 var1567)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var626!2 String)
(assert (= var626!2 (str.++ var626!1 var1567)))
(define-const var3462 Int (var762_getAfterSelectInsertPoint/722228707 var1567)) ; Statement: $i4 = staticinvoke <org.hibernate.dialect.SQLServerDialect: int getAfterSelectInsertPoint(java.lang.String)>(r1) 
(define-const var1295 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1295)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1295!1 String)
(assert (= var1295!1 ""))
(assert true)
(define-const var652 String (append/672562846 var1295!1 " top ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" top ") 
(declare-const var1295!2 String)
(assert (= var1295!2 (str.++ var1295!1 " top ")))
(assert true)
(define-const var1706 String (append/-1001720160 var652 var2611)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var652!1 String)
(assert (str.prefixof var652 var652!1))
(assert true)
(define-const var464 String (toString/-2075883882 var1706)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var186 String (insert/1196171004 var1617 var3462 var464)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r5) 
(assert true)
(define-const var3973 String (toString/-2075883882 var186)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var762_getAfterSelectInsertPoint/722228707=([java.lang.String], int), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var762=org.hibernate.dialect.SQLServerDialect, var900=r10, var1567=r1, var3626=null_type, var2718=i0, var2611=i3, var626=$r0, var2300=$i1, var2756=$i2, var1617=$r6, var3462=$i4, var1295=$r2, var652=$r3, var1706=$r4, var464=$r5, var186=$r7, var3973=$r8}
; {org.hibernate.dialect.SQLServerDialect=var762, r10=var900, r1=var1567, null_type=var3626, i0=var2718, i3=var2611, $r0=var626, $i1=var2300, $i2=var2756, $r6=var1617, $i4=var3462, $r2=var1295, $r3=var652, $r4=var1706, $r5=var464, $r7=var186, $r8=var3973}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r10 := @this: org.hibernate.dialect.SQLServerDialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 := @parameter2: int;	if i0 <= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + 8;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$i4 = staticinvoke <org.hibernate.dialect.SQLServerDialect: int getAfterSelectInsertPoint(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" top ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>($i4, $r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2