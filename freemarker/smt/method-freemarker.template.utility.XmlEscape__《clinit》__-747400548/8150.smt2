(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(define-const var884 String "&lt;") ; Statement: $r0 = "&lt;" 
(assert true)
(define-const var3182 (Array Int Int) (toCharArray/415275702 var884)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2962 (Array Int Int) var3182) ; Statement: <freemarker.template.utility.XmlEscape: char[] LT> = $r1 
(define-const var3967 String "&gt;") ; Statement: $r2 = "&gt;" 
(assert true)
(define-const var701 (Array Int Int) (toCharArray/415275702 var3967)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(define-const var2323 (Array Int Int) var701) ; Statement: <freemarker.template.utility.XmlEscape: char[] GT> = $r3 
(define-const var1705 String "&amp;") ; Statement: $r4 = "&amp;" 
(assert true)
(define-const var3117 (Array Int Int) (toCharArray/415275702 var1705)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>() 
(define-const var13 (Array Int Int) var3117) ; Statement: <freemarker.template.utility.XmlEscape: char[] AMP> = $r5 
(define-const var1718 String "&quot;") ; Statement: $r6 = "&quot;" 
(assert true)
(define-const var1485 (Array Int Int) (toCharArray/415275702 var1718)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>() 
(define-const var1493 (Array Int Int) var1485) ; Statement: <freemarker.template.utility.XmlEscape: char[] QUOT> = $r7 
(define-const var3079 String "&apos;") ; Statement: $r8 = "&apos;" 
(assert true)
(define-const var3373 (Array Int Int) (toCharArray/415275702 var3079)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: char[] toCharArray()>() 
(define-const var1133 (Array Int Int) var3373) ; Statement: <freemarker.template.utility.XmlEscape: char[] APOS> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[])}
; {var884=$r0, var3182=$r1, var2962=<freemarker.template.utility.XmlEscape: char[] LT>, var3967=$r2, var701=$r3, var2323=<freemarker.template.utility.XmlEscape: char[] GT>, var1705=$r4, var3117=$r5, var13=<freemarker.template.utility.XmlEscape: char[] AMP>, var1718=$r6, var1485=$r7, var1493=<freemarker.template.utility.XmlEscape: char[] QUOT>, var3079=$r8, var3373=$r9, var1133=<freemarker.template.utility.XmlEscape: char[] APOS>}
; {$r0=var884, $r1=var3182, <freemarker.template.utility.XmlEscape: char[] LT>=var2962, $r2=var3967, $r3=var701, <freemarker.template.utility.XmlEscape: char[] GT>=var2323, $r4=var1705, $r5=var3117, <freemarker.template.utility.XmlEscape: char[] AMP>=var13, $r6=var1718, $r7=var1485, <freemarker.template.utility.XmlEscape: char[] QUOT>=var1493, $r8=var3079, $r9=var3373, <freemarker.template.utility.XmlEscape: char[] APOS>=var1133}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 5}
;stmts $r0 = "&lt;";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.XmlEscape: char[] LT> = $r1;	$r2 = "&gt;";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.XmlEscape: char[] GT> = $r3;	$r4 = "&amp;";	$r5 = virtualinvoke $r4.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.XmlEscape: char[] AMP> = $r5;	$r6 = "&quot;";	$r7 = virtualinvoke $r6.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.XmlEscape: char[] QUOT> = $r7;	$r8 = "&apos;";	$r9 = virtualinvoke $r8.<java.lang.String: char[] toCharArray()>();	<freemarker.template.utility.XmlEscape: char[] APOS> = $r9;	return
;block_num 1