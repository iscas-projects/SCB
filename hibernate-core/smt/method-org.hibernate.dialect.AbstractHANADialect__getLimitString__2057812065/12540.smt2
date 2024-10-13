(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var912 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var912 var912)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var400 var912) ; Statement: r5 := @this: org.hibernate.dialect.AbstractHANADialect 
(assert (not (= var400 null-var912)))
(declare-const var3527 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3527 null-String)))
(declare-const var1564 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1564 null-Bool)))
(define-const var1998 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var317 Int (length/-134980193 var3527)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1262 Int (+ var317 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var1998 var1262)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1998!1 String)
(declare-const var1262!1 Int)
(assert true)
(define-const var3171 String (append/672562846 var1998!1 var3527)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1998!2 String)
(assert (= var1998!2 (str.++ var1998!1 var3527)))
 ; Statement: if z0 == 0 goto $r6 = " limit ?" 
(assert (= (ite var1564 1 0) 0)) ; Cond: z0 == 0 
(define-const var2410 String " limit ?") ; Statement: $r6 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var430 String (append/672562846 var3171 var2410)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3171!1 String)
(assert (= var3171!1 (str.++ var3171 var2410)))
(assert true)
(define-const var846 String (toString/-2075883882 var430)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var912=org.hibernate.dialect.AbstractHANADialect, var400=r5, var3527=r1, var1400=null_type, var1564=z0, var1998=$r0, var317=$i0, var1262=$i1, var3171=$r2, var2410=$r6, var430=$r3, var846=$r4}
; {org.hibernate.dialect.AbstractHANADialect=var912, r5=var400, r1=var3527, null_type=var1400, z0=var1564, $r0=var1998, $i0=var317, $i1=var1262, $r2=var3171, $r6=var2410, $r3=var430, $r4=var846}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.AbstractHANADialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " limit ?";	$r6 = " limit ?";	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3