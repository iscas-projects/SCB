(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var633 0)
(declare-sort var2785 0)
(declare-sort var480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2785-init () var2785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun append/-1031950772 (String var480) String)
(declare-fun cast-from-Int-to-var480 (Int) var480)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2785 String) void)
(declare-const null-var633 var633)
(declare-const null-Int Int)
(declare-const var3862 var633) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRow 
(assert (not (= var3862 null-var633)))
(declare-const var2088 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2088 null-Int)))
(declare-const var1814 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1814 null-Int)))
(define-const var2958 Int (+ var2088 var1814)) ; Statement: $i2 = i0 + i1 
 ; Statement: if $i2 >= 0 goto r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: org.apache.poi.xssf.usermodel.XSSFCell getCell(int)>(i0) 
(assert (not (>= var2958 0))) ; Negate: Cond: $i2 >= 0  
(define-const var3822 var2785 var2785-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(define-const var2943 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2943)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2943!1 String)
(assert (= var2943!1 ""))
(assert true)
(define-const var1456 String (append/672562846 var2943!1 "Column index less than zero : ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column index less than zero : ") 
(declare-const var2943!2 String)
(assert (= var2943!2 (str.++ var2943!1 "Column index less than zero : ")))
(define-const var1866 Int (+ var2088 var1814)) ; Statement: $i7 = i0 + i1 
(define-const var3284 Int (Int_valueOf/-1371140006 var1866)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7) 
(assert true)
(define-const var2151 String (append/-1031950772 var1456 (cast-from-Int-to-var480 var3284))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var1456!1 String)
(assert (str.prefixof var1456 var1456!1))
(assert true)
(define-const var1504 String (toString/-2075883882 var2151)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3822 var1504)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var3822!1 var2785)
(declare-const var1504!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2785-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_valueOf/-1371140006=([int], java.lang.Integer), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-Int-to-var480=([java.lang.Integer], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var633=org.apache.poi.xssf.usermodel.XSSFRow, var3862=r0, var2088=i0, var1814=i1, var2958=$i2, var2785=java.lang.IllegalStateException, var3822=$r11, var2943=$r12, var1456=$r14, var1866=$i7, var3284=$r13, var480=java.lang.Object, var2151=$r15, var1504=$r16}
; {org.apache.poi.xssf.usermodel.XSSFRow=var633, r0=var3862, i0=var2088, i1=var1814, $i2=var2958, java.lang.IllegalStateException=var2785, $r11=var3822, $r12=var2943, $r14=var1456, $i7=var1866, $r13=var3284, java.lang.Object=var480, $r15=var2151, $r16=var1504}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRow;	i0 := @parameter0: int;	i1 := @parameter1: int;	$i2 = i0 + i1;	if $i2 >= 0 goto r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: org.apache.poi.xssf.usermodel.XSSFCell getCell(int)>(i0);	$r11 = new java.lang.IllegalStateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column index less than zero : ");	$i7 = i0 + i1;	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i7);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2