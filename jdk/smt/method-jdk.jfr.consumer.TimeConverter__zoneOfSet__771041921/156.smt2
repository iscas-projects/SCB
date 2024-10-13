(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1398 0)
(declare-sort var453 0)
(declare-sort var1221 0)
(declare-sort var2935 0)
(declare-sort var3559 0)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3559_log/979489950 (var1221 var2935 String) void)
(declare-const null-var1398 var1398)
(declare-const null-Int Int)
(declare-const null-var453 var453)
(declare-const var1221-JFR_SYSTEM_PARSER var1221)
(declare-const var2935-INFO var2935)
(declare-const var466-UTC var466)
(declare-const var1173 var1398) ; Statement: r9 := @this: jdk.jfr.consumer.TimeConverter 
(assert (not (= var1173 null-var1398)))
(declare-const var2187 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2187 null-Int)))
(define-const var473 Int (div var2187 1000)) ; Statement: $i1 = i0 / 1000 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var634 var453) ; Statement: $r1 := @caughtexception 
(assert (not (= var634 null-var453)))
(define-const var1971 var1221 var1221-JFR_SYSTEM_PARSER) ; Statement: $r3 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_PARSER> 
(define-const var2090 var2935 var2935-INFO) ; Statement: $r4 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO> 
(define-const var3343 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3343)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3343!1 String)
(assert (= var3343!1 ""))
(assert true)
(define-const var2443 String (append/672562846 var3343!1 "Could not create ZoneOffset from raw offset ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create ZoneOffset from raw offset ") 
(declare-const var3343!2 String)
(assert (= var3343!2 (str.++ var3343!1 "Could not create ZoneOffset from raw offset ")))
(assert true)
(define-const var3981 String (append/-1001720160 var2443 var2187)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2443!1 String)
(assert (str.prefixof var2443 var2443!1))
(assert true)
(define-const var1612 String (toString/-2075883882 var3981)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3559_log/979489950 var1971 var2090 var1612)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r3, $r4, $r7) 

(declare-const var1971!1 var1221)
(declare-const var2090!1 var2935)
(declare-const var1612!1 String)
(define-const var3765 var466 var466-UTC) ; Statement: $r8 = <java.time.ZoneOffset: java.time.ZoneOffset UTC> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3559_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var1398=jdk.jfr.consumer.TimeConverter, var1173=r9, var2187=i0, var473=$i1, var453=java.time.DateTimeException, var634=$r1, var1221=jdk.jfr.internal.LogTag, var1971=$r3, var2935=jdk.jfr.internal.LogLevel, var2090=$r4, var3343=$r2, var2443=$r5, var3981=$r6, var1612=$r7, var3559=jdk.jfr.internal.Logger, var466=java.time.ZoneOffset, var3765=$r8}
; {jdk.jfr.consumer.TimeConverter=var1398, r9=var1173, i0=var2187, $i1=var473, java.time.DateTimeException=var453, $r1=var634, jdk.jfr.internal.LogTag=var1221, $r3=var1971, jdk.jfr.internal.LogLevel=var2935, $r4=var2090, $r2=var3343, $r5=var2443, $r6=var3981, $r7=var1612, jdk.jfr.internal.Logger=var3559, java.time.ZoneOffset=var466, $r8=var3765}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: jdk.jfr.consumer.TimeConverter;	i0 := @parameter0: int;	$i1 = i0 / 1000;	$r1 := @caughtexception;	$r3 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM_PARSER>;	$r4 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel INFO>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create ZoneOffset from raw offset ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r3, $r4, $r7);	$r8 = <java.time.ZoneOffset: java.time.ZoneOffset UTC>;	return $r8
;block_num 2