(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var1667 0)
(declare-sort var3867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun <init>/1968657023 () String "")
(declare-fun longestQueryTimeMs/-170044346 (var1125) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun shortestQueryTimeMs/-170044346 (var1125) Int)
(declare-fun totalQueryTimeMs/-170044346 (var1125) Float64)
(declare-fun numberOfQueriesIssued/-170044346 (var1125) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun numberOfResultSetsCreated/-170044346 (var1125) Int)
(declare-fun numberOfPrepares/-170044346 (var1125) Int)
(declare-fun numberOfPreparedExecutes/-170044346 (var1125) Int)
(declare-fun perfMetricsHistBreakpoints/-170044346 (var1125) (Array Int Int))
(declare-fun numTablesMetricsHistBreakpoints/-170044346 (var1125) (Array Int Int))
(declare-fun var1667_logInfo/-784859844 (var1667 var3867) void)
(declare-fun cast-from-String-to-var3867 (String) var3867)
(declare-const null-var1125 var1125)
(declare-const null-var1667 var1667)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var57 var1125) ; Statement: r2 := @this: com.mysql.cj.log.BaseMetricsHolder 
(assert (not (= var57 null-var1125)))
(declare-const var3929 var1667) ; Statement: r34 := @parameter0: com.mysql.cj.log.Log 
(assert (not (= var3929 null-var1667)))
(define-const var2202 String String-init) ; Statement: $r90 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2202 256)) ; Statement: specialinvoke $r90.<java.lang.StringBuilder: void <init>(int)>(256) 

