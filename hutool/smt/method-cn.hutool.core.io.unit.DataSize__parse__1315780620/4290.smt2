(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3477 0)
(declare-sort var3815 0)
(declare-sort var287 0)
(declare-sort var1328 0)
(declare-sort var3649 0)
(declare-sort var1136 0)
(declare-sort var184 0)
(declare-sort var1079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3815-init () (Array Int var3815))
(declare-fun var287_notNull/515149844 (var3815 String (Array Int var3815)) var3815)
(declare-fun cast-from-String-to-var3815 (String) var3815)
(declare-fun var184-init () var184)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3815) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var184 String var1079) void)
(declare-fun cast-from-var1136-to-var1079 (var1136) var1079)
(declare-const null-String String)
(declare-const null-var3477 var3477)
(declare-const var3649-PATTERN var1328)
(declare-const null-var1136 var1136)
(declare-const var3856 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3856 null-String)))
(declare-const var2895 var3477) ; Statement: r5 := @parameter1: cn.hutool.core.io.unit.DataUnit 
(assert (not (= var2895 null-var3477)))
(define-const var3605 (Array Int var3815) arr-var3815-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var287_notNull/515149844 (cast-from-String-to-var3815 var3856) "Text must not be null" var3605)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Text must not be null", $r1) 

(declare-const var3856!1 String)
(declare-const var194 String)
(declare-const var3605!1 (Array Int var3815))
(define-const var3564 var1328 var3649-PATTERN) ; Statement: $r2 = <cn.hutool.core.io.unit.DataSize: java.util.regex.Pattern PATTERN> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var517 var1136) ; Statement: $r11 := @caughtexception 
(assert (not (= var517 null-var1136)))
(define-const var3256 var184 var184-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var1440 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1440)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1440!1 String)
(assert (= var1440!1 ""))
(assert true)
(define-const var1468 String (append/672562846 var1440!1 "\u0027")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1440!2 String)
(assert (= var1440!2 (str.++ var1440!1 "\u0027")))
(assert true)
(define-const var806 String (append/-1031950772 var1468 (cast-from-String-to-var3815 var3856!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1468!1 String)
(assert (str.prefixof var1468 var1468!1))
(assert true)
(define-const var1038 String (append/672562846 var806 "\u0027 is not a valid data size")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a valid data size") 
(declare-const var806!1 String)
(assert (= var806!1 (str.++ var806 "\u0027 is not a valid data size")))
(assert true)
(define-const var1380 String (toString/-2075883882 var1038)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var3256 var1380 (cast-from-var1136-to-var1079 var517))) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var3256!1 var184)
(declare-const var1380!1 String)
(declare-const var517!1 var1136)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3815-init=([], java.lang.Object[]), var287_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var3815=([java.lang.CharSequence], java.lang.Object), var184-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1136-to-var1079=([java.lang.Exception], java.lang.Throwable)}
; {var3856=r0, var3477=cn.hutool.core.io.unit.DataUnit, var2895=r5, var3815=java.lang.Object, var3605=$r1, var287=cn.hutool.core.lang.Assert, var194="Text must not be null", var1328=java.util.regex.Pattern, var3649=cn.hutool.core.io.unit.DataSize, var3564=$r2, var1136=java.lang.Exception, var517=$r11, var184=java.lang.IllegalArgumentException, var3256=$r12, var1440=$r13, var1468=$r14, var806=$r15, var1038=$r16, var1380=$r17, var1079=java.lang.Throwable}
; {r0=var3856, cn.hutool.core.io.unit.DataUnit=var3477, r5=var2895, java.lang.Object=var3815, $r1=var3605, cn.hutool.core.lang.Assert=var287, "Text must not be null"=var194, java.util.regex.Pattern=var1328, cn.hutool.core.io.unit.DataSize=var3649, $r2=var3564, java.lang.Exception=var1136, $r11=var517, java.lang.IllegalArgumentException=var184, $r12=var3256, $r13=var1440, $r14=var1468, $r15=var806, $r16=var1038, $r17=var1380, java.lang.Throwable=var1079}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r5 := @parameter1: cn.hutool.core.io.unit.DataUnit;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "Text must not be null", $r1);	$r2 = <cn.hutool.core.io.unit.DataSize: java.util.regex.Pattern PATTERN>;	$r11 := @caughtexception;	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a valid data size");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11);	throw $r12
;block_num 2