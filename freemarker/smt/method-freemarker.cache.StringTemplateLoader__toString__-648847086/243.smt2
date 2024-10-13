(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var1182 0)
(declare-sort var395 0)
(declare-sort var211 0)
(declare-sort var450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1182_getClassNameForToString/-104682099 (var395) String)
(declare-fun cast-from-var2495-to-var395 (var2495) var395)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun templates/-138663950 (var2495) var211)
(declare-fun var211_keySet/-712633290 (var211) var450)
(declare-fun var450_iterator/1911472585 (var450) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2495 var2495)
(declare-const var320 var2495) ; Statement: r1 := @this: freemarker.cache.StringTemplateLoader 
(assert (not (= var320 null-var2495)))
(define-const var2475 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2475)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2475!1 String)
(assert (= var2475!1 ""))
(define-const var3063 String (var1182_getClassNameForToString/-104682099 (cast-from-var2495-to-var395 var320))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
;(assert (append/672562846 var2475!1 var3063)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2475!2 String)
(assert (= var2475!2 (str.++ var2475!1 var3063)))
(assert true)
;(assert (append/672562846 var2475!2 "(Map { ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Map { ") 
(declare-const var2475!3 String)
(assert (= var2475!3 (str.++ var2475!2 "(Map { ")))
(define-const var1246 Int 0) ; Statement: i0 = 0 
(define-const var2152 var211 (templates/-138663950 var320)) ; Statement: $r3 = r1.<freemarker.cache.StringTemplateLoader: java.util.Map templates> 
(define-const var3072 var450 (var211_keySet/-712633290 var2152)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>() 
(define-const var987 Iterator (var450_iterator/1911472585 var3072)) ; Statement: r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3921 Bool (Iterator_hasNext/-1669924200 var987)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3921 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if i0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(assert (= var1246 0)) ; Cond: i0 == 0 
(assert true)
;(assert (append/672562846 var2475!3 "})")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var2475!4 String)
(assert (= var2475!4 (str.++ var2475!3 "})")))
(assert true)
(define-const var1455 String (toString/-2075883882 var2475!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1182_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var2495-to-var395=([freemarker.cache.StringTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), templates/-138663950=([freemarker.cache.StringTemplateLoader], java.util.Map), var211_keySet/-712633290=([java.util.Map], java.util.Set), var450_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2495=freemarker.cache.StringTemplateLoader, var320=r1, var2475=$r0, var1182=freemarker.cache.TemplateLoaderUtils, var395=freemarker.cache.TemplateLoader, var3063=$r2, var1246=i0, var211=java.util.Map, var2152=$r3, var450=java.util.Set, var3072=$r4, var987=r5, var3921=$z0, var1455=$r6}
; {freemarker.cache.StringTemplateLoader=var2495, r1=var320, $r0=var2475, freemarker.cache.TemplateLoaderUtils=var1182, freemarker.cache.TemplateLoader=var395, $r2=var3063, i0=var1246, java.util.Map=var211, $r3=var2152, java.util.Set=var450, $r4=var3072, r5=var987, $z0=var3921, $r6=var1455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.StringTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(Map { ");	i0 = 0;	$r3 = r1.<freemarker.cache.StringTemplateLoader: java.util.Map templates>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.util.Set keySet()>();	r5 = interfaceinvoke $r4.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if i0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 4