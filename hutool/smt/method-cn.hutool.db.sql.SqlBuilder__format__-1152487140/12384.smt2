(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var313 0)
(declare-sort var202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sql/-1710938057 (var313) String)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var202_format/300252544 (String) String)
(declare-fun replace/-994417198 (String Int Int String) String)
(declare-const null-var313 var313)
(declare-const var3750 var313) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var3750 null-var313)))
(define-const var944 String (sql/-1710938057 var3750)) ; Statement: $r2 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(define-const var2372 String (sql/-1710938057 var3750)) ; Statement: $r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var1667 Int (length/-171891354 var2372)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(define-const var1001 String (sql/-1710938057 var3750)) ; Statement: $r3 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var2358 String (toString/-2075883882 var1001)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2376 String (var202_format/300252544 var2358)) ; Statement: $r5 = staticinvoke <cn.hutool.db.sql.SqlFormatter: java.lang.String format(java.lang.String)>($r4) 
(assert true)
;(assert (replace/-994417198 var944 0 var1667 var2376)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>(0, $i0, $r5) 

(declare-const var944!1 String)
(declare-const var403 Int)
(declare-const var1667!1 Int)
(declare-const var2376!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var202_format/300252544=([java.lang.String], java.lang.String), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder)}
; {var313=cn.hutool.db.sql.SqlBuilder, var3750=r0, var944=$r2, var2372=$r1, var1667=$i0, var1001=$r3, var2358=$r4, var202=cn.hutool.db.sql.SqlFormatter, var2376=$r5, var403=0}
; {cn.hutool.db.sql.SqlBuilder=var313, r0=var3750, $r2=var944, $r1=var2372, $i0=var1667, $r3=var1001, $r4=var2358, cn.hutool.db.sql.SqlFormatter=var202, $r5=var2376, 0=var403}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	$r2 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r1 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	$r3 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = staticinvoke <cn.hutool.db.sql.SqlFormatter: java.lang.String format(java.lang.String)>($r4);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>(0, $i0, $r5);	return r0
;block_num 1