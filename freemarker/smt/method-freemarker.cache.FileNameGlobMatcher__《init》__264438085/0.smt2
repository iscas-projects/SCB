(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3432 0)
(declare-sort var727 0)
(declare-sort var2037 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/564067946 (var2037) void)
(declare-fun cast-from-var3432-to-var2037 (var3432) var2037)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3300-init () var3300)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3300 String) void)
(declare-const null-var3432 var3432)
(declare-const null-String String)
(declare-const var1474 var3432) ; Statement: r0 := @this: freemarker.cache.FileNameGlobMatcher 
(assert (not (= var1474 null-var3432)))
(declare-const var3600 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3600 null-String)))
(assert true)
;(assert (<init>/564067946 (cast-from-var3432-to-var2037 var1474))) ; Statement: specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>() 

(declare-const var1474!1 var3432)
(assert true)
(define-const var1460 Int (indexOf/-1037706067 var3600 47)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47) 
(define-const var1515 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1 
(assert (not (= var1460 var1515))) ; Negate: Cond: $i0 == $i2  
(define-const var2988 var3300 var3300-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3591 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3591)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3591!1 String)
(assert (= var3591!1 ""))
(assert true)
(define-const var3454 String (append/672562846 var3591!1 "A file name glob can\u0027t contain \u0022/\u0022: ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A file name glob can\'t contain \"/\": ") 
(declare-const var3591!2 String)
(assert (= var3591!2 (str.++ var3591!1 "A file name glob can\u0027t contain \u0022/\u0022: ")))
(assert true)
(define-const var287 String (append/672562846 var3454 var3600)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3454!1 String)
(assert (= var3454!1 (str.++ var3454 var3600)))
(assert true)
(define-const var94 String (toString/-2075883882 var287)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2988 var94)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2988!1 var3300)
(declare-const var94!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/564067946=([freemarker.cache.TemplateSourceMatcher], void), cast-from-var3432-to-var2037=([freemarker.cache.FileNameGlobMatcher], freemarker.cache.TemplateSourceMatcher), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3300-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3432=freemarker.cache.FileNameGlobMatcher, var1474=r0, var3600=r1, var727=null_type, var2037=freemarker.cache.TemplateSourceMatcher, var1460=$i0, var1515=$i2, var3300=java.lang.IllegalArgumentException, var2988=$r8, var3591=$r7, var3454=$r4, var287=$r5, var94=$r6}
; {freemarker.cache.FileNameGlobMatcher=var3432, r0=var1474, r1=var3600, null_type=var727, freemarker.cache.TemplateSourceMatcher=var2037, $i0=var1460, $i2=var1515, java.lang.IllegalArgumentException=var3300, $r8=var2988, $r7=var3591, $r4=var3454, $r5=var287, $r6=var94}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.FileNameGlobMatcher;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<freemarker.cache.TemplateSourceMatcher: void <init>()>();	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47);	$i2 = (int) -1;	if $i0 == $i2 goto r0.<freemarker.cache.FileNameGlobMatcher: java.lang.String glob> = r1;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A file name glob can\'t contain \"/\": ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2