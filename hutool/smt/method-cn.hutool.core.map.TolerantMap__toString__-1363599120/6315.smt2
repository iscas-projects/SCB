(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var1614 0)
(declare-sort var3335 0)
(declare-sort var3206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRaw/68664683 (var3335) var1614)
(declare-fun cast-from-var335-to-var3335 (var335) var3335)
(declare-fun append/-1031950772 (String var3206) String)
(declare-fun cast-from-var1614-to-var3206 (var1614) var3206)
(declare-fun defaultValue/-2060966312 (var335) var3206)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var335 var335)
(declare-const var215 var335) ; Statement: r1 := @this: cn.hutool.core.map.TolerantMap 
(assert (not (= var215 null-var335)))
(define-const var391 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var391)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var391!1 String)
(assert (= var391!1 ""))
(assert true)
(define-const var1032 String (append/672562846 var391!1 "TolerantMap{map=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TolerantMap{map=") 
(declare-const var391!2 String)
(assert (= var391!2 (str.++ var391!1 "TolerantMap{map=")))
(assert true)
(define-const var262 var1614 (getRaw/68664683 (cast-from-var335-to-var3335 var215))) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.map.TolerantMap: java.util.Map getRaw()>() 
(assert true)
(define-const var3645 String (append/-1031950772 var1032 (cast-from-var1614-to-var3206 var262))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1032!1 String)
(assert (str.prefixof var1032 var1032!1))
(assert true)
(define-const var2228 String (append/672562846 var3645 ", defaultValue=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", defaultValue=") 
(declare-const var3645!1 String)
(assert (= var3645!1 (str.++ var3645 ", defaultValue=")))
(define-const var1956 var3206 (defaultValue/-2060966312 var215)) ; Statement: $r5 = r1.<cn.hutool.core.map.TolerantMap: java.lang.Object defaultValue> 
(assert true)
(define-const var3639 String (append/-1031950772 var2228 var1956)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2228!1 String)
(assert (str.prefixof var2228 var2228!1))
(assert true)
(define-const var2754 String (append/-1166366385 var3639 125)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3639!1 String)
(assert (str.prefixof var3639 var3639!1))
(assert true)
(define-const var1399 String (toString/-2075883882 var2754)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRaw/68664683=([cn.hutool.core.map.MapWrapper], java.util.Map), cast-from-var335-to-var3335=([cn.hutool.core.map.TolerantMap], cn.hutool.core.map.MapWrapper), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1614-to-var3206=([java.util.Map], java.lang.Object), defaultValue/-2060966312=([cn.hutool.core.map.TolerantMap], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var335=cn.hutool.core.map.TolerantMap, var215=r1, var391=$r0, var1032=$r3, var1614=java.util.Map, var3335=cn.hutool.core.map.MapWrapper, var262=$r2, var3206=java.lang.Object, var3645=$r4, var2228=$r6, var1956=$r5, var3639=$r7, var2754=$r8, var1399=$r9}
; {cn.hutool.core.map.TolerantMap=var335, r1=var215, $r0=var391, $r3=var1032, java.util.Map=var1614, cn.hutool.core.map.MapWrapper=var3335, $r2=var262, java.lang.Object=var3206, $r4=var3645, $r6=var2228, $r5=var1956, $r7=var3639, $r8=var2754, $r9=var1399}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.map.TolerantMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TolerantMap{map=");	$r2 = virtualinvoke r1.<cn.hutool.core.map.TolerantMap: java.util.Map getRaw()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", defaultValue=");	$r5 = r1.<cn.hutool.core.map.TolerantMap: java.lang.Object defaultValue>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1