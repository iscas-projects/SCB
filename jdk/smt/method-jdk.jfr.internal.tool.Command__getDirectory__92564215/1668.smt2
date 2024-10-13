(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var1109 0)
(declare-sort var1992 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var354-init () var354)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var354 String) void)
(declare-const null-var86 var86)
(declare-const null-String String)
(declare-const null-var1992 var1992)
(declare-const var1364 var86) ; Statement: r22 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var1364 null-var86)))
(declare-const var2979 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2979 null-String)))
(define-const var503 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var91 var1992) ; Statement: $r15 := @caughtexception 
(assert (not (= var91 null-var1992)))
(define-const var2576 var354 var354-init) ; Statement: $r16 = new jdk.jfr.internal.tool.UserDataException 
(define-const var2887 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2887)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2887!1 String)
(assert (= var2887!1 ""))
(assert true)
(define-const var37 String (append/672562846 var2887!1 "invalid path \u0027")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid path \'") 
(declare-const var2887!2 String)
(assert (= var2887!2 (str.++ var2887!1 "invalid path \u0027")))
(assert true)
(define-const var1482 String (append/672562846 var37 var2979)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var37!1 String)
(assert (= var37!1 (str.++ var37 var2979)))
(assert true)
(define-const var1084 String (append/672562846 var1482 "\u0027")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1482!1 String)
(assert (= var1482!1 (str.++ var1482 "\u0027")))
(assert true)
(define-const var3768 String (toString/-2075883882 var1084)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var2576 var3768)) ; Statement: specialinvoke $r16.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r21) 

(declare-const var2576!1 var354)
(declare-const var3768!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), var354-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var86=jdk.jfr.internal.tool.Command, var1364=r22, var2979=r0, var1109=null_type, var503=$r1, var1992=java.nio.file.InvalidPathException, var91=$r15, var354=jdk.jfr.internal.tool.UserDataException, var2576=$r16, var2887=$r17, var37=$r18, var1482=$r19, var1084=$r20, var3768=$r21}
; {jdk.jfr.internal.tool.Command=var86, r22=var1364, r0=var2979, null_type=var1109, $r1=var503, java.nio.file.InvalidPathException=var1992, $r15=var91, jdk.jfr.internal.tool.UserDataException=var354, $r16=var2576, $r17=var2887, $r18=var37, $r19=var1482, $r20=var1084, $r21=var3768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r22 := @this: jdk.jfr.internal.tool.Command;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.String)[0];	$r15 := @caughtexception;	$r16 = new jdk.jfr.internal.tool.UserDataException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid path \'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r21);	throw $r16
;block_num 2