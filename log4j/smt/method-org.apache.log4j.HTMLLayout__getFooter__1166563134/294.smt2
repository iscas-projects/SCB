(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1994 0)
(declare-sort var2331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1994 var1994)
(declare-const var2331-LINE_SEP String)
(declare-const var3665 var1994) ; Statement: r12 := @this: org.apache.log4j.HTMLLayout 
(assert (not (= var3665 null-var1994)))
(define-const var1324 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1324)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1324!1 String)
(define-const var520 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var520)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var520!1 String)
(assert true)
(define-const var2581 String (append/1560614132 var520!1 "</table>")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</table>") 
(declare-const var520!2 String)
(assert (str.prefixof var520!1 var520!2))
(define-const var2043 String var2331-LINE_SEP) ; Statement: $r2 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var1189 String (append/1560614132 var2581 var2043)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2581!1 String)
(assert (str.prefixof var2581 var2581!1))
(assert true)
(define-const var1114 String (toString/-222306083 var1189)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1324!1 var1114)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1324!2 String)
(assert (str.prefixof var1324!1 var1324!2))
(define-const var3795 String String-init) ; Statement: $r6 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3795)) ; Statement: specialinvoke $r6.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3795!1 String)
(assert true)
(define-const var3956 String (append/1560614132 var3795!1 "<br>")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<br>") 
(declare-const var3795!2 String)
(assert (str.prefixof var3795!1 var3795!2))
(define-const var3985 String var2331-LINE_SEP) ; Statement: $r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP> 
(assert true)
(define-const var2954 String (append/1560614132 var3956 var3985)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3956!1 String)
(assert (str.prefixof var3956 var3956!1))
(assert true)
(define-const var111 String (toString/-222306083 var2954)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1324!2 var111)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10) 
(declare-const var1324!3 String)
(assert (str.prefixof var1324!2 var1324!3))
(assert true)
;(assert (append/1560614132 var1324!3 "</body></html>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</body></html>") 
(declare-const var1324!4 String)
(assert (str.prefixof var1324!3 var1324!4))
(assert true)
(define-const var3297 String (toString/-222306083 var1324!4)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1994=org.apache.log4j.HTMLLayout, var3665=r12, var1324=$r0, var520=$r1, var2581=$r3, var2331=org.apache.log4j.Layout, var2043=$r2, var1189=$r4, var1114=$r5, var3795=$r6, var3956=$r8, var3985=$r7, var2954=$r9, var111=$r10, var3297=$r11}
; {org.apache.log4j.HTMLLayout=var1994, r12=var3665, $r0=var1324, $r1=var520, $r3=var2581, org.apache.log4j.Layout=var2331, $r2=var2043, $r4=var1189, $r5=var1114, $r6=var3795, $r8=var3956, $r7=var3985, $r9=var2954, $r10=var111, $r11=var3297}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r12 := @this: org.apache.log4j.HTMLLayout;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</table>");	$r2 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r6 = new java.lang.StringBuffer;	specialinvoke $r6.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<br>");	$r7 = <org.apache.log4j.Layout: java.lang.String LINE_SEP>;	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r10);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</body></html>");	$r11 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r11
;block_num 1