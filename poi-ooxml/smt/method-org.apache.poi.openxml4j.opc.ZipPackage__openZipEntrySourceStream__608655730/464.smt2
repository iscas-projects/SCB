(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1624 0)
(declare-sort var1341 0)
(declare-sort var3923 0)
(declare-sort var2657 0)
(declare-sort var189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3923-init () var3923)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2657) String)
(declare-fun cast-from-var1624-to-var2657 (var1624) var2657)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1134025768 (var3923 String var189) void)
(declare-fun cast-from-var1341-to-var189 (var1341) var189)
(declare-const null-var1624 var1624)
(declare-const null-var1341 var1341)
(declare-const var1506 var1624) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1506 null-var1624)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1706 var1341) ; Statement: $r13 := @caughtexception 
(assert (not (= var1706 null-var1341)))
(define-const var2621 var3923 var3923-init) ; Statement: $r14 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException 
(define-const var1224 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1224)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1224!1 String)
(assert (= var1224!1 ""))
(assert true)
(define-const var1256 String (append/672562846 var1224!1 "Can\u0027t open the specified file input stream from file: \u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t open the specified file input stream from file: \'") 
(declare-const var1224!2 String)
(assert (= var1224!2 (str.++ var1224!1 "Can\u0027t open the specified file input stream from file: \u0027")))
(assert true)
(define-const var3860 String (append/-1031950772 var1256 (cast-from-var1624-to-var2657 var1506))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1256!1 String)
(assert (str.prefixof var1256 var1256!1))
(assert true)
(define-const var1736 String (append/672562846 var3860 "\u0027")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3860!1 String)
(assert (= var3860!1 (str.++ var3860 "\u0027")))
(assert true)
(define-const var2126 String (toString/-2075883882 var1736)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1134025768 var2621 var2126 (cast-from-var1341-to-var189 var1706))) ; Statement: specialinvoke $r14.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13) 

(declare-const var2621!1 var3923)
(declare-const var2126!1 String)
(declare-const var1706!1 var1341)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3923-init=([], org.apache.poi.openxml4j.exceptions.InvalidOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1624-to-var2657=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1134025768=([org.apache.poi.openxml4j.exceptions.InvalidOperationException, java.lang.String, java.lang.Throwable], void), cast-from-var1341-to-var189=([java.io.IOException], java.lang.Throwable)}
; {var1624=java.io.File, var1506=r0, var1341=java.io.IOException, var1706=$r13, var3923=org.apache.poi.openxml4j.exceptions.InvalidOperationException, var2621=$r14, var1224=$r15, var1256=$r16, var2657=java.lang.Object, var3860=$r17, var1736=$r18, var2126=$r19, var189=java.lang.Throwable}
; {java.io.File=var1624, r0=var1506, java.io.IOException=var1341, $r13=var1706, org.apache.poi.openxml4j.exceptions.InvalidOperationException=var3923, $r14=var2621, $r15=var1224, $r16=var1256, java.lang.Object=var2657, $r17=var3860, $r18=var1736, $r19=var2126, java.lang.Throwable=var189}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	$r13 := @caughtexception;	$r14 = new org.apache.poi.openxml4j.exceptions.InvalidOperationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t open the specified file input stream from file: \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.apache.poi.openxml4j.exceptions.InvalidOperationException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r13);	throw $r14
;block_num 2