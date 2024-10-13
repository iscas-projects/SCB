(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var1224 String "&lt;") ; Statement: $r0 = "&lt;" 
(assert true)
(define-const var563 (Array Int Int) (toCharArray/415275702 var1224)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2381 (Array Int Int) var563) ; Statement: <freemarker.template.utility.HtmlEscape: char[] LT> = $r1 
(define-const var2584 String "&gt;") ; Statement: $r2 = "&gt;" 
(assert true)
(define-const var3184 (Array Int Int) (toCharArray/415275702 var2584)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var1173 (Array Int Int) var3184) ; Statement: <freemarker.template.utility.HtmlEscape: char[] GT> = $r3 
(define-const var1608 String "&amp;") ; Statement: $r4 = "&amp;" 
(assert true)
(define-const var2330 (Array Int Int) (toCharArray/415275702 var1608)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(define-const var314 (Array Int Int) var2330) ; Statement: <freemarker.template.utility.HtmlEscape: char[] AMP> = $r5 
(define-const var974 String "&quot;") ; Statement: $r6 = "&quot;" 
(assert true)
(define-const var3666 (Array Int Int) (toCharArray/415275702 var974)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
(define-const var1879 (Array Int Int) var3666) ; Statement: <freemarker.template.utility.HtmlEscape: char[] QUOT> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var1224=$r0, var563=$r1, var2381=<freemarker.template.utility.HtmlEscape: char[] LT>, var2584=$r2, var3184=$r3, var1173=<freemarker.template.utility.HtmlEscape: char[] GT>, var1608=$r4, var2330=$r5, var314=<freemarker.template.utility.HtmlEscape: char[] AMP>, var974=$r6, var3666=$r7, var1879=<freemarker.template.utility.HtmlEscape: char[] QUOT>}
; {$r0=var1224, $r1=var563, <freemarker.template.utility.HtmlEscape: char[] LT>=var2381, $r2=var2584, $r3=var3184, <freemarker.template.utility.HtmlEscape: char[] GT>=var1173, $r4=var1608, $r5=var2330, <freemarker.template.utility.HtmlEscape: char[] AMP>=var314, $r6=var974, $r7=var3666, <freemarker.template.utility.HtmlEscape: char[] QUOT>=var1879}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 4}
;stmts $r0 = "&lt;";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.HtmlEscape: char[] LT> = $r1;	$r2 = "&gt;";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.HtmlEscape: char[] GT> = $r3;	$r4 = "&amp;";	$r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.HtmlEscape: char[] AMP> = $r5;	$r6 = "&quot;";	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.HtmlEscape: char[] QUOT> = $r7;	return
;block_num 1