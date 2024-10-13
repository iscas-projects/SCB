(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1525 0)
(declare-sort var1400 0)
(declare-sort var3956 0)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-fun charAt/1621160911 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getStatementIndex/-932709428 (var1525 String) Int)
(declare-fun var3527_hasFirstRow/-2097898482 (var3956) Bool)
(declare-fun addTopExpression/-1388888097 (var1525 String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1525 var1525)
(declare-const null-String String)
(declare-const null-var3956 var3956)
(declare-const var3967 var1525) ; Statement: r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3967 null-var1525)))
(declare-const var3585 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3585 null-String)))
(declare-const var3466 var3956) ; Statement: r3 := @parameter1: org.hibernate.engine.spi.RowSelection 
(assert (not (= var3466 null-var3956)))
(define-const var3718 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3718 var3585)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var3718!1 String)
(assert (= var3718!1 var3585))
(assert true)
(define-const var1473 Int (length/-171891354 var3718!1)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>() 
(define-const var3216 Int (- var1473 1)) ; Statement: $i1 = $i0 - 1 
(assert true)
(define-const var3539 Int (charAt/1621160911 var3718!1 var3216)) ; Statement: $c2 = virtualinvoke $r10.<java.lang.StringBuilder: char charAt(int)>($i1) 
(define-const var852 Int (cast-from-Int-to-Int var3539)) ; Statement: $i7 = (int) $c2 
 ; Statement: if $i7 != 59 goto $i6 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getStatementIndex(java.lang.StringBuilder)>($r10) 
(assert (not (= var852 59))) ; Cond: $i7 != 59 
(assert true)
(define-const var3802 Int (getStatementIndex/-932709428 var3967 var3718!1)) ; Statement: $i6 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getStatementIndex(java.lang.StringBuilder)>($r10) 
(define-const var3312 Bool (var3527_hasFirstRow/-2097898482 var3466)) ; Statement: $z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r3) 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String fillAliasInSelectClause(java.lang.StringBuilder,int)>($r10, $i6) 
(assert (not (not (= (ite var3312 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
;(assert (addTopExpression/-1388888097 var3967 var3718!1 var3802)) ; Statement: virtualinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: void addTopExpression(java.lang.StringBuilder,int)>($r10, $i6) 

(declare-const var3967!1 var1525)
(declare-const var3718!2 String)
(declare-const var3802!1 Int)
 ; Statement: goto [?= $r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3612 String (toString/-2075883882 var3718!2)) ; Statement: $r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-171891354=([java.lang.StringBuilder], int), charAt/1621160911=([java.lang.StringBuilder, int], char), cast-from-Int-to-Int=([char], int), getStatementIndex/-932709428=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.StringBuilder], int), var3527_hasFirstRow/-2097898482=([org.hibernate.engine.spi.RowSelection], boolean), addTopExpression/-1388888097=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1525=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3967=r2, var3585=r1, var1400=null_type, var3956=org.hibernate.engine.spi.RowSelection, var3466=r3, var3718=$r10, var1473=$i0, var3216=$i1, var3539=$c2, var852=$i7, var3802=$i6, var3527=org.hibernate.dialect.pagination.LimitHelper, var3312=$z0, var3612=$r9}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var1525, r2=var3967, r1=var3585, null_type=var1400, org.hibernate.engine.spi.RowSelection=var3956, r3=var3466, $r10=var3718, $i0=var1473, $i1=var3216, $c2=var3539, $i7=var852, $i6=var3802, org.hibernate.dialect.pagination.LimitHelper=var3527, $z0=var3312, $r9=var3612}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: char charAt(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.engine.spi.RowSelection;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	$i0 = virtualinvoke $r10.<java.lang.StringBuilder: int length()>();	$i1 = $i0 - 1;	$c2 = virtualinvoke $r10.<java.lang.StringBuilder: char charAt(int)>($i1);	$i7 = (int) $c2;	if $i7 != 59 goto $i6 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getStatementIndex(java.lang.StringBuilder)>($r10);	$i6 = specialinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getStatementIndex(java.lang.StringBuilder)>($r10);	$z0 = staticinvoke <org.hibernate.dialect.pagination.LimitHelper: boolean hasFirstRow(org.hibernate.engine.spi.RowSelection)>(r3);	if $z0 != 0 goto r4 = virtualinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: java.lang.String fillAliasInSelectClause(java.lang.StringBuilder,int)>($r10, $i6);	virtualinvoke r2.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: void addTopExpression(java.lang.StringBuilder,int)>($r10, $i6);	goto [?= $r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>()];	$r9 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4