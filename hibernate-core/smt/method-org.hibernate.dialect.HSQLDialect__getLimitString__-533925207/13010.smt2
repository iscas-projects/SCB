(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3831 0)
(declare-sort var38 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hsqldbVersion/1410848242 (var3831) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3831 var3831)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2584 var3831) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var2584 null-var3831)))
(declare-const var3696 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3696 null-String)))
(declare-const var3491 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3491 null-Bool)))
(define-const var3587 Int (hsqldbVersion/1410848242 var2584)) ; Statement: $i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion> 
 ; Statement: if $i0 >= 200 goto $r1 = new java.lang.StringBuilder 
(assert (>= var3587 200)) ; Cond: $i0 >= 200 
(define-const var3474 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3474)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3474!1 String)
(assert (= var3474!1 ""))
(assert true)
(define-const var804 String (append/672562846 var3474!1 var3696)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3474!2 String)
(assert (= var3474!2 (str.++ var3474!1 var3696)))
 ; Statement: if z0 == 0 goto $r13 = " limit ?" 
(assert (not (= (ite var3491 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var169 String " offset ? limit ?") ; Statement: $r13 = " offset ? limit ?" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1979 String (append/672562846 var804 var169)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var804!1 String)
(assert (= var804!1 (str.++ var804 var169)))
(assert true)
(define-const var1649 String (toString/-2075883882 var1979)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {hsqldbVersion/1410848242=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3831=org.hibernate.dialect.HSQLDialect, var2584=r0, var3696=r2, var38=null_type, var3491=z0, var3587=$i0, var3474=$r1, var804=$r3, var169=$r13, var1979=$r4, var1649=$r5}
; {org.hibernate.dialect.HSQLDialect=var3831, r0=var2584, r2=var3696, null_type=var38, z0=var3491, $i0=var3587, $r1=var3474, $r3=var804, $r13=var169, $r4=var1979, $r5=var1649}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion>;	if $i0 >= 200 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r13 = " limit ?";	$r13 = " offset ? limit ?";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4