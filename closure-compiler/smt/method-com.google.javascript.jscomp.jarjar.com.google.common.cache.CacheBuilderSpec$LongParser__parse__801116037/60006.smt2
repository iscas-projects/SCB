(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var50 0)
(declare-sort var3791 0)
(declare-sort var2062 0)
(declare-sort var382 0)
(declare-sort var236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var382_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var236-init () var236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var236 String) void)
(declare-const null-var50 var50)
(declare-const null-var3791 var3791)
(declare-const null-String String)
(declare-const var2168 var50) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser 
(assert (not (= var2168 null-var50)))
(declare-const var1341 var3791) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var1341 null-var3791)))
(declare-const var2369 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2369 null-String)))
(declare-const var2505 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2505 null-String)))
(define-const var2961 Bool (var382_isNullOrEmpty/1886904788 var2505)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r0) 
(assert (not (= (ite var2961 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2566 var236 var236-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var3938 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3938)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3938!1 String)
(assert (= var3938!1 ""))
(assert true)
(define-const var3439 String (append/672562846 var3938!1 "value of key ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ") 
(declare-const var3938!2 String)
(assert (= var3938!2 (str.++ var3938!1 "value of key ")))
(assert true)
(define-const var291 String (append/672562846 var3439 var2369)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3439!1 String)
(assert (= var3439!1 (str.++ var3439 var2369)))
(assert true)
(define-const var196 String (append/672562846 var291 " omitted")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted") 
(declare-const var291!1 String)
(assert (= var291!1 (str.++ var291 " omitted")))
(assert true)
(define-const var3148 String (toString/-2075883882 var196)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2566 var3148)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var2566!1 var236)
(declare-const var3148!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var382_isNullOrEmpty/1886904788=([java.lang.String], boolean), var236-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var50=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser, var2168=r1, var3791=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var1341=r2, var2369=r5, var2062=null_type, var2505=r0, var382=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2961=$z0, var236=java.lang.IllegalArgumentException, var2566=$r3, var3938=$r4, var3439=$r6, var291=$r7, var196=$r8, var3148=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser=var50, r1=var2168, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var3791, r2=var1341, r5=var2369, null_type=var2062, r0=var2505, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var382, $z0=var2961, java.lang.IllegalArgumentException=var236, $r3=var2566, $r4=var3938, $r6=var3439, $r7=var291, $r8=var196, $r9=var3148}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$LongParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>(r0);	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2