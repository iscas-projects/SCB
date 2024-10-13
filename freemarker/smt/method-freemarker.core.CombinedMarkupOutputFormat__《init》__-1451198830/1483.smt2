(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2915 0)
(declare-sort var1663 0)
(declare-sort var1640 0)
(declare-sort var2799 0)
(declare-sort var239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-107189709 (var2799) void)
(declare-fun cast-from-var2915-to-var2799 (var2915) var2799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-959053322 (var239) String)
(declare-fun cast-from-var1640-to-var239 (var1640) var239)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun name/-1732401652 (var2915) String)
(declare-fun outer/-1732401652 (var2915) var1640)
(declare-fun inner/-1732401652 (var2915) var1640)
(declare-const null-var2915 var2915)
(declare-const null-String String)
(declare-const null-var1640 var1640)
(declare-const var3084 var2915) ; Statement: r0 := @this: freemarker.core.CombinedMarkupOutputFormat 
(assert (not (= var3084 null-var2915)))
(declare-const var2226 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2226 null-String)))
(declare-const var2635 var1640) ; Statement: r3 := @parameter1: freemarker.core.MarkupOutputFormat 
(assert (not (= var2635 null-var1640)))
(declare-const var1537 var1640) ; Statement: r6 := @parameter2: freemarker.core.MarkupOutputFormat 
(assert (not (= var1537 null-var1640)))
(assert true)
;(assert (<init>/-107189709 (cast-from-var2915-to-var2799 var3084))) ; Statement: specialinvoke r0.<freemarker.core.CommonMarkupOutputFormat: void <init>()>() 

(declare-const var3084!1 var2915)
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2226 null-String)) ; Cond: r1 == null 
(define-const var40 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var40)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var40!1 String)
(assert (= var40!1 ""))
(assert true)
(define-const var2955 String (getName/-959053322 (cast-from-var1640-to-var239 var2635))) ; Statement: $r4 = virtualinvoke r3.<freemarker.core.MarkupOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var2296 String (append/672562846 var40!1 var2955)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var40!2 String)
(assert (= var40!2 (str.++ var40!1 var2955)))
(assert true)
(define-const var1141 String (append/672562846 var2296 "{")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2296!1 String)
(assert (= var2296!1 (str.++ var2296 "{")))
(assert true)
(define-const var2107 String (getName/-959053322 (cast-from-var1640-to-var239 var1537))) ; Statement: $r7 = virtualinvoke r6.<freemarker.core.MarkupOutputFormat: java.lang.String getName()>() 
(assert true)
(define-const var2904 String (append/672562846 var1141 var2107)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1141!1 String)
(assert (= var1141!1 (str.++ var1141 var2107)))
(assert true)
(define-const var3710 String (append/672562846 var2904 "}")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2904!1 String)
(assert (= var2904!1 (str.++ var2904 "}")))
(assert true)
(define-const var2073 String (toString/-2075883882 var3710)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(declare-const var3084!2 var2915)
(assert (not (= var3084!2 null-var2915)))
(assert (= (name/-1732401652 var3084!2) var2073)) ; Statement: r0.<freemarker.core.CombinedMarkupOutputFormat: java.lang.String name> = $r11 
(declare-const var3084!3 var2915)
(assert (not (= var3084!3 null-var2915)))
(assert (= (outer/-1732401652 var3084!3) var2635)) ; Statement: r0.<freemarker.core.CombinedMarkupOutputFormat: freemarker.core.MarkupOutputFormat outer> = r3 
(declare-const var3084!4 var2915)
(assert (not (= var3084!4 null-var2915)))
(assert (= (inner/-1732401652 var3084!4) var1537)) ; Statement: r0.<freemarker.core.CombinedMarkupOutputFormat: freemarker.core.MarkupOutputFormat inner> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-107189709=([freemarker.core.CommonMarkupOutputFormat], void), cast-from-var2915-to-var2799=([freemarker.core.CombinedMarkupOutputFormat], freemarker.core.CommonMarkupOutputFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-959053322=([freemarker.core.OutputFormat], java.lang.String), cast-from-var1640-to-var239=([freemarker.core.MarkupOutputFormat], freemarker.core.OutputFormat), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), name/-1732401652=([freemarker.core.CombinedMarkupOutputFormat], java.lang.String), outer/-1732401652=([freemarker.core.CombinedMarkupOutputFormat], freemarker.core.MarkupOutputFormat), inner/-1732401652=([freemarker.core.CombinedMarkupOutputFormat], freemarker.core.MarkupOutputFormat)}
; {var2915=freemarker.core.CombinedMarkupOutputFormat, var3084=r0, var2226=r1, var1663=null_type, var1640=freemarker.core.MarkupOutputFormat, var2635=r3, var1537=r6, var2799=freemarker.core.CommonMarkupOutputFormat, var40=$r2, var239=freemarker.core.OutputFormat, var2955=$r4, var2296=$r5, var1141=$r8, var2107=$r7, var2904=$r9, var3710=$r10, var2073=$r11}
; {freemarker.core.CombinedMarkupOutputFormat=var2915, r0=var3084, r1=var2226, null_type=var1663, freemarker.core.MarkupOutputFormat=var1640, r3=var2635, r6=var1537, freemarker.core.CommonMarkupOutputFormat=var2799, $r2=var40, freemarker.core.OutputFormat=var239, $r4=var2955, $r5=var2296, $r8=var1141, $r7=var2107, $r9=var2904, $r10=var3710, $r11=var2073}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.CombinedMarkupOutputFormat;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: freemarker.core.MarkupOutputFormat;	r6 := @parameter2: freemarker.core.MarkupOutputFormat;	specialinvoke r0.<freemarker.core.CommonMarkupOutputFormat: void <init>()>();	if r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r3.<freemarker.core.MarkupOutputFormat: java.lang.String getName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r7 = virtualinvoke r6.<freemarker.core.MarkupOutputFormat: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.core.CombinedMarkupOutputFormat: java.lang.String name> = $r11;	r0.<freemarker.core.CombinedMarkupOutputFormat: freemarker.core.MarkupOutputFormat outer> = r3;	r0.<freemarker.core.CombinedMarkupOutputFormat: freemarker.core.MarkupOutputFormat inner> = r6;	return
;block_num 3