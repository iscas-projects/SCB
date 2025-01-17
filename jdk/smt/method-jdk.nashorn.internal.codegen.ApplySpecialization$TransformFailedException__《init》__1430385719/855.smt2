(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2786 0)
(declare-sort var518 0)
(declare-sort var1024 0)
(declare-sort var1003 0)
(declare-sort var115 0)
(declare-sort var2802 0)
(declare-sort var3831 0)
(declare-sort var581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSource/118611882 (var518) var1003)
(declare-fun getURL/1634998554 (var1003) var115)
(declare-fun var2802_access$000/1454236011 (var115) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/-1714936033 (var518) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/195329929 (var3831 String var581 Bool Bool) void)
(declare-fun cast-from-var2786-to-var3831 (var2786) var3831)
(declare-const null-var2786 var2786)
(declare-const null-var518 var518)
(declare-const null-String String)
(declare-const null-NullType var1024)
(declare-const null-var581 var581)
(declare-const var923 var2786) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException 
(assert (not (= var923 null-var2786)))
(declare-const var1051 var518) ; Statement: r2 := @parameter0: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1051 null-var518)))
(declare-const var106 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var106 null-String)))
(define-const var3795 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3795)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3795!1 String)
(assert (= var3795!1 ""))
(assert true)
(define-const var3460 var1003 (getSource/118611882 var1051)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source getSource()>() 
(assert true)
(define-const var2755 var115 (getURL/1634998554 var3460)) ; Statement: $r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>() 
(define-const var3251 String (var2802_access$000/1454236011 var2755)) ; Statement: $r5 = staticinvoke <jdk.nashorn.internal.codegen.ApplySpecialization: java.lang.String access$000(java.net.URL)>($r4) 
(assert true)
(define-const var2903 String (append/672562846 var3795!1 var3251)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3795!2 String)
(assert (= var3795!2 (str.++ var3795!1 var3251)))
(assert true)
(define-const var1798 String (append/-1166366385 var2903 46)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2903!1 String)
(assert (str.prefixof var2903 var2903!1))
(assert true)
(define-const var3101 String (getName/-1714936033 var1051)) ; Statement: $r7 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>() 
(assert true)
(define-const var1910 String (append/672562846 var1798 var3101)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 var3101)))
(assert true)
(define-const var3052 String (append/672562846 var1910 " => ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 " => ")))
(assert true)
(define-const var968 String (append/672562846 var3052 var106)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3052!1 String)
(assert (= var3052!1 (str.++ var3052 var106)))
(assert true)
(define-const var2939 String (toString/-2075883882 var968)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/195329929 (cast-from-var2786-to-var3831 var923) var2939 null-var581 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable,boolean,boolean)>($r13, null, 0, 0) 

(declare-const var923!1 var2786)
(declare-const var2939!1 String)
(declare-const var134 var1024)
(declare-const var2081 Int)
(declare-const var2081!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSource/118611882=([jdk.nashorn.internal.ir.FunctionNode], jdk.nashorn.internal.runtime.Source), getURL/1634998554=([jdk.nashorn.internal.runtime.Source], java.net.URL), var2802_access$000/1454236011=([java.net.URL], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/-1714936033=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/195329929=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable, boolean, boolean], void), cast-from-var2786-to-var3831=([jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException], java.lang.RuntimeException)}
; {var2786=jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException, var923=r0, var518=jdk.nashorn.internal.ir.FunctionNode, var1051=r2, var106=r10, var1024=null_type, var3795=$r1, var1003=jdk.nashorn.internal.runtime.Source, var3460=$r3, var115=java.net.URL, var2755=$r4, var2802=jdk.nashorn.internal.codegen.ApplySpecialization, var3251=$r5, var2903=$r6, var1798=$r8, var3101=$r7, var1910=$r9, var3052=$r11, var968=$r12, var2939=$r13, var3831=java.lang.RuntimeException, var581=java.lang.Throwable, var134=null, var2081=0}
; {jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException=var2786, r0=var923, jdk.nashorn.internal.ir.FunctionNode=var518, r2=var1051, r10=var106, null_type=var1024, $r1=var3795, jdk.nashorn.internal.runtime.Source=var1003, $r3=var3460, java.net.URL=var115, $r4=var2755, jdk.nashorn.internal.codegen.ApplySpecialization=var2802, $r5=var3251, $r6=var2903, $r8=var1798, $r7=var3101, $r9=var1910, $r11=var3052, $r12=var968, $r13=var2939, java.lang.RuntimeException=var3831, java.lang.Throwable=var581, null=var134, 0=var2081}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.ApplySpecialization$TransformFailedException;	r2 := @parameter0: jdk.nashorn.internal.ir.FunctionNode;	r10 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: jdk.nashorn.internal.runtime.Source getSource()>();	$r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Source: java.net.URL getURL()>();	$r5 = staticinvoke <jdk.nashorn.internal.codegen.ApplySpecialization: java.lang.String access$000(java.net.URL)>($r4);	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke r2.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable,boolean,boolean)>($r13, null, 0, 0);	return
;block_num 1