(declare-const var2202!1 String)
(declare-const var3186 Int)
(assert true)
;(assert (append/672562846 var2202!1 "** Performance Metrics Report **\n")) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("** Performance Metrics Report **\n") 
(declare-const var2202!2 String)
(assert (= var2202!2 (str.++ var2202!1 "** Performance Metrics Report **\n")))
(define-const var468 String String-init) ; Statement: $r91 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var468)) ; Statement: specialinvoke $r91.<java.lang.StringBuilder: void <init>()>() 
(declare-const var468!1 String)
(assert (= var468!1 ""))
(assert true)
(define-const var1449 String (append/672562846 var468!1 "\nLongest reported query: ")) ; Statement: $r3 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nLongest reported query: ") 
(declare-const var468!2 String)
(assert (= var468!2 (str.++ var468!1 "\nLongest reported query: ")))
(define-const var3375 Int (longestQueryTimeMs/-170044346 var57)) ; Statement: $l0 = r2.<com.mysql.cj.log.BaseMetricsHolder: long longestQueryTimeMs> 
(assert true)
(define-const var1092 String (append/-901862667 var1449 var3375)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1449!1 String)
(assert (str.prefixof var1449 var1449!1))
(assert true)
(define-const var445 String (append/672562846 var1092 " ms")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms") 
(declare-const var1092!1 String)
(assert (= var1092!1 (str.++ var1092 " ms")))
(assert true)
(define-const var3191 String (toString/-2075883882 var445)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!2 var3191)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2202!3 String)
(assert (= var2202!3 (str.++ var2202!2 var3191)))
(define-const var2265 String String-init) ; Statement: $r92 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2265)) ; Statement: specialinvoke $r92.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2265!1 String)
(assert (= var2265!1 ""))
(assert true)
(define-const var3705 String (append/672562846 var2265!1 "\nShortest reported query: ")) ; Statement: $r8 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nShortest reported query: ") 
(declare-const var2265!2 String)
(assert (= var2265!2 (str.++ var2265!1 "\nShortest reported query: ")))
(define-const var1910 Int (shortestQueryTimeMs/-170044346 var57)) ; Statement: $l1 = r2.<com.mysql.cj.log.BaseMetricsHolder: long shortestQueryTimeMs> 
(assert true)
(define-const var949 String (append/-901862667 var3705 var1910)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3705!1 String)
(assert (str.prefixof var3705 var3705!1))
(assert true)
(define-const var2670 String (append/672562846 var949 " ms")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms") 
(declare-const var949!1 String)
(assert (= var949!1 (str.++ var949 " ms")))
(assert true)
(define-const var1032 String (toString/-2075883882 var2670)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!3 var1032)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2202!4 String)
(assert (= var2202!4 (str.++ var2202!3 var1032)))
(define-const var2448 String String-init) ; Statement: $r93 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2448)) ; Statement: specialinvoke $r93.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2448!1 String)
(assert (= var2448!1 ""))
(assert true)
(define-const var1641 String (append/672562846 var2448!1 "\nAverage query execution time: ")) ; Statement: $r13 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nAverage query execution time: ") 
(declare-const var2448!2 String)
(assert (= var2448!2 (str.++ var2448!1 "\nAverage query execution time: ")))
(define-const var1592 Float64 (totalQueryTimeMs/-170044346 var57)) ; Statement: $d1 = r2.<com.mysql.cj.log.BaseMetricsHolder: double totalQueryTimeMs> 
(define-const var3316 Int (numberOfQueriesIssued/-170044346 var57)) ; Statement: $l2 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfQueriesIssued> 
(define-const var940 Float64 (cast-from-Int-to-Float64 var3316)) ; Statement: $d0 = (double) $l2 
(define-const var3004 Float64 (fp.div roundNearestTiesToEven var1592 var940)) ; Statement: $d2 = $d1 / $d0 
(assert true)
(define-const var2437 String (append/33611274 var1641 var3004)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var3317 String (append/672562846 var2437 " ms")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms") 
(declare-const var2437!1 String)
(assert (= var2437!1 (str.++ var2437 " ms")))
(assert true)
(define-const var2087 String (toString/-2075883882 var3317)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!4 var2087)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2202!5 String)
(assert (= var2202!5 (str.++ var2202!4 var2087)))
(define-const var1534 String String-init) ; Statement: $r94 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1534)) ; Statement: specialinvoke $r94.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1534!1 String)
(assert (= var1534!1 ""))
(assert true)
(define-const var2366 String (append/672562846 var1534!1 "\nNumber of statements executed: ")) ; Statement: $r18 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of statements executed: ") 
(declare-const var1534!2 String)
(assert (= var1534!2 (str.++ var1534!1 "\nNumber of statements executed: ")))
(define-const var181 Int (numberOfQueriesIssued/-170044346 var57)) ; Statement: $l3 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfQueriesIssued> 
(assert true)
(define-const var2950 String (append/-901862667 var2366 var181)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2366!1 String)
(assert (str.prefixof var2366 var2366!1))
(assert true)
(define-const var2095 String (toString/-2075883882 var2950)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!5 var2095)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2202!6 String)
(assert (= var2202!6 (str.++ var2202!5 var2095)))
(define-const var869 String String-init) ; Statement: $r95 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var869)) ; Statement: specialinvoke $r95.<java.lang.StringBuilder: void <init>()>() 
(declare-const var869!1 String)
(assert (= var869!1 ""))
(assert true)
(define-const var3597 String (append/672562846 var869!1 "\nNumber of result sets created: ")) ; Statement: $r22 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of result sets created: ") 
(declare-const var869!2 String)
(assert (= var869!2 (str.++ var869!1 "\nNumber of result sets created: ")))
(define-const var2656 Int (numberOfResultSetsCreated/-170044346 var57)) ; Statement: $l4 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfResultSetsCreated> 
(assert true)
(define-const var969 String (append/-901862667 var3597 var2656)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3597!1 String)
(assert (str.prefixof var3597 var3597!1))
(assert true)
(define-const var1847 String (toString/-2075883882 var969)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!6 var1847)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2202!7 String)
(assert (= var2202!7 (str.++ var2202!6 var1847)))
(define-const var3325 String String-init) ; Statement: $r96 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3325)) ; Statement: specialinvoke $r96.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3325!1 String)
(assert (= var3325!1 ""))
(assert true)
(define-const var240 String (append/672562846 var3325!1 "\nNumber of statements prepared: ")) ; Statement: $r26 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of statements prepared: ") 
(declare-const var3325!2 String)
(assert (= var3325!2 (str.++ var3325!1 "\nNumber of statements prepared: ")))
(define-const var1532 Int (numberOfPrepares/-170044346 var57)) ; Statement: $l5 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfPrepares> 
(assert true)
(define-const var851 String (append/-901862667 var240 var1532)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l5) 
(declare-const var240!1 String)
(assert (str.prefixof var240 var240!1))
(assert true)
(define-const var2699 String (toString/-2075883882 var851)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!7 var2699)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2202!8 String)
(assert (= var2202!8 (str.++ var2202!7 var2699)))
(define-const var1463 String String-init) ; Statement: $r97 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1463)) ; Statement: specialinvoke $r97.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1463!1 String)
(assert (= var1463!1 ""))
(assert true)
(define-const var2331 String (append/672562846 var1463!1 "\nNumber of prepared statement executions: ")) ; Statement: $r30 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of prepared statement executions: ") 
(declare-const var1463!2 String)
(assert (= var1463!2 (str.++ var1463!1 "\nNumber of prepared statement executions: ")))
(define-const var2593 Int (numberOfPreparedExecutes/-170044346 var57)) ; Statement: $l6 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfPreparedExecutes> 
(assert true)
(define-const var3313 String (append/-901862667 var2331 var2593)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l6) 
(declare-const var2331!1 String)
(assert (str.prefixof var2331 var2331!1))
(assert true)
(define-const var3525 String (toString/-2075883882 var3313)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2202!8 var3525)) ; Statement: virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var2202!9 String)
(assert (= var2202!9 (str.++ var2202!8 var3525)))
(define-const var3016 (Array Int Int) (perfMetricsHistBreakpoints/-170044346 var57)) ; Statement: $r33 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] perfMetricsHistBreakpoints> 
 ; Statement: if $r33 == null goto $r89 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] numTablesMetricsHistBreakpoints> 
