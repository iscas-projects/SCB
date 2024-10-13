(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2030 0)
(declare-sort var2053 0)
(declare-sort var1844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1844) void)
(declare-fun cast-from-var2030-to-var1844 (var2030) var1844)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/2037073258 (var2030) Int)
(declare-fun suffix/2037073258 (var2030) String)
(declare-const null-var2030 var2030)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3034 var2030) ; Statement: r0 := @this: org.hibernate.sql.Alias 
(assert (not (= var3034 null-var2030)))
(declare-const var472 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var472 null-Int)))
(declare-const var1925 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1925 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2030-to-var1844 var3034))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3034!1 var2030)
 ; Statement: if r1 != null goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= var1925 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3213 Int (length/-134980193 var1925)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1675 Int (- var472 var3213)) ; Statement: $i2 = i0 - $i1 
(assert true) ; Non Conditional
(declare-const var3034!2 var2030)
(assert (not (= var3034!2 null-var2030)))
(assert (= (length/2037073258 var3034!2) var1675)) ; Statement: r0.<org.hibernate.sql.Alias: int length> = $i2 
(declare-const var3034!3 var2030)
(assert (not (= var3034!3 null-var2030)))
(assert (= (suffix/2037073258 var3034!3) var1925)) ; Statement: r0.<org.hibernate.sql.Alias: java.lang.String suffix> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2030-to-var1844=([org.hibernate.sql.Alias], java.lang.Object), length/-134980193=([java.lang.String], int), length/2037073258=([org.hibernate.sql.Alias], int), suffix/2037073258=([org.hibernate.sql.Alias], java.lang.String)}
; {var2030=org.hibernate.sql.Alias, var3034=r0, var472=i0, var1925=r1, var2053=null_type, var1844=java.lang.Object, var3213=$i1, var1675=$i2}
; {org.hibernate.sql.Alias=var2030, r0=var3034, i0=var472, r1=var1925, null_type=var2053, java.lang.Object=var1844, $i1=var3213, $i2=var1675}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.Alias;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 != null goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = i0 - $i1;	r0.<org.hibernate.sql.Alias: int length> = $i2;	r0.<org.hibernate.sql.Alias: java.lang.String suffix> = r1;	return
;block_num 3