(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3825 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3825 var3825)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3738 var3825) ; Statement: r5 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var3738 null-var3825)))
(declare-const var441 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var441 null-String)))
(declare-const var1740 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1740 null-Bool)))
(define-const var1964 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2776 Int (length/-134980193 var441)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2155 Int (+ var2776 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var1964 var2155)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1964!1 String)
(declare-const var2155!1 Int)
(assert true)
(define-const var1207 String (append/672562846 var1964!1 var441)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1964!2 String)
(assert (= var1964!2 (str.++ var1964!1 var441)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (not (= (ite var1740 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1670 String " limit ? offset ?") ; Statement: $r6 = " limit ? offset ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2104 String (append/672562846 var1207 var1670)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1207!1 String)
(assert (= var1207!1 (str.++ var1207 var1670)))
(assert true)
(define-const var742 String (toString/-2075883882 var2104)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3825=org.hibernate.dialect.AbstractHANADialect, var3738=r5, var441=r1, var2480=null_type, var1740=z0, var1964=$r0, var2776=$i0, var2155=$i1, var1207=$r2, var1670=$r6, var2104=$r3, var742=$r4}
; {org.hibernate.dialect.AbstractHANADialect=var3825, r5=var3738, r1=var441, null_type=var2480, z0=var1740, $r0=var1964, $i0=var2776, $i1=var2155, $r2=var1207, $r6=var1670, $r3=var2104, $r4=var742}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ? offset ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3