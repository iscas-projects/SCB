(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2898 0)
(declare-sort var2564 0)
(declare-sort var3972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun level/1330583160 (var2898) var2564)
(declare-fun append/-1031950772 (String var3972) String)
(declare-fun cast-from-var2564-to-var3972 (var2564) var3972)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1330583160 (var2898) var3972)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2898 var2898)
(declare-const null-var3972 var3972)
(declare-const var122 var2898) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.events.RuntimeEvent 
(assert (not (= var122 null-var2898)))
(define-const var1283 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1283)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1283!1 String)
(assert (= var1283!1 ""))
(assert true)
(define-const var3754 String (append/-1166366385 var1283!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1283!2 String)
(assert (str.prefixof var1283!1 var1283!2))
(define-const var631 var2564 (level/1330583160 var122)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.util.logging.Level level> 
(assert true)
(define-const var355 String (append/-1031950772 var3754 (cast-from-var2564-to-var3972 var631))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3754!1 String)
(assert (str.prefixof var3754 var3754!1))
(assert true)
(define-const var3322 String (append/672562846 var355 "] ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var355!1 String)
(assert (= var355!1 (str.++ var355 "] ")))
(define-const var199 var3972 (value/1330583160 var122)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value> 
 ; Statement: if $r5 != null goto $r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>() 
(assert (not (not (= var199 null-var3972)))) ; Negate: Cond: $r5 != null  
(define-const var237 String "null") ; Statement: $r12 = "null" 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2521 String (append/672562846 var3322 var237)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3322!1 String)
(assert (= var3322!1 (str.++ var3322 var237)))
(assert true)
(define-const var481 String (append/672562846 var2521 " value=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value=") 
(declare-const var2521!1 String)
(assert (= var2521!1 (str.++ var2521 " value=")))
(define-const var2553 var3972 (value/1330583160 var122)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value> 
(assert true)
;(assert (append/-1031950772 var481 var2553)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var481!1 String)
(assert (str.prefixof var481 var481!1))
(assert true)
(define-const var1645 String (toString/-2075883882 var1283!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), level/1330583160=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.util.logging.Level), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2564-to-var3972=([java.util.logging.Level], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1330583160=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2898=jdk.nashorn.internal.runtime.events.RuntimeEvent, var122=r1, var1283=$r0, var3754=$r3, var2564=java.util.logging.Level, var631=$r2, var3972=java.lang.Object, var355=$r4, var3322=$r7, var199=$r5, var237=$r12, var2521=$r8, var481=$r10, var2553=$r9, var1645=$r11}
; {jdk.nashorn.internal.runtime.events.RuntimeEvent=var2898, r1=var122, $r0=var1283, $r3=var3754, java.util.logging.Level=var2564, $r2=var631, java.lang.Object=var3972, $r4=var355, $r7=var3322, $r5=var199, $r12=var237, $r8=var2521, $r10=var481, $r9=var2553, $r11=var1645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.events.RuntimeEvent;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.util.logging.Level level>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r5 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value>;	if $r5 != null goto $r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>();	$r12 = "null";	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value=");	$r9 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value>;	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3