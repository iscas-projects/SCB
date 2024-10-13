(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var11 0)
(declare-sort var471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var11_values/-1544337915 () (Array Int var11))
(declare-fun getLength-Arr-var11-1 ((Array Int var11)) Int)
(declare-fun var471-init () var471)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var471 String) void)
(declare-const null-Int Int)
(declare-const var3982 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3982 null-Int)))
(define-const var607 (Array Int var11) var11_values/-1544337915) ; Statement: r0 = staticinvoke <cn.hutool.core.lang.ansi.AnsiColors$BitDepth: cn.hutool.core.lang.ansi.AnsiColors$BitDepth[] values()>() 
(define-const var2293 Int (getLength-Arr-var11-1 var607)) ; Statement: i0 = lengthof r0 
(define-const var1327 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (>= var1327 var2293)) ; Cond: i3 >= i0 
(define-const var696 var471 var471-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var119 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var119)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var119!1 String)
(assert (= var119!1 ""))
(assert true)
(define-const var870 String (append/672562846 var119!1 "Unsupported ANSI bit depth \u0027")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported ANSI bit depth \'") 
(declare-const var119!2 String)
(assert (= var119!2 (str.++ var119!1 "Unsupported ANSI bit depth \u0027")))
(assert true)
(define-const var381 String (append/-1001720160 var870 var3982)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var870!1 String)
(assert (str.prefixof var870 var870!1))
(assert true)
(define-const var3636 String (append/672562846 var381 "\u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var381!1 String)
(assert (= var381!1 (str.++ var381 "\u0027")))
(assert true)
(define-const var289 String (toString/-2075883882 var3636)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var696 var289)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var696!1 var471)
(declare-const var289!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var11_values/-1544337915=([], cn.hutool.core.lang.ansi.AnsiColors$BitDepth[]), getLength-Arr-var11-1=([cn.hutool.core.lang.ansi.AnsiColors$BitDepth[]], int), var471-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3982=i1, var11=cn.hutool.core.lang.ansi.AnsiColors$BitDepth, var607=r0, var2293=i0, var1327=i3, var471=java.lang.IllegalArgumentException, var696=$r1, var119=$r2, var870=$r3, var381=$r4, var3636=$r5, var289=$r6}
; {i1=var3982, cn.hutool.core.lang.ansi.AnsiColors$BitDepth=var11, r0=var607, i0=var2293, i3=var1327, java.lang.IllegalArgumentException=var471, $r1=var696, $r2=var119, $r3=var870, $r4=var381, $r5=var3636, $r6=var289}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i1 := @parameter0: int;	r0 = staticinvoke <cn.hutool.core.lang.ansi.AnsiColors$BitDepth: cn.hutool.core.lang.ansi.AnsiColors$BitDepth[] values()>();	i0 = lengthof r0;	i3 = 0;	if i3 >= i0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported ANSI bit depth \'");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 3