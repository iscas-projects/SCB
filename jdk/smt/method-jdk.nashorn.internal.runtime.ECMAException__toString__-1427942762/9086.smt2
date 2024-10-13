(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3179 0)
(declare-sort var385 0)
(declare-sort var888 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFileName/-1430444550 (var385) String)
(declare-fun cast-from-var3179-to-var385 (var3179) var385)
(declare-fun getLineNumber/46075740 (var385) Int)
(declare-fun getColumnNumber/-1169806534 (var385) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2080) String)
(declare-fun cast-from-var3179-to-var2080 (var3179) var2080)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3179 var3179)
(declare-const null-String String)
(declare-const var1371 var3179) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.ECMAException 
(assert (not (= var1371 null-var3179)))
(define-const var3412 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3412)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3412!1 String)
(assert (= var3412!1 ""))
(assert true)
(define-const var2702 String (getFileName/-1430444550 (cast-from-var3179-to-var385 var1371))) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: java.lang.String getFileName()>() 
(assert true)
(define-const var681 Int (getLineNumber/46075740 (cast-from-var3179-to-var385 var1371))) ; Statement: i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: int getLineNumber()>() 
(assert true)
(define-const var615 Int (getColumnNumber/-1169806534 (cast-from-var3179-to-var385 var1371))) ; Statement: i1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: int getColumnNumber()>() 
 ; Statement: if r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ECMAScript Exception: ") 
(assert (= var2702 null-String)) ; Cond: r2 == null 
(assert true)
;(assert (append/672562846 var3412!1 "ECMAScript Exception: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ECMAScript Exception: ") 
(declare-const var3412!2 String)
(assert (= var3412!2 (str.++ var3412!1 "ECMAScript Exception: ")))
(assert true) ; Non Conditional
(assert true)
(define-const var873 String (getMessage/849299655 (cast-from-var3179-to-var2080 var1371))) ; Statement: $r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: java.lang.String getMessage()>() 
(assert true)
;(assert (append/672562846 var3412!2 var873)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3412!3 String)
(assert (= var3412!3 (str.++ var3412!2 var873)))
(assert true)
(define-const var1546 String (toString/-2075883882 var3412!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFileName/-1430444550=([jdk.nashorn.api.scripting.NashornException], java.lang.String), cast-from-var3179-to-var385=([jdk.nashorn.internal.runtime.ECMAException], jdk.nashorn.api.scripting.NashornException), getLineNumber/46075740=([jdk.nashorn.api.scripting.NashornException], int), getColumnNumber/-1169806534=([jdk.nashorn.api.scripting.NashornException], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3179-to-var2080=([jdk.nashorn.internal.runtime.ECMAException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3179=jdk.nashorn.internal.runtime.ECMAException, var1371=r1, var3412=$r0, var385=jdk.nashorn.api.scripting.NashornException, var2702=r2, var681=i0, var615=i1, var888=null_type, var2080=java.lang.Throwable, var873=$r3, var1546=$r4}
; {jdk.nashorn.internal.runtime.ECMAException=var3179, r1=var1371, $r0=var3412, jdk.nashorn.api.scripting.NashornException=var385, r2=var2702, i0=var681, i1=var615, null_type=var888, java.lang.Throwable=var2080, $r3=var873, $r4=var1546}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.ECMAException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: java.lang.String getFileName()>();	i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: int getLineNumber()>();	i1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: int getColumnNumber()>();	if r2 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ECMAScript Exception: ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ECMAScript Exception: ");	$r3 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ECMAException: java.lang.String getMessage()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3