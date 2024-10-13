(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3634 0)
(declare-sort var1999 0)
(declare-sort var1363 0)
(declare-sort var1036 0)
(declare-sort var1124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1036-init () var1036)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1124_jQuote/1315253176 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1363_access$300/1511283019 (var1363) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var1036 String Int) void)
(declare-const null-var3634 var3634)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1363 var1363)
(declare-const var3693 var3634) ; Statement: r13 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3693 null-var3634)))
(declare-const var3716 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3716 null-String)))
(declare-const var1170 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1170 null-String)))
(declare-const var1193 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1193 null-Int)))
(declare-const var1144 var1363) ; Statement: r8 := @parameter3: freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException 
(assert (not (= var1144 null-var1363)))
(define-const var1011 var1036 var1036-init) ; Statement: $r0 = new java.text.ParseException 
(define-const var212 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var212)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var212!1 String)
(assert (= var212!1 ""))
(define-const var1093 String (var1124_jQuote/1315253176 var1170)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var2603 String (append/672562846 var212!1 var1093)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var212!2 String)
(assert (= var212!2 (str.++ var212!1 var1093)))
(assert true)
(define-const var1700 String (append/672562846 var2603 " is an invalid value for the \u0022")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is an invalid value for the \"") 
(declare-const var2603!1 String)
(assert (= var2603!1 (str.++ var2603 " is an invalid value for the \u0022")))
(assert true)
(define-const var230 String (append/672562846 var1700 var3716)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 var3716)))
(assert true)
(define-const var2228 String (append/672562846 var230 "\u0022 parameter: ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" parameter: ") 
(declare-const var230!1 String)
(assert (= var230!1 (str.++ var230 "\u0022 parameter: ")))
(define-const var431 String (var1363_access$300/1511283019 var1144)) ; Statement: $r9 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: java.lang.String access$300(freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException)>(r8) 
(assert true)
(define-const var1595 String (append/672562846 var2228 var431)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2228!1 String)
(assert (= var2228!1 (str.++ var2228 var431)))
(assert true)
(define-const var3791 String (toString/-2075883882 var1595)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var1011 var3791 var1193)) ; Statement: specialinvoke $r0.<java.text.ParseException: void <init>(java.lang.String,int)>($r12, i0) 

(declare-const var1011!1 var1036)
(declare-const var3791!1 String)
(declare-const var1193!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1036-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1124_jQuote/1315253176=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1363_access$300/1511283019=([freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var3634=freemarker.core.ExtendedDecimalFormatParser, var3693=r13, var3716=r5, var1999=null_type, var1170=r2, var1193=i0, var1363=freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException, var1144=r8, var1036=java.text.ParseException, var1011=$r0, var212=$r1, var1124=freemarker.template.utility.StringUtil, var1093=$r3, var2603=$r4, var1700=$r6, var230=$r7, var2228=$r10, var431=$r9, var1595=$r11, var3791=$r12}
; {freemarker.core.ExtendedDecimalFormatParser=var3634, r13=var3693, r5=var3716, null_type=var1999, r2=var1170, i0=var1193, freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException=var1363, r8=var1144, java.text.ParseException=var1036, $r0=var1011, $r1=var212, freemarker.template.utility.StringUtil=var1124, $r3=var1093, $r4=var2603, $r6=var1700, $r7=var230, $r10=var2228, $r9=var431, $r11=var1595, $r12=var3791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.core.ExtendedDecimalFormatParser;	r5 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r8 := @parameter3: freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException;	$r0 = new java.text.ParseException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is an invalid value for the \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" parameter: ");	$r9 = staticinvoke <freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException: java.lang.String access$300(freemarker.core.ExtendedDecimalFormatParser$InvalidParameterValueException)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.text.ParseException: void <init>(java.lang.String,int)>($r12, i0);	return $r0
;block_num 1