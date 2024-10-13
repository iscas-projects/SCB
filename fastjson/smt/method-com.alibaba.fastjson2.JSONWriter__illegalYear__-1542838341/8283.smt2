(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var413-init () var413)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var413 String) void)
(declare-const null-Int Int)
(declare-const var666 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var666 null-Int)))
(define-const var3811 var413 var413-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3365 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3365)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3365!1 String)
(assert (= var3365!1 ""))
(assert true)
(define-const var3249 String (append/672562846 var3365!1 "Only 4 digits numbers are supported. Provided: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only 4 digits numbers are supported. Provided: ") 
(declare-const var3365!2 String)
(assert (= var3365!2 (str.++ var3365!1 "Only 4 digits numbers are supported. Provided: ")))
(assert true)
(define-const var3486 String (append/-1001720160 var3249 var666)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3249!1 String)
(assert (str.prefixof var3249 var3249!1))
(assert true)
(define-const var1795 String (toString/-2075883882 var3486)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3811 var1795)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var3811!1 var413)
(declare-const var1795!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var413-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var666=i0, var413=java.lang.IllegalArgumentException, var3811=$r0, var3365=$r1, var3249=$r2, var3486=$r3, var1795=$r4}
; {i0=var666, java.lang.IllegalArgumentException=var413, $r0=var3811, $r1=var3365, $r2=var3249, $r3=var3486, $r4=var1795}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Only 4 digits numbers are supported. Provided: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	return $r0
;block_num 1