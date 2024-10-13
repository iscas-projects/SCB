(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var1068 0)
(declare-sort var641 0)
(declare-sort var3698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dateFormats/-834359679 (var1707) var1068)
(declare-fun var1068_get/-1216255739 (var1068 Int) var641)
(declare-fun cast-from-var641-to-var3698 (var641) var3698)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var641) ClassObject)
(declare-fun cast-from-var3698-to-var641 (var3698) var641)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1707 var1707)
(declare-const var2326 var1707) ; Statement: r0 := @this: com.google.gson.internal.bind.DefaultDateTypeAdapter 
(assert (not (= var2326 null-var1707)))
(define-const var1252 var1068 (dateFormats/-834359679 var2326)) ; Statement: $r1 = r0.<com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats> 
(define-const var1470 var641 (var1068_get/-1216255739 var1252 0)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2214 var3698 (cast-from-var641-to-var3698 var1470)) ; Statement: r3 = (java.text.DateFormat) $r2 
(define-const var1599 Bool false) ; Statement: $z0 = r3 instanceof java.text.SimpleDateFormat 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var1599 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1533 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1533)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1533!1 String)
(assert (= var1533!1 ""))
(assert true)
(define-const var1025 String (append/672562846 var1533!1 "DefaultDateTypeAdapter(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(") 
(declare-const var1533!2 String)
(assert (= var1533!2 (str.++ var1533!1 "DefaultDateTypeAdapter(")))
(assert true)
(define-const var2914 ClassObject (getClass/1258963082 (cast-from-var3698-to-var641 var2214))) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3550 String (getSimpleName/-390194377 var2914)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3459 String (append/672562846 var1025 var3550)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1025!1 String)
(assert (= var1025!1 (str.++ var1025 var3550)))
(assert true)
(define-const var3514 String (append/-1166366385 var3459 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3459!1 String)
(assert (str.prefixof var3459 var3459!1))
(assert true)
(define-const var2080 String (toString/-2075883882 var3514)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {dateFormats/-834359679=([com.google.gson.internal.bind.DefaultDateTypeAdapter], java.util.List), var1068_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var641-to-var3698=([java.lang.Object], java.text.DateFormat), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3698-to-var641=([java.text.DateFormat], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1707=com.google.gson.internal.bind.DefaultDateTypeAdapter, var2326=r0, var1068=java.util.List, var1252=$r1, var641=java.lang.Object, var1470=$r2, var3698=java.text.DateFormat, var2214=r3, var1599=$z0, var1533=$r4, var1025=$r7, var2914=$r5, var3550=$r6, var3459=$r8, var3514=$r9, var2080=$r10}
; {com.google.gson.internal.bind.DefaultDateTypeAdapter=var1707, r0=var2326, java.util.List=var1068, $r1=var1252, java.lang.Object=var641, $r2=var1470, java.text.DateFormat=var3698, r3=var2214, $z0=var1599, $r4=var1533, $r7=var1025, $r5=var2914, $r6=var3550, $r8=var3459, $r9=var3514, $r10=var2080}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.DefaultDateTypeAdapter;	$r1 = r0.<com.google.gson.internal.bind.DefaultDateTypeAdapter: java.util.List dateFormats>;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(0);	r3 = (java.text.DateFormat) $r2;	$z0 = r3 instanceof java.text.SimpleDateFormat;	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DefaultDateTypeAdapter(");	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2