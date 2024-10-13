(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Float64_isNaN/-647401060 (Float64) Bool)
(declare-fun var298-init () var298)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/33611274 (String Float64) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var298 String) void)
(declare-const null-Float64 Float64)
(declare-const var3175 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3175 null-Float64)))
(define-const var2277 Bool (Float64_isNaN/-647401060 var3175)) ; Statement: $z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0) 
 ; Statement: if $z0 != 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (not (= (ite var2277 1 0) 0))) ; Cond: $z0 != 0 
(define-const var629 var298 var298-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var558 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var558)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var558!1 String)
(assert (= var558!1 ""))
(assert true)
(define-const var1372 String (append/33611274 var558!1 var3175)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var558!2 String)
(assert (str.prefixof var558!1 var558!2))
(assert true)
(define-const var3874 String (append/672562846 var1372 " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.") 
(declare-const var1372!1 String)
(assert (= var1372!1 (str.++ var1372 " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.")))
(assert true)
(define-const var3660 String (toString/-2075883882 var3874)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var629 var3660)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var629!1 var298)
(declare-const var3660!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {Float64_isNaN/-647401060=([double], boolean), var298-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3175=d0, var2277=$z0, var298=java.lang.IllegalArgumentException, var629=$r0, var558=$r1, var1372=$r2, var3874=$r3, var3660=$r4}
; {d0=var3175, $z0=var2277, java.lang.IllegalArgumentException=var298, $r0=var629, $r1=var558, $r2=var1372, $r3=var3874, $r4=var3660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts d0 := @parameter0: double;	$z0 = staticinvoke <java.lang.Double: boolean isNaN(double)>(d0);	if $z0 != 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2