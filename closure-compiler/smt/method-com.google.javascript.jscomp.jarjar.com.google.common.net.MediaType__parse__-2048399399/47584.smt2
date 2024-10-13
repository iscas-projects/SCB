(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var43 0)
(declare-sort var2098 0)
(declare-sort var2537 0)
(declare-sort var1728 0)
(declare-sort var864 0)
(declare-sort var3348 0)
(declare-sort var1968 0)
(declare-sort var1913 0)
(declare-sort var418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2098_checkNotNull/1446102589 (var2537) var2537)
(declare-fun cast-from-String-to-var2537 (String) var2537)
(declare-fun var1728-init () var1728)
(declare-fun <init>/1913549858 (var1728 String) void)
(declare-fun var1913-init () var1913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1913 String var418) void)
(declare-fun cast-from-var1968-to-var418 (var1968) var418)
(declare-const null-String String)
(declare-const var3348-TOKEN_MATCHER var864)
(declare-const null-var1968 var1968)
(declare-const var3401 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3401 null-String)))
;(assert (var2098_checkNotNull/1446102589 (cast-from-String-to-var2537 var3401))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3401!1 String)
(define-const var2089 var1728 var1728-init) ; Statement: $r26 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer 
(assert true)
;(assert (<init>/1913549858 var2089 var3401!1)) ; Statement: specialinvoke $r26.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: void <init>(java.lang.String)>(r0) 

(declare-const var2089!1 var1728)
(declare-const var3401!2 String)
(define-const var2794 var864 var3348-TOKEN_MATCHER) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1202 var1968) ; Statement: $r17 := @caughtexception 
(assert (not (= var1202 null-var1968)))
(define-const var47 var1913 var1913-init) ; Statement: $r29 = new java.lang.IllegalArgumentException 
(define-const var1872 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1872)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1872!1 String)
(assert (= var1872!1 ""))
(assert true)
(define-const var2945 String (append/672562846 var1872!1 "Could not parse \u0027")) ; Statement: $r20 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse \'") 
(declare-const var1872!2 String)
(assert (= var1872!2 (str.++ var1872!1 "Could not parse \u0027")))
(assert true)
(define-const var3171 String (append/672562846 var2945 var3401!2)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2945!1 String)
(assert (= var2945!1 (str.++ var2945 var3401!2)))
(assert true)
(define-const var727 String (append/672562846 var3171 "\u0027")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3171!1 String)
(assert (= var3171!1 (str.++ var3171 "\u0027")))
(assert true)
(define-const var982 String (toString/-2075883882 var727)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var47 var982 (cast-from-var1968-to-var418 var1202))) ; Statement: specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r17) 

(declare-const var47!1 var1913)
(declare-const var982!1 String)
(declare-const var1202!1 var1968)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2098_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2537=([java.lang.String], java.lang.Object), var1728-init=([], com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer), <init>/1913549858=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer, java.lang.String], void), var1913-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1968-to-var418=([java.lang.IllegalStateException], java.lang.Throwable)}
; {var3401=r0, var43=null_type, var2098=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2537=java.lang.Object, var1728=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer, var2089=$r26, var864=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3348=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType, var2794=$r2, var1968=java.lang.IllegalStateException, var1202=$r17, var1913=java.lang.IllegalArgumentException, var47=$r29, var1872=$r28, var2945=$r20, var3171=$r21, var727=$r22, var982=$r23, var418=java.lang.Throwable}
; {r0=var3401, null_type=var43, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2098, java.lang.Object=var2537, com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer=var1728, $r26=var2089, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var864, com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType=var3348, $r2=var2794, java.lang.IllegalStateException=var1968, $r17=var1202, java.lang.IllegalArgumentException=var1913, $r29=var47, $r28=var1872, $r20=var2945, $r21=var3171, $r22=var727, $r23=var982, java.lang.Throwable=var418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r26 = new com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer;	specialinvoke $r26.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: void <init>(java.lang.String)>(r0);	$r2 = <com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher TOKEN_MATCHER>;	$r17 := @caughtexception;	$r29 = new java.lang.IllegalArgumentException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse \'");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r17);	throw $r29
;block_num 2