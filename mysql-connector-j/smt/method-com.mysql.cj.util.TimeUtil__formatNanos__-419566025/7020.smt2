(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var806 0)
(declare-sort var3380 0)
(declare-sort var3238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3238!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3380_createException/361149092 (ClassObject String) var806)
(declare-fun cast-from-var806-to-var3238 (var806) var3238)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var2466 Int) ; Statement: i6 := @parameter0: int 
(assert (not (= var2466 null-Int)))
(declare-const var1758 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1758 null-Int)))
(declare-const var3122 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3122 null-Bool)))
 ; Statement: if i6 < 0 goto $r19 = new java.lang.StringBuilder 
(assert (< var2466 0)) ; Cond: i6 < 0 
(define-const var3329 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3329)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3329!1 String)
(assert (= var3329!1 ""))
(assert true)
(define-const var1484 String (append/672562846 var3329!1 "nanos value must be in 0 to 999999999 range but was ")) ; Statement: $r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nanos value must be in 0 to 999999999 range but was ") 
(declare-const var3329!2 String)
(assert (= var3329!2 (str.++ var3329!1 "nanos value must be in 0 to 999999999 range but was ")))
(assert true)
(define-const var2200 String (append/-1001720160 var1484 var2466)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1484!1 String)
(assert (str.prefixof var1484 var1484!1))
(assert true)
(define-const var2786 String (toString/-2075883882 var2200)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3642 var806 (var3380_createException/361149092 var3238!class var2786)) ; Statement: $r4 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r3) 
(define-const var3036 var3238 (cast-from-var806-to-var3238 var3642)) ; Statement: $r5 = (com.mysql.cj.exceptions.WrongArgumentException) $r4 
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3380_createException/361149092=([java.lang.Class, java.lang.String], com.mysql.cj.exceptions.CJException), cast-from-var806-to-var3238=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var2466=i6, var1758=i0, var3122=z0, var3329=$r19, var1484=$r1, var2200=$r2, var2786=$r3, var806=com.mysql.cj.exceptions.CJException, var3380=com.mysql.cj.exceptions.ExceptionFactory, var3238=com.mysql.cj.exceptions.WrongArgumentException, var3642=$r4, var3036=$r5}
; {i6=var2466, i0=var1758, z0=var3122, $r19=var3329, $r1=var1484, $r2=var2200, $r3=var2786, com.mysql.cj.exceptions.CJException=var806, com.mysql.cj.exceptions.ExceptionFactory=var3380, com.mysql.cj.exceptions.WrongArgumentException=var3238, $r4=var3642, $r5=var3036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i6 := @parameter0: int;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	if i6 < 0 goto $r19 = new java.lang.StringBuilder;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nanos value must be in 0 to 999999999 range but was ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r3);	$r5 = (com.mysql.cj.exceptions.WrongArgumentException) $r4;	throw $r5
;block_num 2