(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3971 0)
(declare-sort var2781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2781-init () var2781)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var2781 String) void)
(declare-const null-String String)
(declare-const var3856 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3856 null-String)))
(assert true)
(define-const var3991 Bool (startsWith/-1785782452 var3856 "is")) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
(assert (= (ite var3991 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2941 Bool (startsWith/-1785782452 var3856 "get")) ; Statement: $z1 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z1 != 0 goto r14 = virtualinvoke r13.<java.lang.String: java.lang.String substring(int)>(3) 
(assert (not (not (= (ite var2941 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var306 Bool (startsWith/-1785782452 var3856 "set")) ; Statement: $z3 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
 ; Statement: if $z3 == 0 goto $r7 = new org.apache.ibatis.reflection.ReflectionException 
(assert (= (ite var306 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2865 var2781 var2781-init) ; Statement: $r7 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var1284 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1284)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1284!1 String)
(assert (= var1284!1 ""))
(assert true)
(define-const var1381 String (append/672562846 var1284!1 "Error parsing property name \u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing property name \'") 
(declare-const var1284!2 String)
(assert (= var1284!2 (str.++ var1284!1 "Error parsing property name \u0027")))
(assert true)
(define-const var2955 String (append/672562846 var1381 var3856)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var1381!1 String)
(assert (= var1381!1 (str.++ var1381 var3856)))
(assert true)
(define-const var2156 String (append/672562846 var2955 "\u0027.  Didn\u0027t start with \u0027is\u0027, \u0027get\u0027 or \u0027set\u0027.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Didn\'t start with \'is\', \'get\' or \'set\'.") 
(declare-const var2955!1 String)
(assert (= var2955!1 (str.++ var2955 "\u0027.  Didn\u0027t start with \u0027is\u0027, \u0027get\u0027 or \u0027set\u0027.")))
(assert true)
(define-const var3234 String (toString/-2075883882 var2156)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var2865 var3234)) ; Statement: specialinvoke $r7.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r12) 

(declare-const var2865!1 var2781)
(declare-const var3234!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2781-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var3856=r13, var3971=null_type, var3991=$z0, var2941=$z1, var306=$z3, var2781=org.apache.ibatis.reflection.ReflectionException, var2865=$r7, var1284=$r8, var1381=$r9, var2955=$r10, var2156=$r11, var3234=$r12}
; {r13=var3856, null_type=var3971, $z0=var3991, $z1=var2941, $z3=var306, org.apache.ibatis.reflection.ReflectionException=var2781, $r7=var2865, $r8=var1284, $r9=var1381, $r10=var2955, $r11=var2156, $r12=var3234}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @parameter0: java.lang.String;	$z0 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("is");	if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("get");	$z1 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z1 != 0 goto r14 = virtualinvoke r13.<java.lang.String: java.lang.String substring(int)>(3);	$z3 = virtualinvoke r13.<java.lang.String: boolean startsWith(java.lang.String)>("set");	if $z3 == 0 goto $r7 = new org.apache.ibatis.reflection.ReflectionException;	$r7 = new org.apache.ibatis.reflection.ReflectionException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing property name \'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.  Didn\'t start with \'is\', \'get\' or \'set\'.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 4