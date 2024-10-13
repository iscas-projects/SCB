(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3181 0)
(declare-sort var2203 0)
(declare-sort var1101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1101_logErrorInLogger/-1144496247 (String var2203) void)
(declare-const null-String String)
(declare-const null-var2203 var2203)
(declare-const var1824 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1824 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1161 var2203) ; Statement: $r4 := @caughtexception 
(assert (not (= var1161 null-var2203)))
(define-const var2826 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2826)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2826!1 String)
(assert (= var2826!1 ""))
(assert true)
(define-const var577 String (append/672562846 var2826!1 "Failed to read system property \u0022")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to read system property \"") 
(declare-const var2826!2 String)
(assert (= var2826!2 (str.++ var2826!1 "Failed to read system property \u0022")))
(assert true)
(define-const var3037 String (append/672562846 var577 var1824)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var577!1 String)
(assert (= var577!1 (str.++ var577 var1824)))
(assert true)
(define-const var502 String (append/672562846 var3037 "\u0022.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 "\u0022.")))
(assert true)
(define-const var482 String (toString/-2075883882 var502)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1101_logErrorInLogger/-1144496247 var482 var1161)) ; Statement: staticinvoke <freemarker.log.Logger: void logErrorInLogger(java.lang.String,java.lang.Throwable)>($r9, $r4) 

(declare-const var482!1 String)
(declare-const var1161!1 var2203)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1101_logErrorInLogger/-1144496247=([java.lang.String, java.lang.Throwable], void)}
; {var1824=r1, var3181=null_type, var2203=java.lang.Throwable, var1161=$r4, var2826=$r5, var577=$r6, var3037=$r7, var502=$r8, var482=$r9, var1101=freemarker.log.Logger}
; {r1=var1824, null_type=var3181, java.lang.Throwable=var2203, $r4=var1161, $r5=var2826, $r6=var577, $r7=var3037, $r8=var502, $r9=var482, freemarker.log.Logger=var1101}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to read system property \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <freemarker.log.Logger: void logErrorInLogger(java.lang.String,java.lang.Throwable)>($r9, $r4);	return null
;block_num 2