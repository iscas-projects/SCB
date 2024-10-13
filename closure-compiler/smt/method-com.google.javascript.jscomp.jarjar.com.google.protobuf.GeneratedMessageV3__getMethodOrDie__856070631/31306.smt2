(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2159 0)
(declare-sort var3716 0)
(declare-sort var452 0)
(declare-sort var3866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var452-init () var452)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var452 String var3866) void)
(declare-fun cast-from-var3716-to-var3866 (var3716) var3866)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3716 var3716)
(declare-const var3157 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3157 null-ClassObject)))
(declare-const var789 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var789 null-String)))
(declare-const var1767 (Array Int ClassObject)) ; Statement: r2 := @parameter2: java.lang.Class[] 
(assert (not (= var1767 null-__Array__Int__ClassObject__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var790 var3716) ; Statement: $r4 := @caughtexception 
(assert (not (= var790 null-var3716)))
(define-const var2569 var452 var452-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var3788 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3788)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3788!1 String)
(assert (= var3788!1 ""))
(assert true)
(define-const var1584 String (append/672562846 var3788!1 "Generated message class \u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"") 
(declare-const var3788!2 String)
(assert (= var3788!2 (str.++ var3788!1 "Generated message class \u0022")))
(assert true)
(define-const var2779 String (getName/-1958580599 var3157)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var672 String (append/672562846 var1584 var2779)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1584!1 String)
(assert (= var1584!1 (str.++ var1584 var2779)))
(assert true)
(define-const var2923 String (append/672562846 var672 "\u0022 missing method \u0022")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"") 
(declare-const var672!1 String)
(assert (= var672!1 (str.++ var672 "\u0022 missing method \u0022")))
(assert true)
(define-const var2666 String (append/672562846 var2923 var789)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2923!1 String)
(assert (= var2923!1 (str.++ var2923 var789)))
(assert true)
(define-const var651 String (append/672562846 var2666 "\u0022.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".") 
(declare-const var2666!1 String)
(assert (= var2666!1 (str.++ var2666 "\u0022.")))
(assert true)
(define-const var2179 String (toString/-2075883882 var651)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2569 var2179 (cast-from-var3716-to-var3866 var790))) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4) 

(declare-const var2569!1 var452)
(declare-const var2179!1 String)
(declare-const var790!1 var3716)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var452-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3716-to-var3866=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var3157=r0, var789=r1, var2159=null_type, var1767=r2, var3716=java.lang.NoSuchMethodException, var790=$r4, var452=java.lang.RuntimeException, var2569=$r5, var3788=$r6, var1584=$r8, var2779=$r7, var672=$r9, var2923=$r10, var2666=$r11, var651=$r12, var2179=$r13, var3866=java.lang.Throwable}
; {r0=var3157, r1=var789, null_type=var2159, r2=var1767, java.lang.NoSuchMethodException=var3716, $r4=var790, java.lang.RuntimeException=var452, $r5=var2569, $r6=var3788, $r8=var1584, $r7=var2779, $r9=var672, $r10=var2923, $r11=var2666, $r12=var651, $r13=var2179, java.lang.Throwable=var3866}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Class[];	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Generated message class \"");	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" missing method \"");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\".");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r4);	throw $r5
;block_num 2