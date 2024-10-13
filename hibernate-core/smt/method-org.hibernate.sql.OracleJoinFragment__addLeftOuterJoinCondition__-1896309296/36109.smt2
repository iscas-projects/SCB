(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1355 0)
(declare-sort var144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addCondition/-2065520496 (var1355 String) Bool)
(declare-const null-var1355 var1355)
(declare-const null-String String)
(declare-const var1412 var1355) ; Statement: r2 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var1412 null-var1355)))
(declare-const var2879 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2879 null-String)))
(define-const var1520 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1520 var2879)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var1520!1 String)
(assert (= var1520!1 var2879))
(define-const var3563 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var610 Int (length/-171891354 var1520!1)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i6 >= $i0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3563 var610)) ; Cond: i6 >= $i0 
(assert true)
(define-const var1519 String (toString/-2075883882 var1520!1)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addCondition/-2065520496 var1412 var1519)) ; Statement: virtualinvoke r2.<org.hibernate.sql.OracleJoinFragment: boolean addCondition(java.lang.String)>($r3) 

(declare-const var1412!1 var1355)
(declare-const var1519!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addCondition/-2065520496=([org.hibernate.sql.OracleJoinFragment, java.lang.String], boolean)}
; {var1355=org.hibernate.sql.OracleJoinFragment, var1412=r2, var2879=r1, var144=null_type, var1520=$r8, var3563=i6, var610=$i0, var1519=$r3}
; {org.hibernate.sql.OracleJoinFragment=var1355, r2=var1412, r1=var2879, null_type=var144, $r8=var1520, i6=var3563, $i0=var610, $r3=var1519}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.sql.OracleJoinFragment;	r1 := @parameter0: java.lang.String;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	i6 = 0;	$i0 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>();	if i6 >= $i0 goto $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<org.hibernate.sql.OracleJoinFragment: boolean addCondition(java.lang.String)>($r3);	return
;block_num 3