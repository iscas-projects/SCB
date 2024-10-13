(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2776 0)
(declare-sort var170 0)
(declare-sort var2053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2053_debug/381960894 (String) void)
(declare-const null-String String)
(declare-const null-var170 var170)
(declare-const var2819 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2819 null-String)))
(declare-const var2297 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2297 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3083 var170) ; Statement: $r3 := @caughtexception 
(assert (not (= var3083 null-var170)))
(define-const var962 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var962)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var962!1 String)
(assert true)
(define-const var3069 String (append/1560614132 var962!1 "Was not allowed to read system property \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Was not allowed to read system property \"") 
(declare-const var962!2 String)
(assert (str.prefixof var962!1 var962!2))
(assert true)
(define-const var669 String (append/1560614132 var3069 var2819)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var3069!1 String)
(assert (str.prefixof var3069 var3069!1))
(assert true)
(define-const var1999 String (append/1560614132 var669 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var669!1 String)
(assert (str.prefixof var669 var669!1))
(assert true)
(define-const var297 String (toString/-222306083 var1999)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2053_debug/381960894 var297)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var297!1 String)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2053_debug/381960894=([java.lang.String], void)}
; {var2819=r0, var2776=null_type, var2297=r1, var170=java.lang.Throwable, var3083=$r3, var962=$r4, var3069=$r5, var669=$r6, var1999=$r7, var297=$r8, var2053=org.apache.log4j.helpers.LogLog}
; {r0=var2819, null_type=var2776, r1=var2297, java.lang.Throwable=var170, $r3=var3083, $r4=var962, $r5=var3069, $r6=var669, $r7=var1999, $r8=var297, org.apache.log4j.helpers.LogLog=var2053}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Was not allowed to read system property \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	return r1
;block_num 2