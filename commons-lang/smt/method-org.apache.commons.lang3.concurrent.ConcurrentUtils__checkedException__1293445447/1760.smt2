(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3913 0)
(declare-sort var38 0)
(declare-sort var2330 0)
(declare-sort var2953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var38_isChecked/-1173194226 (var3913) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2330) String)
(declare-fun cast-from-var3913-to-var2330 (var3913) var2330)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var2330-init () (Array Int var2330))
(declare-fun var2953_isTrue/-214704028 (Bool String (Array Int var2330)) void)
(declare-const null-var3913 var3913)
(declare-const var2927 var3913) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var2927 null-var3913)))
(define-const var3351 Bool (var38_isChecked/-1173194226 var2927)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.exception.ExceptionUtils: boolean isChecked(java.lang.Throwable)>(r0) 
(define-const var1941 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1941)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1941!1 String)
(assert (= var1941!1 ""))
(assert true)
(define-const var2446 String (append/672562846 var1941!1 "Not a checked exception: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a checked exception: ") 
(declare-const var1941!2 String)
(assert (= var1941!2 (str.++ var1941!1 "Not a checked exception: ")))
(assert true)
(define-const var3294 String (append/-1031950772 var2446 (cast-from-var3913-to-var2330 var2927))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2446!1 String)
(assert (str.prefixof var2446 var2446!1))
(assert true)
(define-const var3579 String (toString/-2075883882 var3294)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1565 (Array Int var2330) arr-var2330-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
;(assert (var2953_isTrue/-214704028 var3351 var3579 var1565)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, $r5, $r4) 

(declare-const var3351!1 Bool)
(declare-const var3579!1 String)
(declare-const var1565!1 (Array Int var2330))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var38_isChecked/-1173194226=([java.lang.Throwable], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3913-to-var2330=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var2330-init=([], java.lang.Object[]), var2953_isTrue/-214704028=([boolean, java.lang.String, java.lang.Object[]], void)}
; {var3913=java.lang.Throwable, var2927=r0, var38=org.apache.commons.lang3.exception.ExceptionUtils, var3351=$z0, var1941=$r1, var2446=$r2, var2330=java.lang.Object, var3294=$r3, var3579=$r5, var1565=$r4, var2953=org.apache.commons.lang3.Validate}
; {java.lang.Throwable=var3913, r0=var2927, org.apache.commons.lang3.exception.ExceptionUtils=var38, $z0=var3351, $r1=var1941, $r2=var2446, java.lang.Object=var2330, $r3=var3294, $r5=var3579, $r4=var1565, org.apache.commons.lang3.Validate=var2953}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Throwable;	$z0 = staticinvoke <org.apache.commons.lang3.exception.ExceptionUtils: boolean isChecked(java.lang.Throwable)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a checked exception: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, $r5, $r4);	return r0
;block_num 1