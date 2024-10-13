(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var379-init () var379)
(declare-fun <init>/-1607144188 (var379) void)
(declare-fun String-init () String)
(declare-fun buffer/-1501424381 (var379) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-const null-var379 var379)
(declare-const var112 var379) ; Statement: r2 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var112 null-var379)))
(define-const var2950 var379 var379-init) ; Statement: $r0 = new org.hibernate.sql.ANSIJoinFragment 
(assert true)
;(assert (<init>/-1607144188 var2950)) ; Statement: specialinvoke $r0.<org.hibernate.sql.ANSIJoinFragment: void <init>()>() 

(declare-const var2950!1 var379)
(define-const var1675 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var2293 String (buffer/-1501424381 var112)) ; Statement: $r3 = r2.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var3377 String (toString/-2075883882 var2293)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var1675 var3377)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var1675!1 String)
(assert (= var1675!1 var3377))
(declare-const var2950!2 var379)
(assert (not (= var2950!2 null-var379)))
(assert (= (buffer/-1501424381 var2950!2) var1675!1)) ; Statement: $r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> = $r1 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var379-init=([], org.hibernate.sql.ANSIJoinFragment), <init>/-1607144188=([org.hibernate.sql.ANSIJoinFragment], void), String-init=([], java.lang.StringBuilder), buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void)}
; {var379=org.hibernate.sql.ANSIJoinFragment, var112=r2, var2950=$r0, var1675=$r1, var2293=$r3, var3377=$r4}
; {org.hibernate.sql.ANSIJoinFragment=var379, r2=var112, $r0=var2950, $r1=var1675, $r3=var2293, $r4=var3377}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.sql.ANSIJoinFragment;	$r0 = new org.hibernate.sql.ANSIJoinFragment;	specialinvoke $r0.<org.hibernate.sql.ANSIJoinFragment: void <init>()>();	$r1 = new java.lang.StringBuilder;	$r3 = r2.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	$r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> = $r1;	return $r0
;block_num 1