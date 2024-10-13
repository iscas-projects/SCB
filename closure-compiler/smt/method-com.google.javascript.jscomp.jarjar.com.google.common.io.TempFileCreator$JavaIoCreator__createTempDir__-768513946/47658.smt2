(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3197 0)
(declare-sort var3690 0)
(declare-sort var2775 0)
(declare-sort var1789 0)
(declare-sort var1826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3690-init () var3690)
(declare-fun value/809941835 (var2775) String)
(declare-fun <init>/-1681595970 (var3690 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1789_currentTimeMillis/630293680 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1826-init () var1826)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun <init>/-1092629202 (var1826 String) void)
(declare-const null-var3197 var3197)
(declare-const var2775-JAVA_IO_TMPDIR var2775)
(declare-const var2512 var3197) ; Statement: r21 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.TempFileCreator$JavaIoCreator 
(assert (not (= var2512 null-var3197)))
(define-const var3737 var3690 var3690-init) ; Statement: $r0 = new java.io.File 
(define-const var3368 var2775 var2775-JAVA_IO_TMPDIR) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty JAVA_IO_TMPDIR> 
(assert true)
(define-const var1542 String (value/809941835 var3368)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String value()>() 
(assert true)
;(assert (<init>/-1681595970 var3737 var1542)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r2) 

(declare-const var3737!1 var3690)
(declare-const var1542!1 String)
(define-const var1547 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1547)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1547!1 String)
(assert (= var1547!1 ""))
(define-const var3793 Int var1789_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert true)
(define-const var3711 String (append/-901862667 var1547!1 var3793)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1547!2 String)
(assert (str.prefixof var1547!1 var1547!2))
(assert true)
(define-const var3165 String (append/672562846 var3711 "-")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var3711!1 String)
(assert (= var3711!1 (str.++ var3711 "-")))
(assert true)
(define-const var842 String (toString/-2075883882 var3165)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1537 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= 10000 goto $r7 = new java.lang.IllegalStateException 
(assert (>= var1537 10000)) ; Cond: i1 >= 10000 
(define-const var1326 var1826 var1826-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var2668 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2668)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2668!1 String)
(assert (= var2668!1 ""))
(assert true)
(define-const var1806 String (append/672562846 var2668!1 "Failed to create directory within 10000 attempts (tried ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create directory within 10000 attempts (tried ") 
(declare-const var2668!2 String)
(assert (= var2668!2 (str.++ var2668!1 "Failed to create directory within 10000 attempts (tried ")))
(assert true)
(define-const var913 String (append/672562846 var1806 var842)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1806!1 String)
(assert (= var1806!1 (str.++ var1806 var842)))
(assert true)
(define-const var960 String (append/672562846 var913 "0 to ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0 to ") 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 "0 to ")))
(assert true)
(define-const var1970 String (append/672562846 var960 var842)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var960!1 String)
(assert (= var960!1 (str.++ var960 var842)))
(assert true)
(define-const var1662 String (append/-1001720160 var1970 9999)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(9999) 
(declare-const var1970!1 String)
(assert (str.prefixof var1970 var1970!1))
(assert true)
(define-const var97 String (append/-1166366385 var1662 41)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1662!1 String)
(assert (str.prefixof var1662 var1662!1))
(assert true)
(define-const var76 String (toString/-2075883882 var97)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1326 var76)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15) 

(declare-const var1326!1 var1826)
(declare-const var76!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3690-init=([], java.io.File), value/809941835=([com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1789_currentTimeMillis/630293680=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1826-init=([], java.lang.IllegalStateException), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3197=com.google.javascript.jscomp.jarjar.com.google.common.io.TempFileCreator$JavaIoCreator, var2512=r21, var3690=java.io.File, var3737=$r0, var2775=com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty, var3368=$r1, var1542=$r2, var1547=$r3, var1789=java.lang.System, var3793=$l0, var3711=$r4, var3165=$r5, var842=r6, var1537=i1, var1826=java.lang.IllegalStateException, var1326=$r7, var2668=$r8, var1806=$r9, var913=$r10, var960=$r11, var1970=$r12, var1662=$r13, var97=$r14, var76=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.TempFileCreator$JavaIoCreator=var3197, r21=var2512, java.io.File=var3690, $r0=var3737, com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty=var2775, $r1=var3368, $r2=var1542, $r3=var1547, java.lang.System=var1789, $l0=var3793, $r4=var3711, $r5=var3165, r6=var842, i1=var1537, java.lang.IllegalStateException=var1826, $r7=var1326, $r8=var2668, $r9=var1806, $r10=var913, $r11=var960, $r12=var1970, $r13=var1662, $r14=var97, $r15=var76}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r21 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.TempFileCreator$JavaIoCreator;	$r0 = new java.io.File;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty JAVA_IO_TMPDIR>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.StandardSystemProperty: java.lang.String value()>();	specialinvoke $r0.<java.io.File: void <init>(java.lang.String)>($r2);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	i1 = 0;	if i1 >= 10000 goto $r7 = new java.lang.IllegalStateException;	$r7 = new java.lang.IllegalStateException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to create directory within 10000 attempts (tried ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0 to ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(9999);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r15);	throw $r7
;block_num 3