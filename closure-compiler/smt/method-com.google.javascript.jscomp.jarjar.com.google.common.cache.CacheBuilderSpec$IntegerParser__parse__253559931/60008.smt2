(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1651 0)
(declare-sort var3598 0)
(declare-sort var1940 0)
(declare-sort var2126 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2126_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2056-init () var2056)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2056 String) void)
(declare-const null-var1651 var1651)
(declare-const null-var3598 var3598)
(declare-const null-String String)
(declare-const var1582 var1651) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser 
(assert (not (= var1582 null-var1651)))
(declare-const var3753 var3598) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var3753 null-var3598)))
(declare-const var390 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var390 null-String)))
(declare-const var2230 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2230 null-String)))
(define-const var199 Bool (var2126_isNullOrEmpty/1886904788 var2230)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r0) 
(assert (not (= (ite var199 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var63 var2056 var2056-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1034 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1034)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1034!1 String)
(assert (= var1034!1 ""))
(assert true)
(define-const var32 String (append/672562846 var1034!1 "value of key ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ") 
(declare-const var1034!2 String)
(assert (= var1034!2 (str.++ var1034!1 "value of key ")))
(assert true)
(define-const var3003 String (append/672562846 var32 var390)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var32!1 String)
(assert (= var32!1 (str.++ var32 var390)))
(assert true)
(define-const var3786 String (append/672562846 var3003 " omitted")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted") 
(declare-const var3003!1 String)
(assert (= var3003!1 (str.++ var3003 " omitted")))
(assert true)
(define-const var2150 String (toString/-2075883882 var3786)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var63 var2150)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var63!1 var2056)
(declare-const var2150!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2126_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2056-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1651=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser, var1582=r1, var3598=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var3753=r2, var390=r5, var1940=null_type, var2230=r0, var2126=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var199=$z0, var2056=java.lang.IllegalArgumentException, var63=$r3, var1034=$r4, var32=$r6, var3003=$r7, var3786=$r8, var2150=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser=var1651, r1=var1582, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var3598, r2=var3753, r5=var390, null_type=var1940, r0=var2230, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2126, $z0=var199, java.lang.IllegalArgumentException=var2056, $r3=var63, $r4=var1034, $r6=var32, $r7=var3003, $r8=var3786, $r9=var2150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$IntegerParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>(r0);	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2