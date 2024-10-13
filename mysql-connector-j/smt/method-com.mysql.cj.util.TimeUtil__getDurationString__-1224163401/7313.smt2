(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isNegative/-1161372069 (var3881) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun abs/1970469655 (var3881) var3881)
(declare-fun toString/-800585279 (var3881) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(declare-const null-var3881 var3881)
(declare-const var3846 var3881) ; Statement: r0 := @parameter0: java.time.Duration 
(assert (not (= var3846 null-var3881)))
(assert true)
(define-const var3678 Bool (isNegative/-1161372069 var3846)) ; Statement: $z0 = virtualinvoke r0.<java.time.Duration: boolean isNegative()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>() 
(assert (not (= (ite var3678 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var318 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var318)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var318!1 String)
(assert (= var318!1 ""))
(assert true)
(define-const var2417 String (append/672562846 var318!1 "-")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var318!2 String)
(assert (= var318!2 (str.++ var318!1 "-")))
(assert true)
(define-const var1889 var3881 (abs/1970469655 var3846)) ; Statement: $r3 = virtualinvoke r0.<java.time.Duration: java.time.Duration abs()>() 
(assert true)
(define-const var1918 String (toString/-800585279 var1889)) ; Statement: $r4 = virtualinvoke $r3.<java.time.Duration: java.lang.String toString()>() 
(assert true)
(define-const var2113 String (append/672562846 var2417 var1918)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2417!1 String)
(assert (= var2417!1 (str.++ var2417 var1918)))
(assert true)
(define-const var2199 String (toString/-2075883882 var2113)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3457 String (replace/2138489945 var2199 (cast-from-String-to-String "PT") (cast-from-String-to-String ""))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "") 
(assert true)
(define-const var2401 Bool (contains/1009244746 var3457 (cast-from-String-to-String "M"))) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("M") 
 ; Statement: if $z1 == 0 goto r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0") 
(assert (= (ite var2401 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3884 String (replace/2138489945 var3457 (cast-from-String-to-String "H") (cast-from-String-to-String ":0:0"))) ; Statement: r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0") 
(assert true) ; Non Conditional
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isNegative/-1161372069=([java.time.Duration], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), abs/1970469655=([java.time.Duration], java.time.Duration), toString/-800585279=([java.time.Duration], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean)}
; {var3881=java.time.Duration, var3846=r0, var3678=$z0, var318=$r2, var2417=$r5, var1889=$r3, var1918=$r4, var2113=$r6, var2199=$r8, var3457=$r7, var2401=$z1, var3884=r10}
; {java.time.Duration=var3881, r0=var3846, $z0=var3678, $r2=var318, $r5=var2417, $r3=var1889, $r4=var1918, $r6=var2113, $r8=var2199, $r7=var3457, $z1=var2401, r10=var3884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.time.Duration: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.time.Duration;	$z0 = virtualinvoke r0.<java.time.Duration: boolean isNegative()>();	if $z0 == 0 goto $r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r3 = virtualinvoke r0.<java.time.Duration: java.time.Duration abs()>();	$r4 = virtualinvoke $r3.<java.time.Duration: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "")];	$r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "");	$z1 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("M");	if $z1 == 0 goto r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0");	r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0");	return r10
;block_num 5