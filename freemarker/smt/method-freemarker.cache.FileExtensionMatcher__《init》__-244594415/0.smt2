(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var115 0)
(declare-sort var2705 0)
(declare-sort var2173 0)
(declare-sort var1769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var2173) void)
(declare-fun cast-from-var115-to-var2173 (var115) var2173)
(declare-fun caseInsensitive/1469061603 (var115) Bool)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1769-init () var1769)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1769 String) void)
(declare-const null-var115 var115)
(declare-const null-String String)
(declare-const var1715 var115) ; Statement: r0 := @this: freemarker.cache.FileExtensionMatcher 
(assert (not (= var1715 null-var115)))
(declare-const var3440 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3440 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var115-to-var2173 var1715))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var1715!1 var115)
(declare-const var1715!2 var115)
(assert (not (= var1715!2 null-var115)))
(assert (= (caseInsensitive/1469061603 var1715!2) (ite (= 1 1) true false))) ; Statement: r0.<freemarker.cache.FileExtensionMatcher: boolean caseInsensitive> = 1 
(assert true)
(define-const var1621 Int (indexOf/-1037706067 var3440 47)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47) 
(define-const var869 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i0 == $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(42) 
(assert (not (= var1621 var869))) ; Negate: Cond: $i0 == $i4  
(define-const var2411 var1769 var1769-init) ; Statement: $r23 = new java.lang.IllegalArgumentException 
(define-const var2224 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2224)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2224!1 String)
(assert (= var2224!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var2224!1 "A file extension can\u0027t contain \u0022/\u0022: ")) ; Statement: $r19 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A file extension can\'t contain \"/\": ") 
(declare-const var2224!2 String)
(assert (= var2224!2 (str.++ var2224!1 "A file extension can\u0027t contain \u0022/\u0022: ")))
(assert true)
(define-const var3519 String (append/672562846 var3362 var3440)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var3440)))
(assert true)
(define-const var2781 String (toString/-2075883882 var3519)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2411 var2781)) ; Statement: specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var2411!1 var1769)
(declare-const var2781!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var115-to-var2173=([freemarker.cache.FileExtensionMatcher], freemarker.cache.TemplateSourceMatcher), caseInsensitive/1469061603=([freemarker.cache.FileExtensionMatcher], boolean), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1769-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var115=freemarker.cache.FileExtensionMatcher, var1715=r0, var3440=r1, var2705=null_type, var2173=freemarker.cache.TemplateSourceMatcher, var1621=$i0, var869=$i4, var1769=java.lang.IllegalArgumentException, var2411=$r23, var2224=$r22, var3362=$r19, var3519=$r20, var2781=$r21}
; {freemarker.cache.FileExtensionMatcher=var115, r0=var1715, r1=var3440, null_type=var2705, freemarker.cache.TemplateSourceMatcher=var2173, $i0=var1621, $i4=var869, java.lang.IllegalArgumentException=var1769, $r23=var2411, $r22=var2224, $r19=var3362, $r20=var3519, $r21=var2781}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.FileExtensionMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	r0.<freemarker.cache.FileExtensionMatcher: boolean caseInsensitive> = 1;	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47);	$i4 = (int) -1;	if $i0 == $i4 goto $i1 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(42);	$r23 = new java.lang.IllegalArgumentException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A file extension can\'t contain \"/\": ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r23
;block_num 2