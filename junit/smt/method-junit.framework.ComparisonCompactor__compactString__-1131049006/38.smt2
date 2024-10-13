(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3445 0)
(declare-sort var2764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fPrefix/748987693 (var3445) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun fSuffix/748987693 (var3445) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3445 var3445)
(declare-const null-String String)
(declare-const var594 var3445) ; Statement: r2 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var594 null-var3445)))
(declare-const var3678 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3678 null-String)))
(define-const var3390 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var1596 String (append/672562846 var3390!1 "[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "[")))
(define-const var1718 Int (fPrefix/748987693 var594)) ; Statement: $i0 = r2.<junit.framework.ComparisonCompactor: int fPrefix> 
(assert true)
(define-const var2216 Int (length/-134980193 var3678)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1781 Int (fSuffix/748987693 var594)) ; Statement: $i1 = r2.<junit.framework.ComparisonCompactor: int fSuffix> 
(define-const var1200 Int (- var2216 var1781)) ; Statement: $i3 = $i2 - $i1 
(define-const var3391 Int (+ var1200 1)) ; Statement: $i4 = $i3 + 1 
(assert (and true (and (>= var1718 0) (>= (str.len var3678) var3391) (>= var3391 var1718))))
(define-const var2568 String (substring/-1240304868 var3678 var1718 var3391)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i0, $i4) 
(assert true)
(define-const var107 String (append/672562846 var1596 var2568)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1596!1 String)
(assert (= var1596!1 (str.++ var1596 var2568)))
(assert true)
(define-const var3539 String (append/672562846 var107 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var107!1 String)
(assert (= var107!1 (str.++ var107 "]")))
(assert true)
(define-const var1906 String (toString/-2075883882 var3539)) ; Statement: r15 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3879 Int (fPrefix/748987693 var594)) ; Statement: $i5 = r2.<junit.framework.ComparisonCompactor: int fPrefix> 
 ; Statement: if $i5 <= 0 goto $i6 = r2.<junit.framework.ComparisonCompactor: int fSuffix> 
(assert (<= var3879 0)) ; Cond: $i5 <= 0 
(define-const var3517 Int (fSuffix/748987693 var594)) ; Statement: $i6 = r2.<junit.framework.ComparisonCompactor: int fSuffix> 
 ; Statement: if $i6 <= 0 goto return r15 
(assert (<= var3517 0)) ; Cond: $i6 <= 0 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fPrefix/748987693=([junit.framework.ComparisonCompactor], int), length/-134980193=([java.lang.String], int), fSuffix/748987693=([junit.framework.ComparisonCompactor], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3445=junit.framework.ComparisonCompactor, var594=r2, var3678=r1, var2764=null_type, var3390=$r0, var1596=$r4, var1718=$i0, var2216=$i2, var1781=$i1, var1200=$i3, var3391=$i4, var2568=$r3, var107=$r5, var3539=$r6, var1906=r15, var3879=$i5, var3517=$i6}
; {junit.framework.ComparisonCompactor=var3445, r2=var594, r1=var3678, null_type=var2764, $r0=var3390, $r4=var1596, $i0=var1718, $i2=var2216, $i1=var1781, $i3=var1200, $i4=var3391, $r3=var2568, $r5=var107, $r6=var3539, r15=var1906, $i5=var3879, $i6=var3517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: junit.framework.ComparisonCompactor;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$i0 = r2.<junit.framework.ComparisonCompactor: int fPrefix>;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = r2.<junit.framework.ComparisonCompactor: int fSuffix>;	$i3 = $i2 - $i1;	$i4 = $i3 + 1;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i0, $i4);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	r15 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r2.<junit.framework.ComparisonCompactor: int fPrefix>;	if $i5 <= 0 goto $i6 = r2.<junit.framework.ComparisonCompactor: int fSuffix>;	$i6 = r2.<junit.framework.ComparisonCompactor: int fSuffix>;	if $i6 <= 0 goto return r15;	return r15
;block_num 3