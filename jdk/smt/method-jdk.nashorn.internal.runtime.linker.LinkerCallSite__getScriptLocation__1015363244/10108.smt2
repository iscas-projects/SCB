(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort var491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var491_getLinkedCallSiteLocation/-1772530911 () var3742)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFileName/-547794010 (var3742) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLineNumber/1148630320 (var3742) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3742 var3742)
(define-const var3178 var3742 var491_getLinkedCallSiteLocation/-1772530911) ; Statement: r0 = staticinvoke <jdk.internal.dynalink.DynamicLinker: java.lang.StackTraceElement getLinkedCallSiteLocation()>() 
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var3178 null-var3742))) ; Cond: r0 != null 
(define-const var3417 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3417)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3417!1 String)
(assert (= var3417!1 ""))
(assert true)
(define-const var3771 String (getFileName/-547794010 var3178)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StackTraceElement: java.lang.String getFileName()>() 
(assert true)
(define-const var1024 String (append/672562846 var3417!1 var3771)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3417!2 String)
(assert (= var3417!2 (str.++ var3417!1 var3771)))
(assert true)
(define-const var1587 String (append/672562846 var1024 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1024!1 String)
(assert (= var1024!1 (str.++ var1024 ":")))
(assert true)
(define-const var3715 Int (getLineNumber/1148630320 var3178)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StackTraceElement: int getLineNumber()>() 
(assert true)
(define-const var2246 String (append/-1001720160 var1587 var3715)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1587!1 String)
(assert (str.prefixof var1587 var1587!1))
(assert true)
(define-const var598 String (toString/-2075883882 var2246)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var491_getLinkedCallSiteLocation/-1772530911=([], java.lang.StackTraceElement), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFileName/-547794010=([java.lang.StackTraceElement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLineNumber/1148630320=([java.lang.StackTraceElement], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3742=java.lang.StackTraceElement, var491=jdk.internal.dynalink.DynamicLinker, var3178=r0, var3417=$r1, var3771=$r2, var1024=$r3, var1587=$r4, var3715=$i0, var2246=$r5, var598=$r6}
; {java.lang.StackTraceElement=var3742, jdk.internal.dynalink.DynamicLinker=var491, r0=var3178, $r1=var3417, $r2=var3771, $r3=var1024, $r4=var1587, $i0=var3715, $r5=var2246, $r6=var598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 = staticinvoke <jdk.internal.dynalink.DynamicLinker: java.lang.StackTraceElement getLinkedCallSiteLocation()>();	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.StackTraceElement: java.lang.String getFileName()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = virtualinvoke r0.<java.lang.StackTraceElement: int getLineNumber()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3