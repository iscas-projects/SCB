(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort var663 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1065096742 (var663) void)
(declare-fun cast-from-var2161-to-var663 (var2161) var663)
(declare-fun var3859-init () var3859)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3859 String) void)
(declare-const null-var2161 var2161)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const var3551 var2161) ; Statement: r0 := @this: org.apache.commons.lang3.time.GmtTimeZone 
(assert (not (= var3551 null-var2161)))
(declare-const var1905 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1905 null-Bool)))
(declare-const var3422 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3422 null-Int)))
(declare-const var2820 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2820 null-Int)))
(assert true)
;(assert (<init>/-1065096742 (cast-from-var2161-to-var663 var3551))) ; Statement: specialinvoke r0.<java.util.TimeZone: void <init>()>() 

(declare-const var3551!1 var2161)
 ; Statement: if i0 < 24 goto (branch) 
(assert (not (< var3422 24))) ; Negate: Cond: i0 < 24  
(define-const var1007 var3859 var3859-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var1900 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1900)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1900!1 String)
(assert (= var1900!1 ""))
(assert true)
(define-const var1278 String (append/-1001720160 var1900!1 var3422)) ; Statement: $r15 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1900!2 String)
(assert (str.prefixof var1900!1 var1900!2))
(assert true)
(define-const var981 String (append/672562846 var1278 " hours out of range")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hours out of range") 
(declare-const var1278!1 String)
(assert (= var1278!1 (str.++ var1278 " hours out of range")))
(assert true)
(define-const var1043 String (toString/-2075883882 var981)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1007 var1043)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var1007!1 var3859)
(declare-const var1043!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1065096742=([java.util.TimeZone], void), cast-from-var2161-to-var663=([org.apache.commons.lang3.time.GmtTimeZone], java.util.TimeZone), var3859-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2161=org.apache.commons.lang3.time.GmtTimeZone, var3551=r0, var1905=z0, var3422=i0, var2820=i1, var663=java.util.TimeZone, var3859=java.lang.IllegalArgumentException, var1007=$r19, var1900=$r18, var1278=$r15, var981=$r16, var1043=$r17}
; {org.apache.commons.lang3.time.GmtTimeZone=var2161, r0=var3551, z0=var1905, i0=var3422, i1=var2820, java.util.TimeZone=var663, java.lang.IllegalArgumentException=var3859, $r19=var1007, $r18=var1900, $r15=var1278, $r16=var981, $r17=var1043}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.time.GmtTimeZone;	z0 := @parameter0: boolean;	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<java.util.TimeZone: void <init>()>();	if i0 < 24 goto (branch);	$r19 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hours out of range");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r19
;block_num 2