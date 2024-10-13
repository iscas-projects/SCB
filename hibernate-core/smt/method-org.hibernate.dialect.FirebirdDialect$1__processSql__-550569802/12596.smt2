(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2004 0)
(declare-sort var63 0)
(declare-sort var3112 0)
(declare-sort var2885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2885_hasFirstRow/-2097898482 (var3112) Bool)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2004 var2004)
(declare-const null-String String)
(declare-const null-var3112 var3112)
(declare-const var845 var2004) ; Statement: r6 := @this: org.hibernate.dialect.FirebirdDialect$1 
(assert (not (= var845 null-var2004)))
(declare-const var2181 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2181 null-String)))
(declare-const var2785 var3112) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var2785 null-var3112)))
(define-const var1955 Bool (var2885_hasFirstRow/-2097898482 var2785)) ; Statement: z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0) 
(define-const var1535 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var3698 Int (length/-134980193 var2181)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var346 Int (+ var3698 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var1535 var346)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1535!1 String)
(declare-const var346!1 Int)
(assert true)
(define-const var3088 String (append/672562846 var1535!1 var2181)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1535!2 String)
(assert (= var1535!2 (str.++ var1535!1 var2181)))
 ; Statement: if z0 == 0 goto $r7 = " first ?" 
(assert (not (= (ite var1955 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3608 String " first ? skip ?") ; Statement: $r7 = " first ? skip ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var861 String (insert/1196171004 var3088 6 var3608)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7) 
(assert true)
(define-const var1114 String (toString/-2075883882 var861)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2885_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2004=org.hibernate.dialect.FirebirdDialect$1, var845=r6, var2181=r2, var63=null_type, var3112=org.hibernate.engine.spi.RowSelection, var2785=r0, var2885=org.hibernate.dialect.pagination.LimitHelper, var1955=z0, var1535=$r1, var3698=$i0, var346=$i1, var3088=$r3, var3608=$r7, var861=$r4, var1114=$r5}
; {org.hibernate.dialect.FirebirdDialect$1=var2004, r6=var845, r2=var2181, null_type=var63, org.hibernate.engine.spi.RowSelection=var3112, r0=var2785, org.hibernate.dialect.pagination.LimitHelper=var2885, z0=var1955, $r1=var1535, $i0=var3698, $i1=var346, $r3=var3088, $r7=var3608, $r4=var861, $r5=var1114}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.FirebirdDialect$1;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.engine.spi.RowSelection;	z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r0);	$r1 = new java.lang.StringBuilder;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r7 = " first ?";	$r7 = " first ? skip ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r7);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3