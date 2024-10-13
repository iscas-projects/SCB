(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2760 0)
(declare-sort var1125 0)
(declare-sort var3614 0)
(declare-sort var3207 0)
(declare-sort var3018 0)
(declare-sort var1873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1125-init () var1125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1873_jQuote/1315253176 (String) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warn/-1154811012 (var3207 String) void)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3614 var3614)
(declare-const var3018-LOG var3207)
(declare-const var2404 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2404 null-String)))
(declare-const var2039 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2039 null-Int)))
(define-const var3274 var1125 var1125-init) ; Statement: $r0 = new freemarker.template.utility.SecurityUtilities$3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3981 var3614) ; Statement: $r4 := @caughtexception 
(assert (not (= var3981 null-var3614)))
(define-const var2976 var3207 var3018-LOG) ; Statement: $r6 = <freemarker.template.utility.SecurityUtilities: freemarker.log.Logger LOG> 
(define-const var352 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert true)
(define-const var2329 String (append/672562846 var352!1 "Insufficient permissions to read system property ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Insufficient permissions to read system property ") 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 "Insufficient permissions to read system property ")))
(define-const var394 String (var1873_jQuote/1315253176 var2404)) ; Statement: $r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r1) 
(assert true)
(define-const var2810 String (append/672562846 var2329 var394)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2329!1 String)
(assert (= var2329!1 (str.++ var2329 var394)))
(assert true)
(define-const var435 String (append/672562846 var2810 ", using default value ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", using default value ") 
(declare-const var2810!1 String)
(assert (= var2810!1 (str.++ var2810 ", using default value ")))
(assert true)
(define-const var2968 String (append/-1001720160 var435 var2039)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var435!1 String)
(assert (str.prefixof var435 var435!1))
(assert true)
(define-const var331 String (toString/-2075883882 var2968)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warn/-1154811012 var2976 var331)) ; Statement: virtualinvoke $r6.<freemarker.log.Logger: void warn(java.lang.String)>($r12) 

(declare-const var2976!1 var3207)
(declare-const var331!1 String)
(define-const var2169 Int (Int_valueOf/-1371140006 var2039)) ; Statement: $r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1125-init=([], freemarker.template.utility.SecurityUtilities$3), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1873_jQuote/1315253176=([java.lang.String], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warn/-1154811012=([freemarker.log.Logger, java.lang.String], void), Int_valueOf/-1371140006=([int], java.lang.Integer)}
; {var2404=r1, var2760=null_type, var2039=i0, var1125=freemarker.template.utility.SecurityUtilities$3, var3274=$r0, var3614=java.security.AccessControlException, var3981=$r4, var3207=freemarker.log.Logger, var3018=freemarker.template.utility.SecurityUtilities, var2976=$r6, var352=$r5, var2329=$r8, var1873=freemarker.template.utility.StringUtil, var394=$r7, var2810=$r9, var435=$r10, var2968=$r11, var331=$r12, var2169=$r13}
; {r1=var2404, null_type=var2760, i0=var2039, freemarker.template.utility.SecurityUtilities$3=var1125, $r0=var3274, java.security.AccessControlException=var3614, $r4=var3981, freemarker.log.Logger=var3207, freemarker.template.utility.SecurityUtilities=var3018, $r6=var2976, $r5=var352, $r8=var2329, freemarker.template.utility.StringUtil=var1873, $r7=var394, $r9=var2810, $r10=var435, $r11=var2968, $r12=var331, $r13=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = new freemarker.template.utility.SecurityUtilities$3;	$r4 := @caughtexception;	$r6 = <freemarker.template.utility.SecurityUtilities: freemarker.log.Logger LOG>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Insufficient permissions to read system property ");	$r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", using default value ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<freemarker.log.Logger: void warn(java.lang.String)>($r12);	$r13 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	return $r13
;block_num 2