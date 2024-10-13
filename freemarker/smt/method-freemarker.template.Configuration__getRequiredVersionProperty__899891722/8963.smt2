(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var1920 0)
(declare-sort var3095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1391780669 (var3301 String) String)
(declare-fun var3095-init () var3095)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3095 String) void)
(declare-const null-var3301 var3301)
(declare-const null-String String)
(declare-const var1792 var3301) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var1792 null-var3301)))
(declare-const var3770 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3770 null-String)))
(assert true)
(define-const var2847 String (getProperty/1391780669 var1792 var3770)) ; Statement: r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (not (= var2847 null-String)))) ; Negate: Cond: r2 != null  
(define-const var889 var3095 var3095-init) ; Statement: $r3 = new java.lang.RuntimeException 
(define-const var2047 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2047)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2047!1 String)
(assert (= var2047!1 ""))
(assert true)
(define-const var2648 String (append/672562846 var2047!1 "Version file is corrupt: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Version file is corrupt: \"") 
(declare-const var2047!2 String)
(assert (= var2047!2 (str.++ var2047!1 "Version file is corrupt: \u0022")))
(assert true)
(define-const var181 String (append/672562846 var2648 var3770)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2648!1 String)
(assert (= var2648!1 (str.++ var2648 var3770)))
(assert true)
(define-const var3789 String (append/672562846 var181 "\u0022 property is missing.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" property is missing.") 
(declare-const var181!1 String)
(assert (= var181!1 (str.++ var181 "\u0022 property is missing.")))
(assert true)
(define-const var3794 String (toString/-2075883882 var3789)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var889 var3794)) ; Statement: specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8) 

(declare-const var889!1 var3095)
(declare-const var3794!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), var3095-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3301=java.util.Properties, var1792=r0, var3770=r1, var1920=null_type, var2847=r2, var3095=java.lang.RuntimeException, var889=$r3, var2047=$r4, var2648=$r5, var181=$r6, var3789=$r7, var3794=$r8}
; {java.util.Properties=var3301, r0=var1792, r1=var3770, null_type=var1920, r2=var2847, java.lang.RuntimeException=var3095, $r3=var889, $r4=var2047, $r5=var2648, $r6=var181, $r7=var3789, $r8=var3794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1);	if r2 != null goto return r2;	$r3 = new java.lang.RuntimeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Version file is corrupt: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" property is missing.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.RuntimeException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2