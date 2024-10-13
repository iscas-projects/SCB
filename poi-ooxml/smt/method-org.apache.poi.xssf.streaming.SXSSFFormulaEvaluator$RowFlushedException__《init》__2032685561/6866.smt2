(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3678 0)
(declare-sort var864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var864 String) void)
(declare-fun cast-from-var3678-to-var864 (var3678) var864)
(declare-const null-var3678 var3678)
(declare-const null-Int Int)
(declare-const var807 var3678) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator$RowFlushedException 
(assert (not (= var807 null-var3678)))
(declare-const var1366 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1366 null-Int)))
(declare-const var593 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var593 null-Int)))
(define-const var3074 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3074)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3074!1 String)
(assert (= var3074!1 ""))
(assert true)
(define-const var3216 String (append/672562846 var3074!1 "Row ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Row ") 
(declare-const var3074!2 String)
(assert (= var3074!2 (str.++ var3074!1 "Row ")))
(assert true)
(define-const var3693 String (append/-1001720160 var3216 var1366)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3216!1 String)
(assert (str.prefixof var3216 var3216!1))
(assert true)
(define-const var62 String (append/672562846 var3693 " has been flushed (rows up to ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has been flushed (rows up to ") 
(declare-const var3693!1 String)
(assert (= var3693!1 (str.++ var3693 " has been flushed (rows up to ")))
(assert true)
(define-const var2047 String (append/-1001720160 var62 var593)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var62!1 String)
(assert (str.prefixof var62 var62!1))
(assert true)
(define-const var2361 String (append/672562846 var2047 " have been flushed), cannot evaluate all cells")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been flushed), cannot evaluate all cells") 
(declare-const var2047!1 String)
(assert (= var2047!1 (str.++ var2047 " have been flushed), cannot evaluate all cells")))
(assert true)
(define-const var3939 String (toString/-2075883882 var2361)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 (cast-from-var3678-to-var864 var807) var3939)) ; Statement: specialinvoke r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7) 

(declare-const var807!1 var3678)
(declare-const var3939!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void), cast-from-var3678-to-var864=([org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator$RowFlushedException], java.lang.IllegalStateException)}
; {var3678=org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator$RowFlushedException, var807=r0, var1366=i0, var593=i1, var3074=$r1, var3216=$r2, var3693=$r3, var62=$r4, var2047=$r5, var2361=$r6, var3939=$r7, var864=java.lang.IllegalStateException}
; {org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator$RowFlushedException=var3678, r0=var807, i0=var1366, i1=var593, $r1=var3074, $r2=var3216, $r3=var3693, $r4=var62, $r5=var2047, $r6=var2361, $r7=var3939, java.lang.IllegalStateException=var864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator$RowFlushedException;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Row ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has been flushed (rows up to ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" have been flushed), cannot evaluate all cells");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r7);	return
;block_num 1