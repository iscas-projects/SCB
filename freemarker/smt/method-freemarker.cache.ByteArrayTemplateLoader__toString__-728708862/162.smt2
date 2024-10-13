(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var960 0)
(declare-sort var2675 0)
(declare-sort var1750 0)
(declare-sort var1440 0)
(declare-sort var1319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2675_getClassNameForToString/-104682099 (var1750) String)
(declare-fun cast-from-var960-to-var1750 (var960) var1750)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun templates/658355434 (var960) var1440)
(declare-fun var1440_keySet/-712633290 (var1440) var1319)
(declare-fun var1319_iterator/1911472585 (var1319) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var960 var960)
(declare-const var1865 var960) ; Statement: r1 := @this: freemarker.cache.ByteArrayTemplateLoader 
(assert (not (= var1865 null-var960)))
(define-const var2203 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2203)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2203!1 String)
(assert (= var2203!1 ""))
(define-const var756 String (var2675_getClassNameForToString/-104682099 (cast-from-var960-to-var1750 var1865))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
;(assert (append/672562846 var2203!1 var756)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2203!2 String)
(assert (= var2203!2 (str.++ var2203!1 var756)))
(assert true)
;(assert (append/672562846 var2203!2 "(Map { ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Map { ") 
(declare-const var2203!3 String)
(assert (= var2203!3 (str.++ var2203!2 "(Map { ")))
(define-const var541 Int 0) ; Statement: i0 = 0 
(define-const var3216 var1440 (templates/658355434 var1865)) ; Statement: $r3 = r1.<freemarker.cache.ByteArrayTemplateLoader: java.util.Map templates> 
(define-const var2468 var1319 (var1440_keySet/-712633290 var3216)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>() 
(define-const var2420 Iterator (var1319_iterator/1911472585 var2468)) ; Statement: r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2446 Bool (Iterator_hasNext/-1669924200 var2420)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2446 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(assert (= var541 0)) ; Cond: i0 == 0 
(assert true)
;(assert (append/672562846 var2203!3 "})")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var2203!4 String)
(assert (= var2203!4 (str.++ var2203!3 "})")))
(assert true)
(define-const var3223 String (toString/-2075883882 var2203!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2675_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var960-to-var1750=([freemarker.cache.ByteArrayTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), templates/658355434=([freemarker.cache.ByteArrayTemplateLoader], java.util.Map), var1440_keySet/-712633290=([java.util.Map], java.util.Set), var1319_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var960=freemarker.cache.ByteArrayTemplateLoader, var1865=r1, var2203=$r0, var2675=freemarker.cache.TemplateLoaderUtils, var1750=freemarker.cache.TemplateLoader, var756=$r2, var541=i0, var1440=java.util.Map, var3216=$r3, var1319=java.util.Set, var2468=$r4, var2420=r5, var2446=$z0, var3223=$r6}
; {freemarker.cache.ByteArrayTemplateLoader=var960, r1=var1865, $r0=var2203, freemarker.cache.TemplateLoaderUtils=var2675, freemarker.cache.TemplateLoader=var1750, $r2=var756, i0=var541, java.util.Map=var1440, $r3=var3216, java.util.Set=var1319, $r4=var2468, r5=var2420, $z0=var2446, $r6=var3223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.ByteArrayTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Map { ");	i0 = 0;	$r3 = r1.<freemarker.cache.ByteArrayTemplateLoader: java.util.Map templates>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>();	r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if i0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4