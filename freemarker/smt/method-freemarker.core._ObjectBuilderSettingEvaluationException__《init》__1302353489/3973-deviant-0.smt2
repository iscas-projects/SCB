(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1536 0)
(declare-sort var2474 0)
(declare-sort var3023 0)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3023_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun <init>/-8765015 (var3513 String) void)
(declare-fun cast-from-var1536-to-var3513 (var1536) var3513)
(declare-const null-var1536 var1536)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var301 var1536) ; Statement: r0 := @this: freemarker.core._ObjectBuilderSettingEvaluationException 
(assert (not (= var301 null-var1536)))
(declare-const var2443 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var572 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var572 null-String)))
(declare-const var3294 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3294 null-Int)))
(define-const var3276 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3276)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3276!1 String)
(assert (= var3276!1 ""))
(assert true)
(define-const var1249 String (append/672562846 var3276!1 "Expression syntax error: Expected a(n) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expression syntax error: Expected a(n) ") 
(declare-const var3276!2 String)
(assert (= var3276!2 (str.++ var3276!1 "Expression syntax error: Expected a(n) ")))
(assert true)
(define-const var1845 String (append/672562846 var1249 var2443)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1249!1 String)
(assert (= var1249!1 (str.++ var1249 var2443)))
(assert true)
(define-const var204 String (append/672562846 var1845 ", but ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but ") 
(declare-const var1845!1 String)
(assert (= var1845!1 (str.++ var1845 ", but ")))
(assert true)
(define-const var1615 Int (length/-134980193 var572)) ; Statement: $i1 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $r20 = "the end of the parsed string was reached." 
(assert (not (>= var3294 var1615))) ; Negate: Cond: i0 >= $i1  
(define-const var1416 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1416)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1416!1 String)
(assert (= var1416!1 ""))
(assert true)
(define-const var331 String (append/672562846 var1416!1 "found character ")) ; Statement: $r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found character ") 
(declare-const var1416!2 String)
(assert (= var1416!2 (str.++ var1416!1 "found character ")))
(define-const var1423 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1423)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1423!1 String)
(assert (= var1423!1 ""))
(assert true)
(define-const var772 String (append/672562846 var1423!1 "")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1423!2 String)
(assert (= var1423!2 (str.++ var1423!1 "")))
(assert (not (and true (and (> (str.len var572) var3294) (<= 0 var3294)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3023_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var1536-to-var3513=([freemarker.core._ObjectBuilderSettingEvaluationException], java.lang.Exception)}
; {var1536=freemarker.core._ObjectBuilderSettingEvaluationException, var301=r0, var2443=r2, var2474=null_type, var572=r5, var3294=i0, var3276=$r1, var1249=$r3, var1845=$r4, var204=$r6, var1615=$i1, var1416=$r9, var331=$r15, var1423=$r10, var772=$r11, var1828=$c2, var3178=$r12, var1837=$r13, var3023=freemarker.template.utility.StringUtil, var3553=$r14, var3634=$r16, var209=$r17, var603=$i3, var1562=$r18, var2472=$r19, var1662=$r20, var2127=$r7, var2531=$r8, var3513=java.lang.Exception}
; {freemarker.core._ObjectBuilderSettingEvaluationException=var1536, r0=var301, r2=var2443, null_type=var2474, r5=var572, i0=var3294, $r1=var3276, $r3=var1249, $r4=var1845, $r6=var204, $i1=var1615, $r9=var1416, $r15=var331, $r10=var1423, $r11=var772, $c2=var1828, $r12=var3178, $r13=var1837, freemarker.template.utility.StringUtil=var3023, $r14=var3553, $r16=var3634, $r17=var209, $i3=var603, $r18=var1562, $r19=var2472, $r20=var1662, $r7=var2127, $r8=var2531, java.lang.Exception=var3513}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r0 := @this: freemarker.core._ObjectBuilderSettingEvaluationException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expression syntax error: Expected a(n) ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but ");	$i1 = virtualinvoke r5.<java.lang.String: int length()>();	if i0 >= $i1 goto $r20 = "the end of the parsed string was reached.";	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found character ");	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$c2 = virtualinvoke r5.<java.lang.String: char charAt(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$i3 = i0 + 1;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r8);	return
;block_num 3