(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2028 0)
(declare-sort var2135 0)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3368_warn/241933037 (String) void)
(declare-const null-var2028 var2028)
(declare-const null-String String)
(declare-const var1081 var2028) ; Statement: r6 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var1081 null-var2028)))
(declare-const var45 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var45 null-String)))
(define-const var163 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var163)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var163!1 String)
(assert true)
(define-const var322 String (append/1560614132 var163!1 "[")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[") 
(declare-const var163!2 String)
(assert (str.prefixof var163!1 var163!2))
(assert true)
(define-const var422 String (append/1560614132 var322 var45)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var322!1 String)
(assert (str.prefixof var322 var322!1))
(assert true)
(define-const var1279 String (append/1560614132 var422 "] should be System.out or System.err.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] should be System.out or System.err.") 
(declare-const var422!1 String)
(assert (str.prefixof var422 var422!1))
(assert true)
(define-const var3364 String (toString/-222306083 var1279)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3368_warn/241933037 var3364)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r5) 

(declare-const var3364!1 String)
;(assert (var3368_warn/241933037 "Using previously set target, System.out by default.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>("Using previously set target, System.out by default.") 

(declare-const var13 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3368_warn/241933037=([java.lang.String], void)}
; {var2028=org.apache.log4j.ConsoleAppender, var1081=r6, var45=r1, var2135=null_type, var163=$r0, var322=$r2, var422=$r3, var1279=$r4, var3364=$r5, var3368=org.apache.log4j.helpers.LogLog, var13="Using previously set target, System.out by default."}
; {org.apache.log4j.ConsoleAppender=var2028, r6=var1081, r1=var45, null_type=var2135, $r0=var163, $r2=var322, $r3=var422, $r4=var1279, $r5=var3364, org.apache.log4j.helpers.LogLog=var3368, "Using previously set target, System.out by default."=var13}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.log4j.ConsoleAppender;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("[");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] should be System.out or System.err.");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r5);	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>("Using previously set target, System.out by default.");	return
;block_num 1