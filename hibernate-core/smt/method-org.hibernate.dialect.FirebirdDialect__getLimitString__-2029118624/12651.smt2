(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1420 var1420)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3705 var1420) ; Statement: r5 := @this: org.hibernate.dialect.FirebirdDialect 
(assert (not (= var3705 null-var1420)))
(declare-const var3865 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3865 null-String)))
(declare-const var3995 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3995 null-Bool)))
(define-const var1929 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3208 Int (length/-134980193 var3865)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3345 Int (+ var3208 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var1929 var3345)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1929!1 String)
(declare-const var3345!1 Int)
(assert true)
(define-const var837 String (append/672562846 var1929!1 var3865)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 var3865)))
 ; Statement: if z0 == 0 goto $r6 = " first ?" 
(assert (= (ite var3995 1 0) 0)) ; Cond: z0 == 0 
(define-const var3459 String " first ?") ; Statement: $r6 = " first ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var905 String (insert/1196171004 var837 6 var3459)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6) 
(assert true)
(define-const var3538 String (toString/-2075883882 var905)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1420=org.hibernate.dialect.FirebirdDialect, var3705=r5, var3865=r1, var465=null_type, var3995=z0, var1929=$r0, var3208=$i0, var3345=$i1, var837=$r2, var3459=$r6, var905=$r3, var3538=$r4}
; {org.hibernate.dialect.FirebirdDialect=var1420, r5=var3705, r1=var3865, null_type=var465, z0=var3995, $r0=var1929, $i0=var3208, $i1=var3345, $r2=var837, $r6=var3459, $r3=var905, $r4=var3538}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.FirebirdDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " first ?";	$r6 = " first ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3