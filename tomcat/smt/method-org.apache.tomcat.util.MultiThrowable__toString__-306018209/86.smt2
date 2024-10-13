(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort var1417 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1112415476 (var1417) String)
(declare-fun cast-from-var178-to-var1417 (var178) var1417)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun size/-79383230 (var178) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun throwables/536486911 (var178) var1271)
(declare-fun var1271_iterator/-912451715 (var1271) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var178 var178)
(declare-const var2580 var178) ; Statement: r1 := @this: org.apache.tomcat.util.MultiThrowable 
(assert (not (= var2580 null-var178)))
(define-const var2698 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2698)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2698!1 String)
(assert (= var2698!1 ""))
(assert true)
(define-const var95 String (toString/-1112415476 (cast-from-var178-to-var1417 var2580))) ; Statement: $r2 = specialinvoke r1.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2698!1 var95)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2698!2 String)
(assert (= var2698!2 (str.++ var2698!1 var95)))
(assert true)
;(assert (append/672562846 var2698!2 ": ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2698!3 String)
(assert (= var2698!3 (str.++ var2698!2 ": ")))
(assert true)
(define-const var2585 Int (size/-79383230 var2580)) ; Statement: $i0 = virtualinvoke r1.<org.apache.tomcat.util.MultiThrowable: int size()>() 
(assert true)
;(assert (append/-1001720160 var2698!3 var2585)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2698!4 String)
(assert (str.prefixof var2698!3 var2698!4))
(assert true)
;(assert (append/672562846 var2698!4 " wrapped Throwables: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wrapped Throwables: ") 
(declare-const var2698!5 String)
(assert (= var2698!5 (str.++ var2698!4 " wrapped Throwables: ")))
(define-const var2496 var1271 (throwables/536486911 var2580)) ; Statement: $r3 = r1.<org.apache.tomcat.util.MultiThrowable: java.util.List throwables> 
(define-const var1489 Iterator (var1271_iterator/-912451715 var2496)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3918 Bool (Iterator_hasNext/-1669924200 var1489)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3918 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2010 String (toString/-2075883882 var2698!5)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var178-to-var1417=([org.apache.tomcat.util.MultiThrowable], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), size/-79383230=([org.apache.tomcat.util.MultiThrowable], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), throwables/536486911=([org.apache.tomcat.util.MultiThrowable], java.util.List), var1271_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var178=org.apache.tomcat.util.MultiThrowable, var2580=r1, var2698=$r0, var1417=java.lang.Throwable, var95=$r2, var2585=$i0, var1271=java.util.List, var2496=$r3, var1489=r4, var3918=$z0, var2010=$r5}
; {org.apache.tomcat.util.MultiThrowable=var178, r1=var2580, $r0=var2698, java.lang.Throwable=var1417, $r2=var95, $i0=var2585, java.util.List=var1271, $r3=var2496, r4=var1489, $z0=var3918, $r5=var2010}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.tomcat.util.MultiThrowable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Throwable: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$i0 = virtualinvoke r1.<org.apache.tomcat.util.MultiThrowable: int size()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wrapped Throwables: ");	$r3 = r1.<org.apache.tomcat.util.MultiThrowable: java.util.List throwables>;	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3