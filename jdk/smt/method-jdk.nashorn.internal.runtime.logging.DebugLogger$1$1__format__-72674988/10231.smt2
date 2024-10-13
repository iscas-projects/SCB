(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort var3890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLoggerName/-978729513 (var3890) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/263890305 (var3890) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1856 var1856)
(declare-const null-var3890 var3890)
(declare-const var540 var1856) ; Statement: r9 := @this: jdk.nashorn.internal.runtime.logging.DebugLogger$1$1 
(assert (not (= var540 null-var1856)))
(declare-const var1114 var3890) ; Statement: r1 := @parameter0: java.util.logging.LogRecord 
(assert (not (= var1114 null-var3890)))
(define-const var3762 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3762)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3762!1 String)
(assert (= var3762!1 ""))
(assert true)
(define-const var162 String (append/-1166366385 var3762!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3762!2 String)
(assert (str.prefixof var3762!1 var3762!2))
(assert true)
(define-const var1821 String (getLoggerName/-978729513 var1114)) ; Statement: $r2 = virtualinvoke r1.<java.util.logging.LogRecord: java.lang.String getLoggerName()>() 
(assert true)
(define-const var1473 String (append/672562846 var162 var1821)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var162!1 String)
(assert (= var162!1 (str.++ var162 var1821)))
(assert true)
(define-const var2737 String (append/672562846 var1473 "] ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1473!1 String)
(assert (= var1473!1 (str.++ var1473 "] ")))
(assert true)
(define-const var256 String (getMessage/263890305 var1114)) ; Statement: $r5 = virtualinvoke r1.<java.util.logging.LogRecord: java.lang.String getMessage()>() 
(assert true)
(define-const var2068 String (append/672562846 var2737 var256)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2737!1 String)
(assert (= var2737!1 (str.++ var2737 var256)))
(assert true)
;(assert (append/-1166366385 var2068 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2068!1 String)
(assert (str.prefixof var2068 var2068!1))
(assert true)
(define-const var17 String (toString/-2075883882 var3762!2)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLoggerName/-978729513=([java.util.logging.LogRecord], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/263890305=([java.util.logging.LogRecord], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1856=jdk.nashorn.internal.runtime.logging.DebugLogger$1$1, var540=r9, var3890=java.util.logging.LogRecord, var1114=r1, var3762=$r0, var162=$r3, var1821=$r2, var1473=$r4, var2737=$r6, var256=$r5, var2068=$r7, var17=$r8}
; {jdk.nashorn.internal.runtime.logging.DebugLogger$1$1=var1856, r9=var540, java.util.logging.LogRecord=var3890, r1=var1114, $r0=var3762, $r3=var162, $r2=var1821, $r4=var1473, $r6=var2737, $r5=var256, $r7=var2068, $r8=var17}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: jdk.nashorn.internal.runtime.logging.DebugLogger$1$1;	r1 := @parameter0: java.util.logging.LogRecord;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = virtualinvoke r1.<java.util.logging.LogRecord: java.lang.String getLoggerName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r5 = virtualinvoke r1.<java.util.logging.LogRecord: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1