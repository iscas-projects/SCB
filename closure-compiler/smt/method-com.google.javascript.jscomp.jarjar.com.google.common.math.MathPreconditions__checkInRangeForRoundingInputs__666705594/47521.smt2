(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1912 0)
(declare-sort var1559 0)
(declare-sort var3761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1559-init () var1559)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(declare-fun append/-1031950772 (String var3761) String)
(declare-fun cast-from-var1912-to-var3761 (var1912) var3761)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var1559 String) void)
(declare-const null-Bool Bool)
(declare-const null-Float64 Float64)
(declare-const null-var1912 var1912)
(declare-const var1699 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1699 null-Bool)))
(declare-const var1175 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var1175 null-Float64)))
(declare-const var1665 var1912) ; Statement: r4 := @parameter2: java.math.RoundingMode 
(assert (not (= var1665 null-var1912)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var1699 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var2429 var1559 var1559-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var1611 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1611)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1611!1 String)
(assert (= var1611!1 ""))
(assert true)
(define-const var3308 String (append/672562846 var1611!1 "rounded value is out of range for input ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rounded value is out of range for input ") 
(declare-const var1611!2 String)
(assert (= var1611!2 (str.++ var1611!1 "rounded value is out of range for input ")))
(assert true)
(define-const var2291 String (append/33611274 var3308 var1175)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var3308!1 String)
(assert (str.prefixof var3308 var3308!1))
(assert true)
(define-const var284 String (append/672562846 var2291 " and rounding mode ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and rounding mode ") 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 " and rounding mode ")))
(assert true)
(define-const var321 String (append/-1031950772 var284 (cast-from-var1912-to-var3761 var1665))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var284!1 String)
(assert (str.prefixof var284 var284!1))
(assert true)
(define-const var490 String (toString/-2075883882 var321)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var2429 var490)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r7) 

(declare-const var2429!1 var1559)
(declare-const var490!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1559-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1912-to-var3761=([java.math.RoundingMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var1699=z0, var1175=d0, var1912=java.math.RoundingMode, var1665=r4, var1559=java.lang.ArithmeticException, var2429=$r0, var1611=$r1, var3308=$r2, var2291=$r3, var284=$r5, var3761=java.lang.Object, var321=$r6, var490=$r7}
; {z0=var1699, d0=var1175, java.math.RoundingMode=var1912, r4=var1665, java.lang.ArithmeticException=var1559, $r0=var2429, $r1=var1611, $r2=var3308, $r3=var2291, $r5=var284, java.lang.Object=var3761, $r6=var321, $r7=var490}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	d0 := @parameter1: double;	r4 := @parameter2: java.math.RoundingMode;	if z0 != 0 goto return;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rounded value is out of range for input ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and rounding mode ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 2