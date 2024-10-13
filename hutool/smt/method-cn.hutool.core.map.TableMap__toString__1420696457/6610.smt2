(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var680 0)
(declare-sort var1240 0)
(declare-sort var2856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun keys/-271992919 (var680) var1240)
(declare-fun append/-1031950772 (String var2856) String)
(declare-fun cast-from-var1240-to-var2856 (var1240) var2856)
(declare-fun values/-271992919 (var680) var1240)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var680 var680)
(declare-const var905 var680) ; Statement: r1 := @this: cn.hutool.core.map.TableMap 
(assert (not (= var905 null-var680)))
(define-const var802 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var802)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var802!1 String)
(assert (= var802!1 ""))
(assert true)
(define-const var2884 String (append/672562846 var802!1 "TableMap{keys=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableMap{keys=") 
(declare-const var802!2 String)
(assert (= var802!2 (str.++ var802!1 "TableMap{keys=")))
(define-const var3238 var1240 (keys/-271992919 var905)) ; Statement: $r2 = r1.<cn.hutool.core.map.TableMap: java.util.List keys> 
(assert true)
(define-const var1241 String (append/-1031950772 var2884 (cast-from-var1240-to-var2856 var3238))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2884!1 String)
(assert (str.prefixof var2884 var2884!1))
(assert true)
(define-const var2709 String (append/672562846 var1241 ", values=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", values=") 
(declare-const var1241!1 String)
(assert (= var1241!1 (str.++ var1241 ", values=")))
(define-const var1007 var1240 (values/-271992919 var905)) ; Statement: $r5 = r1.<cn.hutool.core.map.TableMap: java.util.List values> 
(assert true)
(define-const var595 String (append/-1031950772 var2709 (cast-from-var1240-to-var2856 var1007))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2709!1 String)
(assert (str.prefixof var2709 var2709!1))
(assert true)
(define-const var3835 String (append/-1166366385 var595 125)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var595!1 String)
(assert (str.prefixof var595 var595!1))
(assert true)
(define-const var3409 String (toString/-2075883882 var3835)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), keys/-271992919=([cn.hutool.core.map.TableMap], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1240-to-var2856=([java.util.List], java.lang.Object), values/-271992919=([cn.hutool.core.map.TableMap], java.util.List), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var680=cn.hutool.core.map.TableMap, var905=r1, var802=$r0, var2884=$r3, var1240=java.util.List, var3238=$r2, var2856=java.lang.Object, var1241=$r4, var2709=$r6, var1007=$r5, var595=$r7, var3835=$r8, var3409=$r9}
; {cn.hutool.core.map.TableMap=var680, r1=var905, $r0=var802, $r3=var2884, java.util.List=var1240, $r2=var3238, java.lang.Object=var2856, $r4=var1241, $r6=var2709, $r5=var1007, $r7=var595, $r8=var3835, $r9=var3409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.map.TableMap;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TableMap{keys=");	$r2 = r1.<cn.hutool.core.map.TableMap: java.util.List keys>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", values=");	$r5 = r1.<cn.hutool.core.map.TableMap: java.util.List values>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1