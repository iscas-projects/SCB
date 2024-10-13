(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var521 0)
(declare-sort var3487 0)
(declare-sort var2456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun level/1330583160 (var521) var3487)
(declare-fun append/-1031950772 (String var2456) String)
(declare-fun cast-from-var3487-to-var2456 (var3487) var2456)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1330583160 (var521) var2456)
(declare-fun getValueClass/632087702 (var521) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var521 var521)
(declare-const null-var2456 var2456)
(declare-const var2277 var521) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.events.RuntimeEvent 
(assert (not (= var2277 null-var521)))
(define-const var1339 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1339)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1339!1 String)
(assert (= var1339!1 ""))
(assert true)
(define-const var2760 String (append/-1166366385 var1339!1 91)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1339!2 String)
(assert (str.prefixof var1339!1 var1339!2))
(define-const var3664 var3487 (level/1330583160 var2277)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.util.logging.Level level> 
(assert true)
(define-const var1152 String (append/-1031950772 var2760 (cast-from-var3487-to-var2456 var3664))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2760!1 String)
(assert (str.prefixof var2760 var2760!1))
(assert true)
(define-const var1342 String (append/672562846 var1152 "] ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var1152!1 String)
(assert (= var1152!1 (str.++ var1152 "] ")))
(define-const var3950 var2456 (value/1330583160 var2277)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value> 
 ; Statement: if $r5 != null goto $r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>() 
(assert (not (= var3950 null-var2456))) ; Cond: $r5 != null 
(assert true)
(define-const var1490 ClassObject (getValueClass/632087702 var2277)) ; Statement: $r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>() 
(assert true)
(define-const var1236 String (getSimpleName/-390194377 var1490)) ; Statement: $r12 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var536 String (append/672562846 var1342 var1236)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1342!1 String)
(assert (= var1342!1 (str.++ var1342 var1236)))
(assert true)
(define-const var338 String (append/672562846 var536 " value=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value=") 
(declare-const var536!1 String)
(assert (= var536!1 (str.++ var536 " value=")))
(define-const var3336 var2456 (value/1330583160 var2277)) ; Statement: $r9 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value> 
(assert true)
;(assert (append/-1031950772 var338 var3336)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var338!1 String)
(assert (str.prefixof var338 var338!1))
(assert true)
(define-const var1178 String (toString/-2075883882 var1339!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), level/1330583160=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.util.logging.Level), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3487-to-var2456=([java.util.logging.Level], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1330583160=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.lang.Object), getValueClass/632087702=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var521=jdk.nashorn.internal.runtime.events.RuntimeEvent, var2277=r1, var1339=$r0, var2760=$r3, var3487=java.util.logging.Level, var3664=$r2, var2456=java.lang.Object, var1152=$r4, var1342=$r7, var3950=$r5, var1490=$r6, var1236=$r12, var536=$r8, var338=$r10, var3336=$r9, var1178=$r11}
; {jdk.nashorn.internal.runtime.events.RuntimeEvent=var521, r1=var2277, $r0=var1339, $r3=var2760, java.util.logging.Level=var3487, $r2=var3664, java.lang.Object=var2456, $r4=var1152, $r7=var1342, $r5=var3950, $r6=var1490, $r12=var1236, $r8=var536, $r10=var338, $r9=var3336, $r11=var1178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.events.RuntimeEvent;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r2 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.util.logging.Level level>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r5 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value>;	if $r5 != null goto $r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>();	$r6 = virtualinvoke r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Class getValueClass()>();	$r12 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" value=");	$r9 = r1.<jdk.nashorn.internal.runtime.events.RuntimeEvent: java.lang.Object value>;	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3