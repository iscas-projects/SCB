(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1865 0)
(declare-sort var3603 0)
(declare-sort var3475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closed/-1806528418 (var1865) Bool)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var1865) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3603_debug/381960894 (String) void)
(declare-fun close/-159156938 (var3475) void)
(declare-fun cast-from-var1865-to-var3475 (var1865) var3475)
(declare-const null-var1865 var1865)
(declare-const var945 var1865) ; Statement: r0 := @this: org.apache.log4j.AppenderSkeleton 
(assert (not (= var945 null-var1865)))
(define-const var451 Bool (closed/-1806528418 var945)) ; Statement: $z0 = r0.<org.apache.log4j.AppenderSkeleton: boolean closed> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuffer 
(assert (= (ite var451 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3671 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3671)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3671!1 String)
(assert true)
(define-const var450 String (append/1560614132 var3671!1 "Finalizing appender named [")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Finalizing appender named [") 
(declare-const var3671!2 String)
(assert (str.prefixof var3671!1 var3671!2))
(define-const var973 String (name/-1806528418 var945)) ; Statement: $r2 = r0.<org.apache.log4j.AppenderSkeleton: java.lang.String name> 
(assert true)
(define-const var3618 String (append/1560614132 var450 var973)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var450!1 String)
(assert (str.prefixof var450 var450!1))
(assert true)
(define-const var426 String (append/1560614132 var3618 "].")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3618!1 String)
(assert (str.prefixof var3618 var3618!1))
(assert true)
(define-const var2070 String (toString/-222306083 var426)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3603_debug/381960894 var2070)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var2070!1 String)
(assert true)
;(assert (close/-159156938 (cast-from-var1865-to-var3475 var945))) ; Statement: virtualinvoke r0.<org.apache.log4j.AppenderSkeleton: void close()>() 

(declare-const var945!1 var1865)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {closed/-1806528418=([org.apache.log4j.AppenderSkeleton], boolean), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3603_debug/381960894=([java.lang.String], void), close/-159156938=([org.apache.log4j.Appender], void), cast-from-var1865-to-var3475=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.Appender)}
; {var1865=org.apache.log4j.AppenderSkeleton, var945=r0, var451=$z0, var3671=$r1, var450=$r3, var973=$r2, var3618=$r4, var426=$r5, var2070=$r6, var3603=org.apache.log4j.helpers.LogLog, var3475=org.apache.log4j.Appender}
; {org.apache.log4j.AppenderSkeleton=var1865, r0=var945, $z0=var451, $r1=var3671, $r3=var450, $r2=var973, $r4=var3618, $r5=var426, $r6=var2070, org.apache.log4j.helpers.LogLog=var3603, org.apache.log4j.Appender=var3475}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.AppenderSkeleton;	$z0 = r0.<org.apache.log4j.AppenderSkeleton: boolean closed>;	if $z0 == 0 goto $r1 = new java.lang.StringBuffer;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Finalizing appender named [");	$r2 = r0.<org.apache.log4j.AppenderSkeleton: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	virtualinvoke r0.<org.apache.log4j.AppenderSkeleton: void close()>();	return
;block_num 2