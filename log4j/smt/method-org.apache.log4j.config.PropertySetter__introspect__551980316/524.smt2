(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var157 0)
(declare-sort var3123 0)
(declare-sort var2725 0)
(declare-sort var1096 0)
(declare-sort var3548 0)
(declare-sort var1575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun obj/-2088282186 (var157) var3123)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var3123) String)
(declare-fun getMessage/849299655 (var1096) String)
(declare-fun cast-from-var2725-to-var1096 (var2725) var1096)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3548_error/-402343703 (String) void)
(declare-fun arr-var1575-init () (Array Int var1575))
(declare-fun props/-2088282186 (var157) (Array Int var1575))
(declare-const null-var157 var157)
(declare-const null-var2725 var2725)
(declare-const var3305 var157) ; Statement: r0 := @this: org.apache.log4j.config.PropertySetter 
(assert (not (= var3305 null-var157)))
(define-const var1974 var3123 (obj/-2088282186 var3305)) ; Statement: $r1 = r0.<org.apache.log4j.config.PropertySetter: java.lang.Object obj> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2484 var2725) ; Statement: $r4 := @caughtexception 
(assert (not (= var2484 null-var2725)))
(define-const var2684 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2684)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2684!1 String)
(assert true)
(define-const var16 String (append/1560614132 var2684!1 "Failed to introspect ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Failed to introspect ") 
(declare-const var2684!2 String)
(assert (str.prefixof var2684!1 var2684!2))
(define-const var2154 var3123 (obj/-2088282186 var3305)) ; Statement: $r6 = r0.<org.apache.log4j.config.PropertySetter: java.lang.Object obj> 
(assert true)
(define-const var3712 String (append/-143899486 var16 var2154)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r6) 
(assert true)
(define-const var3059 String (append/1560614132 var3712 ": ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(": ") 
(declare-const var3712!1 String)
(assert (str.prefixof var3712 var3712!1))
(assert true)
(define-const var3696 String (getMessage/849299655 (cast-from-var2725-to-var1096 var2484))) ; Statement: $r9 = virtualinvoke $r4.<java.beans.IntrospectionException: java.lang.String getMessage()>() 
(assert true)
(define-const var332 String (append/1560614132 var3059 var3696)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var3059!1 String)
(assert (str.prefixof var3059 var3059!1))
(assert true)
(define-const var3880 String (toString/-222306083 var332)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3548_error/-402343703 var3880)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r12) 

(declare-const var3880!1 String)
(define-const var3772 (Array Int var1575) arr-var1575-init) ; Statement: $r13 = newarray (java.beans.PropertyDescriptor)[0] 
(declare-const var3305!1 var157)
(assert (not (= var3305!1 null-var157)))
(assert (= (props/-2088282186 var3305!1) var3772)) ; Statement: r0.<org.apache.log4j.config.PropertySetter: java.beans.PropertyDescriptor[] props> = $r13 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {obj/-2088282186=([org.apache.log4j.config.PropertySetter], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2725-to-var1096=([java.beans.IntrospectionException], java.lang.Throwable), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3548_error/-402343703=([java.lang.String], void), arr-var1575-init=([], java.beans.PropertyDescriptor[]), props/-2088282186=([org.apache.log4j.config.PropertySetter], java.beans.PropertyDescriptor[])}
; {var157=org.apache.log4j.config.PropertySetter, var3305=r0, var3123=java.lang.Object, var1974=$r1, var2725=java.beans.IntrospectionException, var2484=$r4, var2684=$r5, var16=$r7, var2154=$r6, var3712=$r8, var3059=$r10, var1096=java.lang.Throwable, var3696=$r9, var332=$r11, var3880=$r12, var3548=org.apache.log4j.helpers.LogLog, var1575=java.beans.PropertyDescriptor, var3772=$r13}
; {org.apache.log4j.config.PropertySetter=var157, r0=var3305, java.lang.Object=var3123, $r1=var1974, java.beans.IntrospectionException=var2725, $r4=var2484, $r5=var2684, $r7=var16, $r6=var2154, $r8=var3712, $r10=var3059, java.lang.Throwable=var1096, $r9=var3696, $r11=var332, $r12=var3880, org.apache.log4j.helpers.LogLog=var3548, java.beans.PropertyDescriptor=var1575, $r13=var3772}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.config.PropertySetter;	$r1 = r0.<org.apache.log4j.config.PropertySetter: java.lang.Object obj>;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Failed to introspect ");	$r6 = r0.<org.apache.log4j.config.PropertySetter: java.lang.Object obj>;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(": ");	$r9 = virtualinvoke $r4.<java.beans.IntrospectionException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r12);	$r13 = newarray (java.beans.PropertyDescriptor)[0];	r0.<org.apache.log4j.config.PropertySetter: java.beans.PropertyDescriptor[] props> = $r13;	return
;block_num 3