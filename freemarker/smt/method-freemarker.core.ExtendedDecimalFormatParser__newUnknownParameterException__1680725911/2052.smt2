(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3530 0)
(declare-sort var2201 0)
(declare-sort var3491 0)
(declare-sort var3537 0)
(declare-sort var2755 0)
(declare-sort var1536 0)
(declare-sort var1854 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3491_jQuote/1315253176 (String) String)
(declare-fun keySet/1586104932 (var3537) var2755)
(declare-fun var2755_size/-649653377 (var2755) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2755_toArray/-250983565 (var2755 (Array Int var1536)) (Array Int var1536))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1536__ ((Array Int String)) (Array Int var1536))
(declare-fun cast-from-__Array__Int__var1536__-to-__Array__Int__String__ ((Array Int var1536)) (Array Int String))
(declare-fun var1854_sort/-2094180924 ((Array Int var1536)) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2597-init () var2597)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var2597 String Int) void)
(declare-const null-var3530 var3530)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3530-PARAM_HANDLERS var3537)
(declare-const var3973 var3530) ; Statement: r12 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3973 null-var3530)))
(declare-const var336 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var336 null-String)))
(declare-const var2931 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2931 null-Int)))
(define-const var905 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var905 128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(128) 

(declare-const var905!1 String)
(declare-const var2742 Int)
(assert true)
(define-const var1084 String (append/672562846 var905!1 "Unsupported parameter name, ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported parameter name, ") 
(declare-const var905!2 String)
(assert (= var905!2 (str.++ var905!1 "Unsupported parameter name, ")))
(define-const var937 String (var3491_jQuote/1315253176 var336)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r1) 
(assert true)
;(assert (append/672562846 var1084 var937)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1084!1 String)
(assert (= var1084!1 (str.++ var1084 var937)))
(assert true)
;(assert (append/672562846 var905!2 ". The supported names are: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". The supported names are: ") 
(declare-const var905!3 String)
(assert (= var905!3 (str.++ var905!2 ". The supported names are: ")))
(define-const var2714 var3537 var3530-PARAM_HANDLERS) ; Statement: $r4 = <freemarker.core.ExtendedDecimalFormatParser: java.util.HashMap PARAM_HANDLERS> 
(assert true)
(define-const var2872 var2755 (keySet/1586104932 var2714)) ; Statement: r5 = virtualinvoke $r4.<java.util.HashMap: java.util.Set keySet()>() 
(define-const var2255 Int (var2755_size/-649653377 var2872)) ; Statement: $i0 = interfaceinvoke r5.<java.util.Set: int size()>() 
(define-const var2785 (Array Int String) arr-String-init) ; Statement: $r6 = newarray (java.lang.String)[$i0] 
(define-const var35 (Array Int var1536) (var2755_toArray/-250983565 var2872 (cast-from-__Array__Int__String__-to-__Array__Int__var1536__ var2785))) ; Statement: $r7 = interfaceinvoke r5.<java.util.Set: java.lang.Object[] toArray(java.lang.Object[])>($r6) 
(define-const var491 (Array Int String) (cast-from-__Array__Int__var1536__-to-__Array__Int__String__ var35)) ; Statement: r8 = (java.lang.String[]) $r7 
;(assert (var1854_sort/-2094180924 (cast-from-__Array__Int__String__-to-__Array__Int__var1536__ var491))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>(r8) 

(declare-const var491!1 (Array Int String))
(define-const var1574 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3769 Int (getLength-Arr-String-1 var491!1)) ; Statement: $i1 = lengthof r8 
 ; Statement: if i3 >= $i1 goto $r9 = new java.text.ParseException 
(assert (>= var1574 var3769)) ; Cond: i3 >= $i1 
(define-const var1734 var2597 var2597-init) ; Statement: $r9 = new java.text.ParseException 
(assert true)
(define-const var621 String (toString/-2075883882 var905!3)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1495607482 var1734 var621 var2931)) ; Statement: specialinvoke $r9.<java.text.ParseException: void <init>(java.lang.String,int)>($r10, i2) 

(declare-const var1734!1 var2597)
(declare-const var621!1 String)
(declare-const var2931!1 Int)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3491_jQuote/1315253176=([java.lang.String], java.lang.String), keySet/1586104932=([java.util.HashMap], java.util.Set), var2755_size/-649653377=([java.util.Set], int), arr-String-init=([], java.lang.String[]), var2755_toArray/-250983565=([java.util.Set, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var1536__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var1536__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[]), var1854_sort/-2094180924=([java.lang.Object[]], void), getLength-Arr-String-1=([java.lang.String[]], int), var2597-init=([], java.text.ParseException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var3530=freemarker.core.ExtendedDecimalFormatParser, var3973=r12, var336=r1, var2201=null_type, var2931=i2, var905=$r0, var2742=128, var1084=$r3, var3491=freemarker.template.utility.StringUtil, var937=$r2, var3537=java.util.HashMap, var2714=$r4, var2755=java.util.Set, var2872=r5, var2255=$i0, var2785=$r6, var1536=java.lang.Object, var35=$r7, var491=r8, var1854=java.util.Arrays, var1574=i3, var3769=$i1, var2597=java.text.ParseException, var1734=$r9, var621=$r10}
; {freemarker.core.ExtendedDecimalFormatParser=var3530, r12=var3973, r1=var336, null_type=var2201, i2=var2931, $r0=var905, 128=var2742, $r3=var1084, freemarker.template.utility.StringUtil=var3491, $r2=var937, java.util.HashMap=var3537, $r4=var2714, java.util.Set=var2755, r5=var2872, $i0=var2255, $r6=var2785, java.lang.Object=var1536, $r7=var35, r8=var491, java.util.Arrays=var1854, i3=var1574, $i1=var3769, java.text.ParseException=var2597, $r9=var1734, $r10=var621}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: freemarker.core.ExtendedDecimalFormatParser;	r1 := @parameter0: java.lang.String;	i2 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(128);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported parameter name, ");	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". The supported names are: ");	$r4 = <freemarker.core.ExtendedDecimalFormatParser: java.util.HashMap PARAM_HANDLERS>;	r5 = virtualinvoke $r4.<java.util.HashMap: java.util.Set keySet()>();	$i0 = interfaceinvoke r5.<java.util.Set: int size()>();	$r6 = newarray (java.lang.String)[$i0];	$r7 = interfaceinvoke r5.<java.util.Set: java.lang.Object[] toArray(java.lang.Object[])>($r6);	r8 = (java.lang.String[]) $r7;	staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>(r8);	i3 = 0;	$i1 = lengthof r8;	if i3 >= $i1 goto $r9 = new java.text.ParseException;	$r9 = new java.text.ParseException;	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.text.ParseException: void <init>(java.lang.String,int)>($r10, i2);	return $r9
;block_num 3