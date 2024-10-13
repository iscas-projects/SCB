(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1930 0)
(declare-sort var468 0)
(declare-sort var664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1196933650 (var468) void)
(declare-fun cast-from-var1930-to-var468 (var1930) var468)
(declare-fun setContentStart/-305650476 (var468 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var664_lineSeparator/-342590142 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFieldSeparator/766569266 (var468 String) void)
(declare-fun setFieldSeparatorAtStart/1616699380 (var468 Bool) void)
(declare-fun setContentEnd/-1348493125 (var468 String) void)
(declare-const null-var1930 var1930)
(declare-const var1196 var1930) ; Statement: r0 := @this: org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle 
(assert (not (= var1196 null-var1930)))
(assert true)
;(assert (<init>/-1196933650 (cast-from-var1930-to-var468 var1196))) ; Statement: specialinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle: void <init>()>() 

(declare-const var1196!1 var1930)
(assert true)
;(assert (setContentStart/-305650476 (cast-from-var1930-to-var468 var1196!1) "[")) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setContentStart(java.lang.String)>("[") 

(declare-const var1196!2 var1930)
(declare-const var432 String)
(define-const var2093 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2093)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2093!1 String)
(assert (= var2093!1 ""))
(define-const var3034 String var664_lineSeparator/-342590142) ; Statement: $r2 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var2207 String (append/672562846 var2093!1 var3034)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2093!2 String)
(assert (= var2093!2 (str.++ var2093!1 var3034)))
(assert true)
(define-const var610 String (append/672562846 var2207 "  ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2207!1 String)
(assert (= var2207!1 (str.++ var2207 "  ")))
(assert true)
(define-const var839 String (toString/-2075883882 var610)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setFieldSeparator/766569266 (cast-from-var1930-to-var468 var1196!2) var839)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setFieldSeparator(java.lang.String)>($r5) 

(declare-const var1196!3 var1930)
(declare-const var839!1 String)
(assert true)
;(assert (setFieldSeparatorAtStart/1616699380 (cast-from-var1930-to-var468 var1196!3) (ite (= 1 1) true false))) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setFieldSeparatorAtStart(boolean)>(1) 

(declare-const var1196!4 var1930)
(declare-const var2375 Int)
(define-const var1214 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1214)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1214!1 String)
(assert (= var1214!1 ""))
(define-const var176 String var664_lineSeparator/-342590142) ; Statement: $r7 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var3512 String (append/672562846 var1214!1 var176)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1214!2 String)
(assert (= var1214!2 (str.++ var1214!1 var176)))
(assert true)
(define-const var3258 String (append/672562846 var3512 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3512!1 String)
(assert (= var3512!1 (str.++ var3512 "]")))
(assert true)
(define-const var1758 String (toString/-2075883882 var3258)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setContentEnd/-1348493125 (cast-from-var1930-to-var468 var1196!4) var1758)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setContentEnd(java.lang.String)>($r10) 

(declare-const var1196!5 var1930)
(declare-const var1758!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1196933650=([org.apache.commons.lang3.builder.ToStringStyle], void), cast-from-var1930-to-var468=([org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle], org.apache.commons.lang3.builder.ToStringStyle), setContentStart/-305650476=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var664_lineSeparator/-342590142=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFieldSeparator/766569266=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.String], void), setFieldSeparatorAtStart/1616699380=([org.apache.commons.lang3.builder.ToStringStyle, boolean], void), setContentEnd/-1348493125=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.String], void)}
; {var1930=org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle, var1196=r0, var468=org.apache.commons.lang3.builder.ToStringStyle, var432="[", var2093=$r1, var664=java.lang.System, var3034=$r2, var2207=$r3, var610=$r4, var839=$r5, var2375=1, var1214=$r6, var176=$r7, var3512=$r8, var3258=$r9, var1758=$r10}
; {org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle=var1930, r0=var1196, org.apache.commons.lang3.builder.ToStringStyle=var468, "["=var432, $r1=var2093, java.lang.System=var664, $r2=var3034, $r3=var2207, $r4=var610, $r5=var839, 1=var2375, $r6=var1214, $r7=var176, $r8=var3512, $r9=var3258, $r10=var1758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle;	specialinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle: void <init>()>();	virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setContentStart(java.lang.String)>("[");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setFieldSeparator(java.lang.String)>($r5);	virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setFieldSeparatorAtStart(boolean)>(1);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$MultiLineToStringStyle: void setContentEnd(java.lang.String)>($r10);	return
;block_num 1