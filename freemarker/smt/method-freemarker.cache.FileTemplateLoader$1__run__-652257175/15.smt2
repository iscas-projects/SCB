(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1744 0)
(declare-sort var3424 0)
(declare-sort var1997 0)
(declare-sort var2558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$baseDir/1563630698 (var1744) var3424)
(declare-fun exists/1072868559 (var3424) Bool)
(declare-fun var1997-init () var1997)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2558) String)
(declare-fun cast-from-var3424-to-var2558 (var3424) var2558)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1681661674 (var1997 String) void)
(declare-const null-var1744 var1744)
(declare-const var2100 var1744) ; Statement: r0 := @this: freemarker.cache.FileTemplateLoader$1 
(assert (not (= var2100 null-var1744)))
(define-const var2600 var3424 (val$baseDir/1563630698 var2100)) ; Statement: $r1 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir> 
(assert true)
(define-const var1758 Bool (exists/1072868559 var2600)) ; Statement: $z0 = virtualinvoke $r1.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir> 
(assert (not (not (= (ite var1758 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2409 var1997 var1997-init) ; Statement: $r19 = new java.io.FileNotFoundException 
(define-const var1898 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1898)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1898!1 String)
(assert (= var1898!1 ""))
(define-const var97 var3424 (val$baseDir/1563630698 var2100)) ; Statement: $r21 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir> 
(assert true)
(define-const var867 String (append/-1031950772 var1898!1 (cast-from-var3424-to-var2558 var97))) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21) 
(declare-const var1898!2 String)
(assert (str.prefixof var1898!1 var1898!2))
(assert true)
(define-const var85 String (append/672562846 var867 " does not exist.")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.") 
(declare-const var867!1 String)
(assert (= var867!1 (str.++ var867 " does not exist.")))
(assert true)
(define-const var2943 String (toString/-2075883882 var85)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1681661674 var2409 var2943)) ; Statement: specialinvoke $r19.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r24) 

(declare-const var2409!1 var1997)
(declare-const var2943!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {val$baseDir/1563630698=([freemarker.cache.FileTemplateLoader$1], java.io.File), exists/1072868559=([java.io.File], boolean), var1997-init=([], java.io.FileNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3424-to-var2558=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1681661674=([java.io.FileNotFoundException, java.lang.String], void)}
; {var1744=freemarker.cache.FileTemplateLoader$1, var2100=r0, var3424=java.io.File, var2600=$r1, var1758=$z0, var1997=java.io.FileNotFoundException, var2409=$r19, var1898=$r20, var97=$r21, var2558=java.lang.Object, var867=$r22, var85=$r23, var2943=$r24}
; {freemarker.cache.FileTemplateLoader$1=var1744, r0=var2100, java.io.File=var3424, $r1=var2600, $z0=var1758, java.io.FileNotFoundException=var1997, $r19=var2409, $r20=var1898, $r21=var97, java.lang.Object=var2558, $r22=var867, $r23=var85, $r24=var2943}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.cache.FileTemplateLoader$1;	$r1 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir>;	$z0 = virtualinvoke $r1.<java.io.File: boolean exists()>();	if $z0 != 0 goto $r2 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir>;	$r19 = new java.io.FileNotFoundException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = r0.<freemarker.cache.FileTemplateLoader$1: java.io.File val$baseDir>;	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r21);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not exist.");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.io.FileNotFoundException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 2