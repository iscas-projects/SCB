(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var861 0)
(declare-sort var3125 0)
(declare-sort var3149 0)
(declare-sort var3147 0)
(declare-sort var1959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3149_toString/-1831155339 (var3147) String)
(declare-fun cast-from-var861-to-var3147 (var861) var3147)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1959_getScriptStackString/-189355509 (var3125) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var861 var861)
(declare-const null-var3125 var3125)
(declare-const var3997 var861) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3997 null-var861)))
(declare-const var1638 var3125) ; Statement: r4 := @parameter1: java.lang.Throwable 
(assert (not (= var1638 null-var3125)))
(define-const var2269 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2269)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2269!1 String)
(assert (= var2269!1 ""))
(define-const var24 String (var3149_toString/-1831155339 (cast-from-var861-to-var3147 var3997))) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r1) 
(assert true)
(define-const var2858 String (append/672562846 var2269!1 var24)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2269!2 String)
(assert (= var2269!2 (str.++ var2269!1 var24)))
(assert true)
(define-const var3729 String (append/672562846 var2858 "\n")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2858!1 String)
(assert (= var2858!1 (str.++ var2858 "\n")))
(define-const var2649 String (var1959_getScriptStackString/-189355509 var1638)) ; Statement: $r5 = staticinvoke <jdk.nashorn.api.scripting.NashornException: java.lang.String getScriptStackString(java.lang.Throwable)>(r4) 
(assert true)
(define-const var1725 String (append/672562846 var3729 var2649)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3729!1 String)
(assert (= var3729!1 (str.++ var3729 var2649)))
(assert true)
(define-const var1748 String (toString/-2075883882 var1725)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3149_toString/-1831155339=([java.lang.Object], java.lang.String), cast-from-var861-to-var3147=([jdk.nashorn.internal.runtime.ScriptObject], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1959_getScriptStackString/-189355509=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var861=jdk.nashorn.internal.runtime.ScriptObject, var3997=r1, var3125=java.lang.Throwable, var1638=r4, var2269=$r0, var3149=jdk.nashorn.internal.runtime.JSType, var3147=java.lang.Object, var24=$r2, var2858=$r3, var3729=$r6, var1959=jdk.nashorn.api.scripting.NashornException, var2649=$r5, var1725=$r7, var1748=$r8}
; {jdk.nashorn.internal.runtime.ScriptObject=var861, r1=var3997, java.lang.Throwable=var3125, r4=var1638, $r0=var2269, jdk.nashorn.internal.runtime.JSType=var3149, java.lang.Object=var3147, $r2=var24, $r3=var2858, $r6=var3729, jdk.nashorn.api.scripting.NashornException=var1959, $r5=var2649, $r7=var1725, $r8=var1748}
;seq <java.lang.StringBuilder: void <init>()>;	<jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: jdk.nashorn.internal.runtime.ScriptObject;	r4 := @parameter1: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r5 = staticinvoke <jdk.nashorn.api.scripting.NashornException: java.lang.String getScriptStackString(java.lang.Throwable)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1