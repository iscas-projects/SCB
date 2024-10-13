(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var2406 0)
(declare-sort var3708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _level/919102232 (var2929) var2406)
(declare-fun append/-143899486 (String var3708) String)
(declare-fun cast-from-var2406-to-var3708 (var2406) var3708)
(declare-fun _message/919102232 (var2929) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2929 var2929)
(declare-const var1070 var2929) ; Statement: r2 := @this: org.apache.log4j.lf5.LogRecord 
(assert (not (= var1070 null-var2929)))
(define-const var811 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var811)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var811!1 String)
(define-const var3307 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3307)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3307!1 String)
(assert true)
(define-const var2514 String (append/1560614132 var3307!1 "LogRecord: [")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecord: [") 
(declare-const var3307!2 String)
(assert (str.prefixof var3307!1 var3307!2))
(define-const var443 var2406 (_level/919102232 var1070)) ; Statement: $r3 = r2.<org.apache.log4j.lf5.LogRecord: org.apache.log4j.lf5.LogLevel _level> 
(assert true)
(define-const var2434 String (append/-143899486 var2514 (cast-from-var2406-to-var3708 var443))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r3) 
(assert true)
(define-const var575 String (append/1560614132 var2434 ", ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2434!1 String)
(assert (str.prefixof var2434 var2434!1))
(define-const var2870 String (_message/919102232 var1070)) ; Statement: $r6 = r2.<org.apache.log4j.lf5.LogRecord: java.lang.String _message> 
(assert true)
(define-const var2220 String (append/1560614132 var575 var2870)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var575!1 String)
(assert (str.prefixof var575 var575!1))
(assert true)
(define-const var2550 String (append/1560614132 var2220 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var2220!1 String)
(assert (str.prefixof var2220 var2220!1))
(assert true)
(define-const var3535 String (toString/-222306083 var2550)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var811!1 var3535)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10) 
(declare-const var811!2 String)
(assert (str.prefixof var811!1 var811!2))
(assert true)
(define-const var2141 String (toString/-222306083 var811!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), _level/919102232=([org.apache.log4j.lf5.LogRecord], org.apache.log4j.lf5.LogLevel), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2406-to-var3708=([org.apache.log4j.lf5.LogLevel], java.lang.Object), _message/919102232=([org.apache.log4j.lf5.LogRecord], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2929=org.apache.log4j.lf5.LogRecord, var1070=r2, var811=$r0, var3307=$r1, var2514=$r4, var2406=org.apache.log4j.lf5.LogLevel, var443=$r3, var3708=java.lang.Object, var2434=$r5, var575=$r7, var2870=$r6, var2220=$r8, var2550=$r9, var3535=$r10, var2141=$r11}
; {org.apache.log4j.lf5.LogRecord=var2929, r2=var1070, $r0=var811, $r1=var3307, $r4=var2514, org.apache.log4j.lf5.LogLevel=var2406, $r3=var443, java.lang.Object=var3708, $r5=var2434, $r7=var575, $r6=var2870, $r8=var2220, $r9=var2550, $r10=var3535, $r11=var2141}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r2 := @this: org.apache.log4j.lf5.LogRecord;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LogRecord: [");	$r3 = r2.<org.apache.log4j.lf5.LogRecord: org.apache.log4j.lf5.LogLevel _level>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r6 = r2.<org.apache.log4j.lf5.LogRecord: java.lang.String _message>;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10);	$r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r11
;block_num 1