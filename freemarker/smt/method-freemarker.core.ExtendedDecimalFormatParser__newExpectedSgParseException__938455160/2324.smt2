(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2791 0)
(declare-sort var2377 0)
(declare-sort var3460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var2791) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var2791) Int)
(declare-fun var3460-init () var3460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var3460 String Int) void)
(declare-const null-var2791 var2791)
(declare-const null-String String)
(declare-const var2924 var2791) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var2924 null-var2791)))
(declare-const var3255 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3255 null-String)))
(define-const var2557 String (src/-1548601273 var2924)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var1010 Int (length/-134980193 var2557)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2062 Int (- var1010 1)) ; Statement: i12 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i12 < 0 goto $i11 = i12 + 1 
(assert (< var2062 0)) ; Cond: i12 < 0 
(define-const var769 Int (+ var2062 1)) ; Statement: $i11 = i12 + 1 
(define-const var2610 Int (pos/-1548601273 var2924)) ; Statement: $i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i1 >= $i11 goto r23 = null 
(assert (>= var2610 var769)) ; Cond: $i1 >= $i11 
(define-const var1433 String null-String) ; Statement: r23 = null 
(assert true) ; Non Conditional
(define-const var1569 var3460 var3460-init) ; Statement: $r28 = new java.text.ParseException 
(define-const var3840 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3840)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3840!1 String)
(assert (= var3840!1 ""))
(assert true)
(define-const var2592 String (append/672562846 var3840!1 "Expected a(n) ")) ; Statement: $r5 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a(n) ") 
(declare-const var3840!2 String)
(assert (= var3840!2 (str.++ var3840!1 "Expected a(n) ")))
(assert true)
(define-const var3821 String (append/672562846 var2592 var3255)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2592!1 String)
(assert (= var2592!1 (str.++ var2592 var3255)))
(assert true)
(define-const var3519 String (append/672562846 var3821 " at position ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ") 
(declare-const var3821!1 String)
(assert (= var3821!1 (str.++ var3821 " at position ")))
(define-const var1730 Int (pos/-1548601273 var2924)) ; Statement: $i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert true)
(define-const var3343 String (append/-1001720160 var3519 var1730)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3519!1 String)
(assert (str.prefixof var3519 var3519!1))
(assert true)
(define-const var893 String (append/672562846 var3343 " (0-based), but ")) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based), but ") 
(declare-const var3343!1 String)
(assert (= var3343!1 (str.++ var3343 " (0-based), but ")))
 ; Statement: if r23 != null goto $r27 = new java.lang.StringBuilder 
(assert (not (not (= var1433 null-String)))) ; Negate: Cond: r23 != null  
(define-const var3737 String "reached the end of the input.") ; Statement: $r24 = "reached the end of the input." 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
(define-const var333 String (append/672562846 var893 var3737)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var893!1 String)
(assert (= var893!1 (str.++ var893 var3737)))
(assert true)
(define-const var2312 String (toString/-2075883882 var333)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3462 Int (pos/-1548601273 var2924)) ; Statement: $i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert true)
;(assert (<init>/1495607482 var1569 var2312 var3462)) ; Statement: specialinvoke $r28.<java.text.ParseException: void <init>(java.lang.String,int)>($r14, $i3) 

(declare-const var1569!1 var3460)
(declare-const var2312!1 String)
(declare-const var3462!1 Int)
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), var3460-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var2791=freemarker.core.ExtendedDecimalFormatParser, var2924=r0, var3255=r4, var2377=null_type, var2557=$r1, var1010=$i0, var2062=i12, var769=$i11, var2610=$i1, var1433=r23, var3460=java.text.ParseException, var1569=$r28, var3840=$r26, var2592=$r5, var3821=$r6, var3519=$r7, var1730=$i2, var3343=$r8, var893=$r12, var3737=$r24, var333=$r13, var2312=$r14, var3462=$i3}
; {freemarker.core.ExtendedDecimalFormatParser=var2791, r0=var2924, r4=var3255, null_type=var2377, $r1=var2557, $i0=var1010, i12=var2062, $i11=var769, $i1=var2610, r23=var1433, java.text.ParseException=var3460, $r28=var1569, $r26=var3840, $r5=var2592, $r6=var3821, $r7=var3519, $i2=var1730, $r8=var3343, $r12=var893, $r24=var3737, $r13=var333, $r14=var2312, $i3=var3462}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	r4 := @parameter0: java.lang.String;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i12 = $i0 - 1;	if i12 < 0 goto $i11 = i12 + 1;	$i11 = i12 + 1;	$i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i1 >= $i11 goto r23 = null;	r23 = null;	$r28 = new java.text.ParseException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected a(n) ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at position ");	$i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (0-based), but ");	if r23 != null goto $r27 = new java.lang.StringBuilder;	$r24 = "reached the end of the input.";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	specialinvoke $r28.<java.text.ParseException: void <init>(java.lang.String,int)>($r14, $i3);	return $r28
;block_num 7