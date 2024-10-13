(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var1927 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var2084) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var2084) Int)
(declare-fun var1989-init () var1989)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var1989 String Int) void)
(declare-const null-var2084 var2084)
(declare-const null-String String)
(declare-const var3558 var2084) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3558 null-var2084)))
(declare-const var3545 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3545 null-String)))
(define-const var1178 String (src/-1548601273 var3558)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var1442 Int (length/-134980193 var1178)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3128 Int (- var1442 1)) ; Statement: i12 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i12 < 0 goto $i11 = i12 + 1 
(assert (< var3128 0)) ; Cond: i12 < 0 
(define-const var2707 Int (+ var3128 1)) ; Statement: $i11 = i12 + 1 
(define-const var2103 Int (pos/-1548601273 var3558)) ; Statement: $i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i1 >= $i11 goto r23 = null 
(assert (>= var2103 var2707)) ; Cond: $i1 >= $i11 
(define-const var3636 String null-String) ; Statement: r23 = null 
(assert true) ; Non Conditional
(define-const var8 var1989 var1989-init) ; Statement: $r28 = new java.text.ParseException 
(define-const var3980 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3980)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3980!1 String)
(assert (= var3980!1 ""))
(assert true)
(define-const var1983 String (append/672562846 var3980!1 "Expected a(n) ")) ; Statement: $r5 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a(n) ") 
(declare-const var3980!2 String)
(assert (= var3980!2 (str.++ var3980!1 "Expected a(n) ")))
(assert true)
(define-const var3798 String (append/672562846 var1983 var3545)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1983!1 String)
(assert (= var1983!1 (str.++ var1983 var3545)))
(assert true)
(define-const var1947 String (append/672562846 var3798 " at position ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var3798!1 String)
(assert (= var3798!1 (str.++ var3798 " at position ")))
(define-const var759 Int (pos/-1548601273 var3558)) ; Statement: $i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert true)
(define-const var3991 String (append/-1001720160 var1947 var759)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1947!1 String)
(assert (str.prefixof var1947 var1947!1))
(assert true)
(define-const var2911 String (append/672562846 var3991 " (0-based), but ")) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based), but ") 
(declare-const var3991!1 String)
(assert (= var3991!1 (str.++ var3991 " (0-based), but ")))
 ; Statement: if r23 != null goto $r27 = new java.lang.StringBuilder 
(assert (not (= var3636 null-String))) ; Cond: r23 != null 
(define-const var1238 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1238)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1238!1 String)
(assert (= var1238!1 ""))
(assert true)
(define-const var53 String (append/672562846 var1238!1 "found: ")) ; Statement: $r10 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: ") 
(declare-const var1238!2 String)
(assert (= var1238!2 (str.++ var1238!1 "found: ")))
(assert true)
(define-const var1809 String (append/672562846 var53 var3636)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23) 
(declare-const var53!1 String)
(assert (= var53!1 (str.++ var53 var3636)))
(assert true)
(define-const var296 String (toString/-2075883882 var1809)) ; Statement: $r24 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var22 String (append/672562846 var2911 var296)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2911!1 String)
(assert (= var2911!1 (str.++ var2911 var296)))
(assert true)
(define-const var890 String (toString/-2075883882 var22)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2315 Int (pos/-1548601273 var3558)) ; Statement: $i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert true)
;(assert (<init>/1495607482 var8 var890 var2315)) ; Statement: specialinvoke $r28.<java.text.ParseException: void <init>(java.lang.String,int)>($r14, $i3) 

(declare-const var8!1 var1989)
(declare-const var890!1 String)
(declare-const var2315!1 Int)
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), var1989-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var2084=freemarker.core.ExtendedDecimalFormatParser, var3558=r0, var3545=r4, var1927=null_type, var1178=$r1, var1442=$i0, var3128=i12, var2707=$i11, var2103=$i1, var3636=r23, var1989=java.text.ParseException, var8=$r28, var3980=$r26, var1983=$r5, var3798=$r6, var1947=$r7, var759=$i2, var3991=$r8, var2911=$r12, var1238=$r27, var53=$r10, var1809=$r11, var296=$r24, var22=$r13, var890=$r14, var2315=$i3}
; {freemarker.core.ExtendedDecimalFormatParser=var2084, r0=var3558, r4=var3545, null_type=var1927, $r1=var1178, $i0=var1442, i12=var3128, $i11=var2707, $i1=var2103, r23=var3636, java.text.ParseException=var1989, $r28=var8, $r26=var3980, $r5=var1983, $r6=var3798, $r7=var1947, $i2=var759, $r8=var3991, $r12=var2911, $r27=var1238, $r10=var53, $r11=var1809, $r24=var296, $r13=var22, $r14=var890, $i3=var2315}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	r4 := @parameter0: java.lang.String;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i12 = $i0 - 1;	if i12 < 0 goto $i11 = i12 + 1;	$i11 = i12 + 1;	$i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i1 >= $i11 goto r23 = null;	r23 = null;	$r28 = new java.text.ParseException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a(n) ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based), but ");	if r23 != null goto $r27 = new java.lang.StringBuilder;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r23);	$r24 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	specialinvoke $r28.<java.text.ParseException: void <init>(java.lang.String,int)>($r14, $i3);	return $r28
;block_num 7