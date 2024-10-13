(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2847 0)
(declare-sort var2935 0)
(declare-sort var517 0)
(declare-sort var443 0)
(declare-sort var2538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2935_getShortClassName/-731246219 (var517 String) String)
(declare-fun cast-from-var2847-to-var517 (var2847) var517)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2847) String)
(declare-fun var2538_defaultString/-1973478738 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2847 var2847)
(declare-const null-String String)
(declare-const var2740 var2847) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var2740 null-var2847)))
 ; Statement: if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getShortClassName(java.lang.Object,java.lang.String)>(r0, null) 
(assert (not (= var2740 null-var2847))) ; Cond: r0 != null 
(define-const var1913 String (var2935_getShortClassName/-731246219 (cast-from-var2847-to-var517 var2740) null-String)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getShortClassName(java.lang.Object,java.lang.String)>(r0, null) 
(define-const var2786 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2786)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2786!1 String)
(assert (= var2786!1 ""))
(assert true)
(define-const var3771 String (append/672562846 var2786!1 var1913)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 var1913)))
(assert true)
(define-const var2697 String (append/672562846 var3771 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3771!1 String)
(assert (= var3771!1 (str.++ var3771 ": ")))
(assert true)
(define-const var1252 String (getMessage/849299655 var2740)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(define-const var3997 String (var2538_defaultString/-1973478738 var1252)) ; Statement: $r5 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String defaultString(java.lang.String)>($r4) 
(assert true)
(define-const var3080 String (append/672562846 var2697 var3997)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2697!1 String)
(assert (= var2697!1 (str.++ var2697 var3997)))
(assert true)
(define-const var481 String (toString/-2075883882 var3080)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2935_getShortClassName/-731246219=([java.lang.Object, java.lang.String], java.lang.String), cast-from-var2847-to-var517=([java.lang.Throwable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), var2538_defaultString/-1973478738=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2847=java.lang.Throwable, var2740=r0, var2935=org.apache.commons.lang3.ClassUtils, var517=java.lang.Object, var443=null_type, var1913=r1, var2786=$r2, var3771=$r3, var2697=$r6, var1252=$r4, var2538=org.apache.commons.lang3.StringUtils, var3997=$r5, var3080=$r7, var481=$r8}
; {java.lang.Throwable=var2847, r0=var2740, org.apache.commons.lang3.ClassUtils=var2935, java.lang.Object=var517, null_type=var443, r1=var1913, $r2=var2786, $r3=var3771, $r6=var2697, $r4=var1252, org.apache.commons.lang3.StringUtils=var2538, $r5=var3997, $r7=var3080, $r8=var481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Throwable;	if r0 != null goto r1 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getShortClassName(java.lang.Object,java.lang.String)>(r0, null);	r1 = staticinvoke <org.apache.commons.lang3.ClassUtils: java.lang.String getShortClassName(java.lang.Object,java.lang.String)>(r0, null);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r5 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String defaultString(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2