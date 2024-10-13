(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2032 0)
(declare-sort var827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun min/-904236442 (var2032) Int)
(declare-fun append/1845021834 (String Int) String)
(declare-fun max/-904236442 (var2032) Int)
(declare-fun leftAlign/-904236442 (var2032) Bool)
(declare-fun append/-1166642301 (String Bool) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var827_debug/381960894 (String) void)
(declare-const null-var2032 var2032)
(declare-const var996 var2032) ; Statement: r1 := @this: org.apache.log4j.helpers.FormattingInfo 
(assert (not (= var996 null-var2032)))
(define-const var109 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var109)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var109!1 String)
(assert true)
(define-const var2119 String (append/1560614132 var109!1 "min=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("min=") 
(declare-const var109!2 String)
(assert (str.prefixof var109!1 var109!2))
(define-const var3817 Int (min/-904236442 var996)) ; Statement: $i0 = r1.<org.apache.log4j.helpers.FormattingInfo: int min> 
(assert true)
(define-const var1017 String (append/1845021834 var2119 var3817)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var2676 String (append/1560614132 var1017 ", max=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", max=") 
(declare-const var1017!1 String)
(assert (str.prefixof var1017 var1017!1))
(define-const var1712 Int (max/-904236442 var996)) ; Statement: $i1 = r1.<org.apache.log4j.helpers.FormattingInfo: int max> 
(assert true)
(define-const var448 String (append/1845021834 var2676 var1712)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var3547 String (append/1560614132 var448 ", leftAlign=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", leftAlign=") 
(declare-const var448!1 String)
(assert (str.prefixof var448 var448!1))
(define-const var3484 Bool (leftAlign/-904236442 var996)) ; Statement: $z0 = r1.<org.apache.log4j.helpers.FormattingInfo: boolean leftAlign> 
(assert true)
(define-const var802 String (append/-1166642301 var3547 var3484)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>($z0) 
(assert true)
(define-const var2404 String (toString/-222306083 var802)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var827_debug/381960894 var2404)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2404!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), min/-904236442=([org.apache.log4j.helpers.FormattingInfo], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), max/-904236442=([org.apache.log4j.helpers.FormattingInfo], int), leftAlign/-904236442=([org.apache.log4j.helpers.FormattingInfo], boolean), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var827_debug/381960894=([java.lang.String], void)}
; {var2032=org.apache.log4j.helpers.FormattingInfo, var996=r1, var109=$r0, var2119=$r2, var3817=$i0, var1017=$r3, var2676=$r4, var1712=$i1, var448=$r5, var3547=$r6, var3484=$z0, var802=$r7, var2404=$r8, var827=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.helpers.FormattingInfo=var2032, r1=var996, $r0=var109, $r2=var2119, $i0=var3817, $r3=var1017, $r4=var2676, $i1=var1712, $r5=var448, $r6=var3547, $z0=var3484, $r7=var802, $r8=var2404, org.apache.log4j.helpers.LogLog=var827}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.FormattingInfo;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("min=");	$i0 = r1.<org.apache.log4j.helpers.FormattingInfo: int min>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", max=");	$i1 = r1.<org.apache.log4j.helpers.FormattingInfo: int max>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", leftAlign=");	$z0 = r1.<org.apache.log4j.helpers.FormattingInfo: boolean leftAlign>;	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>($z0);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	return
;block_num 1