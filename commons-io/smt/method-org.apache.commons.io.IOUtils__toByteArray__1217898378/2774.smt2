(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort var2271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2271-init () var2271)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2271 String) void)
(declare-const null-var1775 var1775)
(declare-const null-Int Int)
(declare-const var1182 var1775) ; Statement: r8 := @parameter0: org.apache.commons.io.function.IOTriFunction 
(assert (not (= var1182 null-var1775)))
(declare-const var1944 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1944 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (not (>= var1944 0))) ; Negate: Cond: i0 >= 0  
(define-const var631 var2271 var2271-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var263 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var263)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var263!1 String)
(assert (= var263!1 ""))
(assert true)
(define-const var3997 String (append/672562846 var263!1 "Size must be equal or greater than zero: ")) ; Statement: $r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size must be equal or greater than zero: ") 
(declare-const var263!2 String)
(assert (= var263!2 (str.++ var263!1 "Size must be equal or greater than zero: ")))
(assert true)
(define-const var3035 String (append/-1001720160 var3997 var1944)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3997!1 String)
(assert (str.prefixof var3997 var3997!1))
(assert true)
(define-const var2303 String (toString/-2075883882 var3035)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var631 var2303)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18) 

(declare-const var631!1 var2271)
(declare-const var2303!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2271-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1775=org.apache.commons.io.function.IOTriFunction, var1182=r8, var1944=i0, var2271=java.lang.IllegalArgumentException, var631=$r20, var263=$r19, var3997=$r16, var3035=$r17, var2303=$r18}
; {org.apache.commons.io.function.IOTriFunction=var1775, r8=var1182, i0=var1944, java.lang.IllegalArgumentException=var2271, $r20=var631, $r19=var263, $r16=var3997, $r17=var3035, $r18=var2303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: org.apache.commons.io.function.IOTriFunction;	i0 := @parameter1: int;	if i0 >= 0 goto (branch);	$r20 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size must be equal or greater than zero: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r18);	throw $r20
;block_num 2