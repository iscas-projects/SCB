(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2096 0)
(declare-sort var2075 0)
(declare-sort var2533 0)
(declare-sort var2801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2533_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var2801 String) void)
(declare-fun cast-from-var2096-to-var2801 (var2096) var2801)
(declare-fun timeZoneName/73929913 (var2096) String)
(declare-const null-var2096 var2096)
(declare-const null-String String)
(declare-const var2076 var2096) ; Statement: r0 := @this: freemarker.template.utility.UnrecognizedTimeZoneException 
(assert (not (= var2076 null-var2096)))
(declare-const var2901 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2901 null-String)))
(define-const var90 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var90)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var90!1 String)
(assert (= var90!1 ""))
(assert true)
(define-const var1020 String (append/672562846 var90!1 "Unrecognized time zone: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized time zone: ") 
(declare-const var90!2 String)
(assert (= var90!2 (str.++ var90!1 "Unrecognized time zone: ")))
(define-const var1494 String (var2533_jQuote/1315253176 var2901)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var3288 String (append/672562846 var1020 var1494)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1020!1 String)
(assert (= var1020!1 (str.++ var1020 var1494)))
(assert true)
(define-const var2377 String (toString/-2075883882 var3288)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var2096-to-var2801 var2076) var2377)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6) 

(declare-const var2076!1 var2096)
(declare-const var2377!1 String)
(declare-const var2076!2 var2096)
(assert (not (= var2076!2 null-var2096)))
(assert (= (timeZoneName/73929913 var2076!2) var2901)) ; Statement: r0.<freemarker.template.utility.UnrecognizedTimeZoneException: java.lang.String timeZoneName> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2533_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var2096-to-var2801=([freemarker.template.utility.UnrecognizedTimeZoneException], java.lang.Exception), timeZoneName/73929913=([freemarker.template.utility.UnrecognizedTimeZoneException], java.lang.String)}
; {var2096=freemarker.template.utility.UnrecognizedTimeZoneException, var2076=r0, var2901=r2, var2075=null_type, var90=$r1, var1020=$r4, var2533=freemarker.template.utility.StringUtil, var1494=$r3, var3288=$r5, var2377=$r6, var2801=java.lang.Exception}
; {freemarker.template.utility.UnrecognizedTimeZoneException=var2096, r0=var2076, r2=var2901, null_type=var2075, $r1=var90, $r4=var1020, freemarker.template.utility.StringUtil=var2533, $r3=var1494, $r5=var3288, $r6=var2377, java.lang.Exception=var2801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.utility.UnrecognizedTimeZoneException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unrecognized time zone: ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r6);	r0.<freemarker.template.utility.UnrecognizedTimeZoneException: java.lang.String timeZoneName> = r2;	return
;block_num 1