(assert (= var3016 null-__Array__Int__Int__)) ; Cond: $r33 == null 
(define-const var1429 (Array Int Int) (numTablesMetricsHistBreakpoints/-170044346 var57)) ; Statement: $r89 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] numTablesMetricsHistBreakpoints> 
 ; Statement: if $r89 == null goto interfaceinvoke r34.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r90) 
(assert (= var1429 null-__Array__Int__Int__)) ; Cond: $r89 == null 
;(assert (var1667_logInfo/-784859844 var3929 (cast-from-String-to-var3867 var2202!9))) ; Statement: interfaceinvoke r34.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r90) 

(declare-const var3929!1 var1667)
(declare-const var2202!10 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), longestQueryTimeMs/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), shortestQueryTimeMs/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), totalQueryTimeMs/-170044346=([com.mysql.cj.log.BaseMetricsHolder], double), numberOfQueriesIssued/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), cast-from-Int-to-Float64=([long], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), numberOfResultSetsCreated/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), numberOfPrepares/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), numberOfPreparedExecutes/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long), perfMetricsHistBreakpoints/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long[]), numTablesMetricsHistBreakpoints/-170044346=([com.mysql.cj.log.BaseMetricsHolder], long[]), var1667_logInfo/-784859844=([com.mysql.cj.log.Log, java.lang.Object], void), cast-from-String-to-var3867=([java.lang.StringBuilder], java.lang.Object)}
; {var1125=com.mysql.cj.log.BaseMetricsHolder, var57=r2, var1667=com.mysql.cj.log.Log, var3929=r34, var2202=$r90, var3186=256, var468=$r91, var1449=$r3, var3375=$l0, var1092=$r4, var445=$r5, var3191=$r6, var2265=$r92, var3705=$r8, var1910=$l1, var949=$r9, var2670=$r10, var1032=$r11, var2448=$r93, var1641=$r13, var1592=$d1, var3316=$l2, var940=$d0, var3004=$d2, var2437=$r14, var3317=$r15, var2087=$r16, var1534=$r94, var2366=$r18, var181=$l3, var2950=$r19, var2095=$r20, var869=$r95, var3597=$r22, var2656=$l4, var969=$r23, var1847=$r24, var3325=$r96, var240=$r26, var1532=$l5, var851=$r27, var2699=$r28, var1463=$r97, var2331=$r30, var2593=$l6, var3313=$r31, var3525=$r32, var3016=$r33, var1429=$r89, var3867=java.lang.Object}
; {com.mysql.cj.log.BaseMetricsHolder=var1125, r2=var57, com.mysql.cj.log.Log=var1667, r34=var3929, $r90=var2202, 256=var3186, $r91=var468, $r3=var1449, $l0=var3375, $r4=var1092, $r5=var445, $r6=var3191, $r92=var2265, $r8=var3705, $l1=var1910, $r9=var949, $r10=var2670, $r11=var1032, $r93=var2448, $r13=var1641, $d1=var1592, $l2=var3316, $d0=var940, $d2=var3004, $r14=var2437, $r15=var3317, $r16=var2087, $r94=var1534, $r18=var2366, $l3=var181, $r19=var2950, $r20=var2095, $r95=var869, $r22=var3597, $l4=var2656, $r23=var969, $r24=var1847, $r96=var3325, $r26=var240, $l5=var1532, $r27=var851, $r28=var2699, $r97=var1463, $r30=var2331, $l6=var2593, $r31=var3313, $r32=var3525, $r33=var3016, $r89=var1429, java.lang.Object=var3867}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 18,"<java.lang.StringBuilder: void <init>()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1}
;stmts r2 := @this: com.mysql.cj.log.BaseMetricsHolder;	r34 := @parameter0: com.mysql.cj.log.Log;	$r90 = new java.lang.StringBuilder;	specialinvoke $r90.<java.lang.StringBuilder: void <init>(int)>(256);	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("** Performance Metrics Report **\n");	$r91 = new java.lang.StringBuilder;	specialinvoke $r91.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r91.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nLongest reported query: ");	$l0 = r2.<com.mysql.cj.log.BaseMetricsHolder: long longestQueryTimeMs>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r92 = new java.lang.StringBuilder;	specialinvoke $r92.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r92.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nShortest reported query: ");	$l1 = r2.<com.mysql.cj.log.BaseMetricsHolder: long shortestQueryTimeMs>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r93 = new java.lang.StringBuilder;	specialinvoke $r93.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r93.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nAverage query execution time: ");	$d1 = r2.<com.mysql.cj.log.BaseMetricsHolder: double totalQueryTimeMs>;	$l2 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfQueriesIssued>;	$d0 = (double) $l2;	$d2 = $d1 / $d0;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ms");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r94 = new java.lang.StringBuilder;	specialinvoke $r94.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r94.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of statements executed: ");	$l3 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfQueriesIssued>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r95 = new java.lang.StringBuilder;	specialinvoke $r95.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r95.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of result sets created: ");	$l4 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfResultSetsCreated>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r96 = new java.lang.StringBuilder;	specialinvoke $r96.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r96.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of statements prepared: ");	$l5 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfPrepares>;	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l5);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r97 = new java.lang.StringBuilder;	specialinvoke $r97.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r97.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nNumber of prepared statement executions: ");	$l6 = r2.<com.mysql.cj.log.BaseMetricsHolder: long numberOfPreparedExecutes>;	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l6);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r90.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r33 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] perfMetricsHistBreakpoints>;	if $r33 == null goto $r89 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] numTablesMetricsHistBreakpoints>;	$r89 = r2.<com.mysql.cj.log.BaseMetricsHolder: long[] numTablesMetricsHistBreakpoints>;	if $r89 == null goto interfaceinvoke r34.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r90);	interfaceinvoke r34.<com.mysql.cj.log.Log: void logInfo(java.lang.Object)>($r90);	return
;block_num 3