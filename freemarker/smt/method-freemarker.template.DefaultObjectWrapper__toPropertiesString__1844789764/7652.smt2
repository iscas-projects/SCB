(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var505 0)
(declare-sort var3133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toPropertiesString/-1547681379 (var3133) String)
(declare-fun cast-from-var505-to-var3133 (var505) var3133)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun useAdaptersForContainers/-1651605921 (var505) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun forceLegacyNonListCollections/-1651605921 (var505) Bool)
(declare-fun iterableSupport/-1651605921 (var505) Bool)
(declare-fun domNodeSupport/-1651605921 (var505) Bool)
(declare-fun jythonSupport/-1651605921 (var505) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var505 var505)
(declare-const var843 var505) ; Statement: r0 := @this: freemarker.template.DefaultObjectWrapper 
(assert (not (= var843 null-var505)))
(assert true)
(define-const var3387 String (toPropertiesString/-1547681379 (cast-from-var505-to-var3133 var843))) ; Statement: r2 = specialinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.String toPropertiesString()>() 
(assert true)
(define-const var3071 Bool (startsWith/-1785782452 var3387 "simpleMapWrapper")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("simpleMapWrapper") 
 ; Statement: if $z0 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var3071 1 0) 0)) ; Cond: $z0 == 0 
(define-const var991 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var991)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var991!1 String)
(assert (= var991!1 ""))
(assert true)
(define-const var2382 String (append/672562846 var991!1 "useAdaptersForContainers=")) ; Statement: $r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("useAdaptersForContainers=") 
(declare-const var991!2 String)
(assert (= var991!2 (str.++ var991!1 "useAdaptersForContainers=")))
(define-const var3064 Bool (useAdaptersForContainers/-1651605921 var843)) ; Statement: $z1 = r0.<freemarker.template.DefaultObjectWrapper: boolean useAdaptersForContainers> 
(assert true)
(define-const var1872 String (append/-388390247 var2382 var3064)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var2382!1 String)
(assert (str.prefixof var2382 var2382!1))
(assert true)
(define-const var2192 String (append/672562846 var1872 ", forceLegacyNonListCollections=")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", forceLegacyNonListCollections=") 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 ", forceLegacyNonListCollections=")))
(define-const var2721 Bool (forceLegacyNonListCollections/-1651605921 var843)) ; Statement: $z2 = r0.<freemarker.template.DefaultObjectWrapper: boolean forceLegacyNonListCollections> 
(assert true)
(define-const var766 String (append/-388390247 var2192 var2721)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var2192!1 String)
(assert (str.prefixof var2192 var2192!1))
(assert true)
(define-const var2790 String (append/672562846 var766 ", iterableSupport=")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", iterableSupport=") 
(declare-const var766!1 String)
(assert (= var766!1 (str.++ var766 ", iterableSupport=")))
(define-const var75 Bool (iterableSupport/-1651605921 var843)) ; Statement: $z3 = r0.<freemarker.template.DefaultObjectWrapper: boolean iterableSupport> 
(assert true)
(define-const var3480 String (append/-388390247 var2790 var75)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3) 
(declare-const var2790!1 String)
(assert (str.prefixof var2790 var2790!1))
(assert true)
(define-const var154 String (append/672562846 var3480 ", domNodeSupport=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", domNodeSupport=") 
(declare-const var3480!1 String)
(assert (= var3480!1 (str.++ var3480 ", domNodeSupport=")))
(define-const var2322 Bool (domNodeSupport/-1651605921 var843)) ; Statement: $z4 = r0.<freemarker.template.DefaultObjectWrapper: boolean domNodeSupport> 
(assert true)
(define-const var2107 String (append/-388390247 var154 var2322)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z4) 
(declare-const var154!1 String)
(assert (str.prefixof var154 var154!1))
(assert true)
(define-const var17 String (append/672562846 var2107 ", jythonSupport=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", jythonSupport=") 
(declare-const var2107!1 String)
(assert (= var2107!1 (str.++ var2107 ", jythonSupport=")))
(define-const var327 Bool (jythonSupport/-1651605921 var843)) ; Statement: $z5 = r0.<freemarker.template.DefaultObjectWrapper: boolean jythonSupport> 
(assert true)
(define-const var266 String (append/-388390247 var17 var327)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z5) 
(declare-const var17!1 String)
(assert (str.prefixof var17 var17!1))
(assert true)
(define-const var2852 String (append/672562846 var266 var3387)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var266!1 String)
(assert (= var266!1 (str.++ var266 var3387)))
(assert true)
(define-const var2008 String (toString/-2075883882 var2852)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {toPropertiesString/-1547681379=([freemarker.ext.beans.BeansWrapper], java.lang.String), cast-from-var505-to-var3133=([freemarker.template.DefaultObjectWrapper], freemarker.ext.beans.BeansWrapper), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), useAdaptersForContainers/-1651605921=([freemarker.template.DefaultObjectWrapper], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), forceLegacyNonListCollections/-1651605921=([freemarker.template.DefaultObjectWrapper], boolean), iterableSupport/-1651605921=([freemarker.template.DefaultObjectWrapper], boolean), domNodeSupport/-1651605921=([freemarker.template.DefaultObjectWrapper], boolean), jythonSupport/-1651605921=([freemarker.template.DefaultObjectWrapper], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var505=freemarker.template.DefaultObjectWrapper, var843=r0, var3133=freemarker.ext.beans.BeansWrapper, var3387=r2, var3071=$z0, var991=$r16, var2382=$r4, var3064=$z1, var1872=$r5, var2192=$r6, var2721=$z2, var766=$r7, var2790=$r8, var75=$z3, var3480=$r9, var154=$r10, var2322=$z4, var2107=$r11, var17=$r12, var327=$z5, var266=$r13, var2852=$r14, var2008=$r15}
; {freemarker.template.DefaultObjectWrapper=var505, r0=var843, freemarker.ext.beans.BeansWrapper=var3133, r2=var3387, $z0=var3071, $r16=var991, $r4=var2382, $z1=var3064, $r5=var1872, $r6=var2192, $z2=var2721, $r7=var766, $r8=var2790, $z3=var75, $r9=var3480, $r10=var154, $z4=var2322, $r11=var2107, $r12=var17, $z5=var327, $r13=var266, $r14=var2852, $r15=var2008}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.DefaultObjectWrapper;	r2 = specialinvoke r0.<freemarker.ext.beans.BeansWrapper: java.lang.String toPropertiesString()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("simpleMapWrapper");	if $z0 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("useAdaptersForContainers=");	$z1 = r0.<freemarker.template.DefaultObjectWrapper: boolean useAdaptersForContainers>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", forceLegacyNonListCollections=");	$z2 = r0.<freemarker.template.DefaultObjectWrapper: boolean forceLegacyNonListCollections>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", iterableSupport=");	$z3 = r0.<freemarker.template.DefaultObjectWrapper: boolean iterableSupport>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", domNodeSupport=");	$z4 = r0.<freemarker.template.DefaultObjectWrapper: boolean domNodeSupport>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", jythonSupport=");	$z5 = r0.<freemarker.template.DefaultObjectWrapper: boolean jythonSupport>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z5);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2