(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var154 0)
(declare-sort var405 0)
(declare-sort var1568 0)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1568_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var540-init () var540)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var540 String) void)
(declare-const null-var2686 var2686)
(declare-const null-var154 var154)
(declare-const null-String String)
(declare-const var3453 var2686) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser 
(assert (not (= var3453 null-var2686)))
(declare-const var3965 var154) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec 
(assert (not (= var3965 null-var154)))
(declare-const var291 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var291 null-String)))
(declare-const var3076 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3076 null-String)))
(define-const var2534 Bool (var1568_isNullOrEmpty/1886904788 var3076)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var2534 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var529 var540 var540-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var644 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var644)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var644!1 String)
(assert (= var644!1 ""))
(assert true)
(define-const var2887 String (append/672562846 var644!1 "value of key ")) ; Statement: $r9 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ") 
(declare-const var644!2 String)
(assert (= var644!2 (str.++ var644!1 "value of key ")))
(assert true)
(define-const var2837 String (append/672562846 var2887 var291)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2887!1 String)
(assert (= var2887!1 (str.++ var2887 var291)))
(assert true)
(define-const var15 String (append/672562846 var2837 " omitted")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted") 
(declare-const var2837!1 String)
(assert (= var2837!1 (str.++ var2837 " omitted")))
(assert true)
(define-const var2098 String (toString/-2075883882 var15)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var529 var2098)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var529!1 var540)
(declare-const var2098!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1568_isNullOrEmpty/1886904788=([java.lang.String], boolean), var540-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2686=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser, var3453=r1, var154=com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec, var3965=r2, var291=r5, var405=null_type, var3076=r0, var1568=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2534=$z0, var540=java.lang.IllegalArgumentException, var529=$r20, var644=$r19, var2887=$r9, var2837=$r10, var15=$r11, var2098=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser=var2686, r1=var3453, com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec=var154, r2=var3965, r5=var291, null_type=var405, r0=var3076, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1568, $z0=var2534, java.lang.IllegalArgumentException=var540, $r20=var529, $r19=var644, $r9=var2887, $r10=var2837, $r11=var15, $r12=var2098}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec$DurationParser;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.cache.CacheBuilderSpec;	r5 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r20 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value of key ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" omitted");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r20
;block_num 2