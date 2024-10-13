(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var163 0)
(declare-sort var101 0)
(declare-sort var2722 0)
(declare-sort var643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var643_hasFirstRow/-2097898482 (var2722) Bool)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var163 var163)
(declare-const null-String String)
(declare-const null-var2722 var2722)
(declare-const var3269 var163) ; Statement: r6 := @this: org.hibernate.dialect.FirebirdDialect$1 
(assert (not (= var3269 null-var163)))
(declare-const var3265 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3265 null-String)))
(declare-const var3992 var2722) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3992 null-var2722)))
(define-const var2667 Bool (var643_hasFirstRow/-2097898482 var3992)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var3678 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var1741 Int (length/-134980193 var3265)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var59 Int (+ var1741 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var3678 var59)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3678!1 String)
(declare-const var59!1 Int)
(assert true)
(define-const var3369 String (append/672562846 var3678!1 var3265)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3678!2 String)
(assert (= var3678!2 (str.++ var3678!1 var3265)))
 ; Statement: if z0 == 0 goto $r7 = " first ?" 
(assert (= (ite var2667 1 0) 0)) ; Cond: z0 == 0 
(define-const var3726 String " first ?") ; Statement: $r7 = " first ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var751 String (insert/1196171004 var3369 6 var3726)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7) 
(assert true)
(define-const var3645 String (toString/-2075883882 var751)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var643_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var163=org.hibernate.dialect.FirebirdDialect$1, var3269=r6, var3265=r2, var101=null_type, var2722=org.hibernate.engine.spi.RowSelection, var3992=r0, var643=org.hibernate.dialect.pagination.LimitHelper, var2667=z0, var3678=$r1, var1741=$i0, var59=$i1, var3369=$r3, var3726=$r7, var751=$r4, var3645=$r5}
; {org.hibernate.dialect.FirebirdDialect$1=var163, r6=var3269, r2=var3265, null_type=var101, org.hibernate.engine.spi.RowSelection=var2722, r0=var3992, org.hibernate.dialect.pagination.LimitHelper=var643, z0=var2667, $r1=var3678, $i0=var1741, $i1=var59, $r3=var3369, $r7=var3726, $r4=var751, $r5=var3645}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.FirebirdDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " first ?";	$r7 = " first ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3