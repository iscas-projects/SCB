(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3791 0)
(declare-sort var3416 0)
(declare-sort var1012 0)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1012_toLevel/-200422899 (String var1012) var1012)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1932_warn/241933037 (String) void)
(declare-const null-var3791 var3791)
(declare-const null-String String)
(declare-const null-var1012 var1012)
(declare-const var1686 var3791) ; Statement: r7 := @this: org.apache.log4j.Hierarchy 
(assert (not (= var1686 null-var3791)))
(declare-const var295 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var295 null-String)))
(define-const var2365 var1012 (var1012_toLevel/-200422899 var295 null-var1012)) ; Statement: r1 = staticinvoke <org.apache.log4j.Level: org.apache.log4j.Level toLevel(java.lang.String,org.apache.log4j.Level)>(r0, null) 
 ; Statement: if r1 == null goto $r2 = new java.lang.StringBuffer 
(assert (= var2365 null-var1012)) ; Cond: r1 == null 
(define-const var653 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var653)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var653!1 String)
(assert true)
(define-const var1898 String (append/1560614132 var653!1 "Could not convert [")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not convert [") 
(declare-const var653!2 String)
(assert (str.prefixof var653!1 var653!2))
(assert true)
(define-const var84 String (append/1560614132 var1898 var295)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var3140 String (append/1560614132 var84 "] to Level.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to Level.") 
(declare-const var84!1 String)
(assert (str.prefixof var84 var84!1))
(assert true)
(define-const var1155 String (toString/-222306083 var3140)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1932_warn/241933037 var1155)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r6) 

(declare-const var1155!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1012_toLevel/-200422899=([java.lang.String, org.apache.log4j.Level], org.apache.log4j.Level), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1932_warn/241933037=([java.lang.String], void)}
; {var3791=org.apache.log4j.Hierarchy, var1686=r7, var295=r0, var3416=null_type, var1012=org.apache.log4j.Level, var2365=r1, var653=$r2, var1898=$r3, var84=$r4, var3140=$r5, var1155=$r6, var1932=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.Hierarchy=var3791, r7=var1686, r0=var295, null_type=var3416, org.apache.log4j.Level=var1012, r1=var2365, $r2=var653, $r3=var1898, $r4=var84, $r5=var3140, $r6=var1155, org.apache.log4j.helpers.LogLog=var1932}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.Hierarchy;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.apache.log4j.Level: org.apache.log4j.Level toLevel(java.lang.String,org.apache.log4j.Level)>(r0, null);	if r1 == null goto $r2 = new java.lang.StringBuffer;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not convert [");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to Level.");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String)>($r6);	return
;block_num 3