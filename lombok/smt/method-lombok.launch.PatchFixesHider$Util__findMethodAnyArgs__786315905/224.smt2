(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1507 0)
(declare-sort var329 0)
(declare-sort var2040 0)
(declare-sort var3686 0)
(declare-sort var2045 0)
(declare-sort var701 0)
(declare-sort var2721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaredMethods/663195025 (ClassObject) (Array Int var329))
(declare-fun getLength-Arr-var329-1 ((Array Int var329)) Int)
(declare-fun var2040-init () var2040)
(declare-fun String-init () String)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String_valueOf/-333372740 (var3686) String)
(declare-fun cast-from-String-to-var3686 (String) var3686)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-966825728 (var2040 String) void)
(declare-fun var701_sneakyThrow/-283431047 (var2721) var2045)
(declare-fun cast-from-var2040-to-var2721 (var2040) var2721)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2816 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2816 null-ClassObject)))
(declare-const var1701 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1701 null-String)))
(assert true)
(define-const var1189 (Array Int var329) (getDeclaredMethods/663195025 var2816)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method[] getDeclaredMethods()>() 
(define-const var104 Int (getLength-Arr-var329-1 var1189)) ; Statement: i0 = lengthof $r1 
(define-const var2609 Int 0) ; Statement: i1 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i1 < i0 goto r2 = $r1[i1] 
(assert (not (< var2609 var104))) ; Negate: Cond: i1 < i0  
(define-const var2037 var2040 var2040-init) ; Statement: $r5 = new java.lang.NoSuchMethodException 
(define-const var3424 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
(define-const var3385 String (getName/-1958580599 var2816)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var2362 String (String_valueOf/-333372740 (cast-from-String-to-var3686 var3385))) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r7) 
(assert true)
;(assert (<init>/-1061048412 var3424 var2362)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8) 
(declare-const var3424!1 String)
(assert (= var3424!1 var2362))
(assert true)
(define-const var2127 String (append/672562846 var3424!1 "::")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::") 
(declare-const var3424!2 String)
(assert (= var3424!2 (str.++ var3424!1 "::")))
(assert true)
(define-const var3680 String (append/672562846 var2127 var1701)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2127!1 String)
(assert (= var2127!1 (str.++ var2127 var1701)))
(assert true)
(define-const var2745 String (toString/-2075883882 var3680)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-966825728 var2037 var2745)) ; Statement: specialinvoke $r5.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11) 

(declare-const var2037!1 var2040)
(declare-const var2745!1 String)
(define-const var2160 var2045 (var701_sneakyThrow/-283431047 (cast-from-var2040-to-var2721 var2037!1))) ; Statement: $r12 = staticinvoke <lombok.launch.PatchFixesHider$Util: java.lang.RuntimeException sneakyThrow(java.lang.Throwable)>($r5) 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaredMethods/663195025=([java.lang.Class], java.lang.reflect.Method[]), getLength-Arr-var329-1=([java.lang.reflect.Method[]], int), var2040-init=([], java.lang.NoSuchMethodException), String-init=([], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var3686=([java.lang.String], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-966825728=([java.lang.NoSuchMethodException, java.lang.String], void), var701_sneakyThrow/-283431047=([java.lang.Throwable], java.lang.RuntimeException), cast-from-var2040-to-var2721=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var2816=r0, var1701=r3, var1507=null_type, var329=java.lang.reflect.Method, var1189=$r1, var104=i0, var2609=i1, var2040=java.lang.NoSuchMethodException, var2037=$r5, var3424=$r6, var3385=$r7, var3686=java.lang.Object, var2362=$r8, var2127=$r9, var3680=$r10, var2745=$r11, var2045=java.lang.RuntimeException, var701=lombok.launch.PatchFixesHider$Util, var2721=java.lang.Throwable, var2160=$r12}
; {r0=var2816, r3=var1701, null_type=var1507, java.lang.reflect.Method=var329, $r1=var1189, i0=var104, i1=var2609, java.lang.NoSuchMethodException=var2040, $r5=var2037, $r6=var3424, $r7=var3385, java.lang.Object=var3686, $r8=var2362, $r9=var2127, $r10=var3680, $r11=var2745, java.lang.RuntimeException=var2045, lombok.launch.PatchFixesHider$Util=var701, java.lang.Throwable=var2721, $r12=var2160}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r3 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Method[] getDeclaredMethods()>();	i0 = lengthof $r1;	i1 = 0;	goto [?= (branch)];	if i1 < i0 goto r2 = $r1[i1];	$r5 = new java.lang.NoSuchMethodException;	$r6 = new java.lang.StringBuilder;	$r7 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r7);	specialinvoke $r6.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.NoSuchMethodException: void <init>(java.lang.String)>($r11);	$r12 = staticinvoke <lombok.launch.PatchFixesHider$Util: java.lang.RuntimeException sneakyThrow(java.lang.Throwable)>($r5);	throw $r12
;block_num 3