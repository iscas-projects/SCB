(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var238 0)
(declare-sort var1009 0)
(declare-sort var551 0)
(declare-sort var941 0)
(declare-sort var1053 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1053_jQuoteNoXSS/34347637 (String) String)
(declare-fun object/169454009 (var238) var2618)
(declare-fun getClass/1258963082 (var2618) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun append/-1031950772 (String var2618) String)
(declare-fun cast-from-var551-to-var2618 (var551) var2618)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/32568335 (var941 String) void)
(declare-const null-var238 var238)
(declare-const null-String String)
(declare-const null-var551 var551)
(declare-const var238-LOG var941)
(declare-const var2119 var238) ; Statement: r6 := @this: freemarker.ext.beans.BeanModel 
(assert (not (= var2119 null-var238)))
(declare-const var711 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var711 null-String)))
(declare-const var3737 var551) ; Statement: r12 := @parameter1: java.util.Map 
(assert (not (= var3737 null-var551)))
(define-const var52 var941 var238-LOG) ; Statement: $r1 = <freemarker.ext.beans.BeanModel: freemarker.log.Logger LOG> 
(define-const var3692 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3692)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3692!1 String)
(assert (= var3692!1 ""))
(assert true)
(define-const var3178 String (append/672562846 var3692!1 "Key ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key ") 
(declare-const var3692!2 String)
(assert (= var3692!2 (str.++ var3692!1 "Key ")))
(define-const var3663 String (var1053_jQuoteNoXSS/34347637 var711)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r2) 
(assert true)
(define-const var1877 String (append/672562846 var3178 var3663)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3178!1 String)
(assert (= var3178!1 (str.++ var3178 var3663)))
(assert true)
(define-const var910 String (append/672562846 var1877 " was not found on instance of ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found on instance of ") 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 " was not found on instance of ")))
(define-const var2711 var2618 (object/169454009 var2119)) ; Statement: $r7 = r6.<freemarker.ext.beans.BeanModel: java.lang.Object object> 
(assert true)
(define-const var3037 ClassObject (getClass/1258963082 var2711)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3650 String (getName/-1958580599 var3037)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var285 String (append/672562846 var910 var3650)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var910!1 String)
(assert (= var910!1 (str.++ var910 var3650)))
(assert true)
(define-const var1938 String (append/672562846 var285 ". Introspection information for the class is: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Introspection information for the class is: ") 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 ". Introspection information for the class is: ")))
(assert true)
(define-const var2235 String (append/-1031950772 var1938 (cast-from-var551-to-var2618 var3737))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r12) 
(declare-const var1938!1 String)
(assert (str.prefixof var1938 var1938!1))
(assert true)
(define-const var316 String (toString/-2075883882 var2235)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/32568335 var52 var316)) ; Statement: virtualinvoke $r1.<freemarker.log.Logger: void debug(java.lang.String)>($r15) 

(declare-const var52!1 var941)
(declare-const var316!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1053_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), object/169454009=([freemarker.ext.beans.BeanModel], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var551-to-var2618=([java.util.Map], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/32568335=([freemarker.log.Logger, java.lang.String], void)}
; {var238=freemarker.ext.beans.BeanModel, var2119=r6, var711=r2, var1009=null_type, var551=java.util.Map, var3737=r12, var941=freemarker.log.Logger, var52=$r1, var3692=$r0, var3178=$r4, var1053=freemarker.template.utility.StringUtil, var3663=$r3, var1877=$r5, var910=$r10, var2618=java.lang.Object, var2711=$r7, var3037=$r8, var3650=$r9, var285=$r11, var1938=$r13, var2235=$r14, var316=$r15}
; {freemarker.ext.beans.BeanModel=var238, r6=var2119, r2=var711, null_type=var1009, java.util.Map=var551, r12=var3737, freemarker.log.Logger=var941, $r1=var52, $r0=var3692, $r4=var3178, freemarker.template.utility.StringUtil=var1053, $r3=var3663, $r5=var1877, $r10=var910, java.lang.Object=var2618, $r7=var2711, $r8=var3037, $r9=var3650, $r11=var285, $r13=var1938, $r14=var2235, $r15=var316}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: freemarker.ext.beans.BeanModel;	r2 := @parameter0: java.lang.String;	r12 := @parameter1: java.util.Map;	$r1 = <freemarker.ext.beans.BeanModel: freemarker.log.Logger LOG>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Key ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was not found on instance of ");	$r7 = r6.<freemarker.ext.beans.BeanModel: java.lang.Object object>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Introspection information for the class is: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<freemarker.log.Logger: void debug(java.lang.String)>($r15);	return
;block_num 1