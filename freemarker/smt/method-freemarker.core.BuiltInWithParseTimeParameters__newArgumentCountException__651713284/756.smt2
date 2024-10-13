(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1302 0)
(declare-sort var842 0)
(declare-sort var2040 0)
(declare-sort var1460 0)
(declare-sort var572 0)
(declare-sort var1485 0)
(declare-sort var1978 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1460-init () var1460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var572) String)
(declare-fun cast-from-var1302-to-var572 (var1302) var572)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getTemplate/-542059899 (var1978) var1485)
(declare-fun cast-from-var1302-to-var1978 (var1302) var1978)
(declare-fun beginLine/-1758362606 (var2040) Int)
(declare-fun beginColumn/-1758362606 (var2040) Int)
(declare-fun endLine/-1758362606 (var2040) Int)
(declare-fun endColumn/-1758362606 (var2040) Int)
(declare-fun <init>/-514635553 (var1460 String var1485 Int Int Int Int) void)
(declare-const null-var1302 var1302)
(declare-const null-String String)
(declare-const null-var2040 var2040)
(declare-const var1450 var1302) ; Statement: r2 := @this: freemarker.core.BuiltInWithParseTimeParameters 
(assert (not (= var1450 null-var1302)))
(declare-const var2439 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2439 null-String)))
(declare-const var667 var2040) ; Statement: r10 := @parameter1: freemarker.core.Token 
(assert (not (= var667 null-var2040)))
(declare-const var737 var2040) ; Statement: r11 := @parameter2: freemarker.core.Token 
(assert (not (= var737 null-var2040)))
(define-const var3564 var1460 var1460-init) ; Statement: $r0 = new freemarker.core.ParseException 
(define-const var219 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var219)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var219!1 String)
(assert (= var219!1 ""))
(assert true)
(define-const var2816 String (append/672562846 var219!1 "?")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var219!2 String)
(assert (= var219!2 (str.++ var219!1 "?")))
(define-const var2379 String (key/-489369572 (cast-from-var1302-to-var572 var1450))) ; Statement: $r3 = r2.<freemarker.core.BuiltInWithParseTimeParameters: java.lang.String key> 
(assert true)
(define-const var1301 String (append/672562846 var2816 var2379)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2816!1 String)
(assert (= var2816!1 (str.++ var2816 var2379)))
(assert true)
(define-const var1060 String (append/672562846 var1301 "(...) ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(...) ") 
(declare-const var1301!1 String)
(assert (= var1301!1 (str.++ var1301 "(...) ")))
(assert true)
(define-const var2679 String (append/672562846 var1060 var2439)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1060!1 String)
(assert (= var1060!1 (str.++ var1060 var2439)))
(assert true)
(define-const var383 String (append/672562846 var2679 " parameters")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters") 
(declare-const var2679!1 String)
(assert (= var2679!1 (str.++ var2679 " parameters")))
(assert true)
(define-const var1813 String (toString/-2075883882 var383)) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2844 var1485 (getTemplate/-542059899 (cast-from-var1302-to-var1978 var1450))) ; Statement: $r12 = virtualinvoke r2.<freemarker.core.BuiltInWithParseTimeParameters: freemarker.template.Template getTemplate()>() 
(define-const var2133 Int (beginLine/-1758362606 var667)) ; Statement: $i3 = r10.<freemarker.core.Token: int beginLine> 
(define-const var2083 Int (beginColumn/-1758362606 var667)) ; Statement: $i2 = r10.<freemarker.core.Token: int beginColumn> 
(define-const var1616 Int (endLine/-1758362606 var737)) ; Statement: $i1 = r11.<freemarker.core.Token: int endLine> 
(define-const var2817 Int (endColumn/-1758362606 var737)) ; Statement: $i0 = r11.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/-514635553 var3564 var1813 var2844 var2133 var2083 var1616 var2817)) ; Statement: specialinvoke $r0.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,int,int,int,int)>($r13, $r12, $i3, $i2, $i1, $i0) 

(declare-const var3564!1 var1460)
(declare-const var1813!1 String)
(declare-const var2844!1 var1485)
(declare-const var2133!1 Int)
(declare-const var2083!1 Int)
(declare-const var1616!1 Int)
(declare-const var2817!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1460-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), cast-from-var1302-to-var572=([freemarker.core.BuiltInWithParseTimeParameters], freemarker.core.BuiltIn), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var1302-to-var1978=([freemarker.core.BuiltInWithParseTimeParameters], freemarker.core.TemplateObject), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/-514635553=([freemarker.core.ParseException, java.lang.String, freemarker.template.Template, int, int, int, int], void)}
; {var1302=freemarker.core.BuiltInWithParseTimeParameters, var1450=r2, var2439=r6, var842=null_type, var2040=freemarker.core.Token, var667=r10, var737=r11, var1460=freemarker.core.ParseException, var3564=$r0, var219=$r1, var2816=$r4, var572=freemarker.core.BuiltIn, var2379=$r3, var1301=$r5, var1060=$r7, var2679=$r8, var383=$r9, var1813=$r13, var1485=freemarker.template.Template, var1978=freemarker.core.TemplateObject, var2844=$r12, var2133=$i3, var2083=$i2, var1616=$i1, var2817=$i0}
; {freemarker.core.BuiltInWithParseTimeParameters=var1302, r2=var1450, r6=var2439, null_type=var842, freemarker.core.Token=var2040, r10=var667, r11=var737, freemarker.core.ParseException=var1460, $r0=var3564, $r1=var219, $r4=var2816, freemarker.core.BuiltIn=var572, $r3=var2379, $r5=var1301, $r7=var1060, $r8=var2679, $r9=var383, $r13=var1813, freemarker.template.Template=var1485, freemarker.core.TemplateObject=var1978, $r12=var2844, $i3=var2133, $i2=var2083, $i1=var1616, $i0=var2817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.core.BuiltInWithParseTimeParameters;	r6 := @parameter0: java.lang.String;	r10 := @parameter1: freemarker.core.Token;	r11 := @parameter2: freemarker.core.Token;	$r0 = new freemarker.core.ParseException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r3 = r2.<freemarker.core.BuiltInWithParseTimeParameters: java.lang.String key>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(...) ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" parameters");	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r2.<freemarker.core.BuiltInWithParseTimeParameters: freemarker.template.Template getTemplate()>();	$i3 = r10.<freemarker.core.Token: int beginLine>;	$i2 = r10.<freemarker.core.Token: int beginColumn>;	$i1 = r11.<freemarker.core.Token: int endLine>;	$i0 = r11.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.template.Template,int,int,int,int)>($r13, $r12, $i3, $i2, $i1, $i0);	return $r0
;block_num 1